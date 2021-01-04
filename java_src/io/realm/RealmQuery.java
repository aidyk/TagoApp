package io.realm;

import io.realm.internal.OsList;
import io.realm.internal.OsResults;
import io.realm.internal.PendingRow;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.Row;
import io.realm.internal.SortDescriptor;
import io.realm.internal.SubscriptionAwareOsResults;
import io.realm.internal.Table;
import io.realm.internal.TableQuery;
import io.realm.internal.Util;
import io.realm.internal.fields.FieldDescriptor;
import io.realm.internal.sync.SubscriptionAction;
import java.util.Collections;
import java.util.Date;
import java.util.Locale;
import javax.annotation.Nullable;

public class RealmQuery<E> {
    private static final String ASYNC_QUERY_WRONG_THREAD_MESSAGE = "Async query cannot be created on current thread.";
    private static final String EMPTY_VALUES = "Non-empty 'values' must be provided.";
    private static final String TYPE_MISMATCH = "Field '%s': type mismatch - %s expected.";
    private String className;
    private Class<E> clazz;
    private SortDescriptor distinctDescriptor;
    private final boolean forValues;
    private final OsList osList;
    private final TableQuery query;
    private final BaseRealm realm;
    private final RealmObjectSchema schema;
    private SortDescriptor sortDescriptor;
    private final Table table;

    static <E extends RealmModel> RealmQuery<E> createQuery(Realm realm2, Class<E> cls) {
        return new RealmQuery<>(realm2, cls);
    }

    static <E extends RealmModel> RealmQuery<E> createDynamicQuery(DynamicRealm dynamicRealm, String str) {
        return new RealmQuery<>(dynamicRealm, str);
    }

    static <E> RealmQuery<E> createQueryFromResult(RealmResults<E> realmResults) {
        if (realmResults.classSpec == null) {
            return new RealmQuery<>(realmResults, realmResults.className);
        }
        return new RealmQuery<>(realmResults, realmResults.classSpec);
    }

    static <E> RealmQuery<E> createQueryFromList(RealmList<E> realmList) {
        if (realmList.clazz == null) {
            return new RealmQuery<>(realmList.realm, realmList.getOsList(), realmList.className);
        }
        return new RealmQuery<>(realmList.realm, realmList.getOsList(), realmList.clazz);
    }

    private static boolean isClassForRealmModel(Class<?> cls) {
        return RealmModel.class.isAssignableFrom(cls);
    }

    private RealmQuery(Realm realm2, Class<E> cls) {
        this.realm = realm2;
        this.clazz = cls;
        this.forValues = !isClassForRealmModel(cls);
        if (this.forValues) {
            this.schema = null;
            this.table = null;
            this.osList = null;
            this.query = null;
            return;
        }
        this.schema = realm2.getSchema().getSchemaForClass(cls);
        this.table = this.schema.getTable();
        this.osList = null;
        this.query = this.table.where();
    }

    private RealmQuery(RealmResults<E> realmResults, Class<E> cls) {
        this.realm = realmResults.realm;
        this.clazz = cls;
        this.forValues = !isClassForRealmModel(cls);
        if (this.forValues) {
            this.schema = null;
            this.table = null;
            this.osList = null;
            this.query = null;
            return;
        }
        this.schema = this.realm.getSchema().getSchemaForClass(cls);
        this.table = realmResults.getTable();
        this.osList = null;
        this.query = realmResults.getOsResults().where();
    }

    private RealmQuery(BaseRealm baseRealm, OsList osList2, Class<E> cls) {
        this.realm = baseRealm;
        this.clazz = cls;
        this.forValues = !isClassForRealmModel(cls);
        if (this.forValues) {
            this.schema = null;
            this.table = null;
            this.osList = null;
            this.query = null;
            return;
        }
        this.schema = baseRealm.getSchema().getSchemaForClass(cls);
        this.table = this.schema.getTable();
        this.osList = osList2;
        this.query = osList2.getQuery();
    }

    private RealmQuery(BaseRealm baseRealm, String str) {
        this.realm = baseRealm;
        this.className = str;
        this.forValues = false;
        this.schema = baseRealm.getSchema().getSchemaForClass(str);
        this.table = this.schema.getTable();
        this.query = this.table.where();
        this.osList = null;
    }

    private RealmQuery(RealmResults<DynamicRealmObject> realmResults, String str) {
        this.realm = realmResults.realm;
        this.className = str;
        this.forValues = false;
        this.schema = this.realm.getSchema().getSchemaForClass(str);
        this.table = this.schema.getTable();
        this.query = realmResults.getOsResults().where();
        this.osList = null;
    }

    private RealmQuery(BaseRealm baseRealm, OsList osList2, String str) {
        this.realm = baseRealm;
        this.className = str;
        this.forValues = false;
        this.schema = baseRealm.getSchema().getSchemaForClass(str);
        this.table = this.schema.getTable();
        this.query = osList2.getQuery();
        this.osList = osList2;
    }

    public boolean isValid() {
        if (this.realm == null || this.realm.isClosed()) {
            return false;
        }
        if (this.osList != null) {
            return this.osList.isValid();
        }
        if (this.table == null || !this.table.isValid()) {
            return false;
        }
        return true;
    }

    public RealmQuery<E> isNull(String str) {
        this.realm.checkIfValid();
        FieldDescriptor columnIndices = this.schema.getColumnIndices(str, new RealmFieldType[0]);
        this.query.isNull(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers());
        return this;
    }

    public RealmQuery<E> isNotNull(String str) {
        this.realm.checkIfValid();
        FieldDescriptor columnIndices = this.schema.getColumnIndices(str, new RealmFieldType[0]);
        this.query.isNotNull(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers());
        return this;
    }

    public RealmQuery<E> equalTo(String str, @Nullable String str2) {
        return equalTo(str, str2, Case.SENSITIVE);
    }

    public RealmQuery<E> equalTo(String str, @Nullable String str2, Case r4) {
        this.realm.checkIfValid();
        return equalToWithoutThreadValidation(str, str2, r4);
    }

    private RealmQuery<E> equalToWithoutThreadValidation(String str, @Nullable String str2, Case r7) {
        FieldDescriptor columnIndices = this.schema.getColumnIndices(str, RealmFieldType.STRING);
        this.query.equalTo(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers(), str2, r7);
        return this;
    }

    public RealmQuery<E> equalTo(String str, @Nullable Byte b) {
        this.realm.checkIfValid();
        return equalToWithoutThreadValidation(str, b);
    }

    private RealmQuery<E> equalToWithoutThreadValidation(String str, @Nullable Byte b) {
        FieldDescriptor columnIndices = this.schema.getColumnIndices(str, RealmFieldType.INTEGER);
        if (b == null) {
            this.query.isNull(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers());
        } else {
            this.query.equalTo(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers(), (long) b.byteValue());
        }
        return this;
    }

    public RealmQuery<E> equalTo(String str, @Nullable byte[] bArr) {
        this.realm.checkIfValid();
        FieldDescriptor columnIndices = this.schema.getColumnIndices(str, RealmFieldType.BINARY);
        if (bArr == null) {
            this.query.isNull(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers());
        } else {
            this.query.equalTo(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers(), bArr);
        }
        return this;
    }

    public RealmQuery<E> equalTo(String str, @Nullable Short sh) {
        this.realm.checkIfValid();
        return equalToWithoutThreadValidation(str, sh);
    }

    private RealmQuery<E> equalToWithoutThreadValidation(String str, @Nullable Short sh) {
        FieldDescriptor columnIndices = this.schema.getColumnIndices(str, RealmFieldType.INTEGER);
        if (sh == null) {
            this.query.isNull(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers());
        } else {
            this.query.equalTo(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers(), (long) sh.shortValue());
        }
        return this;
    }

    public RealmQuery<E> equalTo(String str, @Nullable Integer num) {
        this.realm.checkIfValid();
        return equalToWithoutThreadValidation(str, num);
    }

    private RealmQuery<E> equalToWithoutThreadValidation(String str, @Nullable Integer num) {
        FieldDescriptor columnIndices = this.schema.getColumnIndices(str, RealmFieldType.INTEGER);
        if (num == null) {
            this.query.isNull(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers());
        } else {
            this.query.equalTo(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers(), (long) num.intValue());
        }
        return this;
    }

    public RealmQuery<E> equalTo(String str, @Nullable Long l) {
        this.realm.checkIfValid();
        return equalToWithoutThreadValidation(str, l);
    }

    private RealmQuery<E> equalToWithoutThreadValidation(String str, @Nullable Long l) {
        FieldDescriptor columnIndices = this.schema.getColumnIndices(str, RealmFieldType.INTEGER);
        if (l == null) {
            this.query.isNull(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers());
        } else {
            this.query.equalTo(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers(), l.longValue());
        }
        return this;
    }

    public RealmQuery<E> equalTo(String str, @Nullable Double d) {
        this.realm.checkIfValid();
        return equalToWithoutThreadValidation(str, d);
    }

    private RealmQuery<E> equalToWithoutThreadValidation(String str, @Nullable Double d) {
        FieldDescriptor columnIndices = this.schema.getColumnIndices(str, RealmFieldType.DOUBLE);
        if (d == null) {
            this.query.isNull(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers());
        } else {
            this.query.equalTo(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers(), d.doubleValue());
        }
        return this;
    }

    public RealmQuery<E> equalTo(String str, @Nullable Float f) {
        this.realm.checkIfValid();
        return equalToWithoutThreadValidation(str, f);
    }

    private RealmQuery<E> equalToWithoutThreadValidation(String str, @Nullable Float f) {
        FieldDescriptor columnIndices = this.schema.getColumnIndices(str, RealmFieldType.FLOAT);
        if (f == null) {
            this.query.isNull(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers());
        } else {
            this.query.equalTo(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers(), f.floatValue());
        }
        return this;
    }

    public RealmQuery<E> equalTo(String str, @Nullable Boolean bool) {
        this.realm.checkIfValid();
        return equalToWithoutThreadValidation(str, bool);
    }

    private RealmQuery<E> equalToWithoutThreadValidation(String str, @Nullable Boolean bool) {
        FieldDescriptor columnIndices = this.schema.getColumnIndices(str, RealmFieldType.BOOLEAN);
        if (bool == null) {
            this.query.isNull(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers());
        } else {
            this.query.equalTo(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers(), bool.booleanValue());
        }
        return this;
    }

    public RealmQuery<E> equalTo(String str, @Nullable Date date) {
        this.realm.checkIfValid();
        return equalToWithoutThreadValidation(str, date);
    }

    private RealmQuery<E> equalToWithoutThreadValidation(String str, @Nullable Date date) {
        FieldDescriptor columnIndices = this.schema.getColumnIndices(str, RealmFieldType.DATE);
        this.query.equalTo(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers(), date);
        return this;
    }

    public RealmQuery<E> in(String str, String[] strArr) {
        return in(str, strArr, Case.SENSITIVE);
    }

    public RealmQuery<E> in(String str, String[] strArr, Case r6) {
        this.realm.checkIfValid();
        if (strArr == null || strArr.length == 0) {
            throw new IllegalArgumentException(EMPTY_VALUES);
        }
        beginGroupWithoutThreadValidation().equalToWithoutThreadValidation(str, strArr[0], r6);
        for (int i = 1; i < strArr.length; i++) {
            orWithoutThreadValidation().equalToWithoutThreadValidation(str, strArr[i], r6);
        }
        return endGroupWithoutThreadValidation();
    }

    public RealmQuery<E> in(String str, Byte[] bArr) {
        this.realm.checkIfValid();
        if (bArr == null || bArr.length == 0) {
            throw new IllegalArgumentException(EMPTY_VALUES);
        }
        beginGroupWithoutThreadValidation().equalToWithoutThreadValidation(str, bArr[0]);
        for (int i = 1; i < bArr.length; i++) {
            orWithoutThreadValidation().equalToWithoutThreadValidation(str, bArr[i]);
        }
        return endGroupWithoutThreadValidation();
    }

    public RealmQuery<E> in(String str, Short[] shArr) {
        this.realm.checkIfValid();
        if (shArr == null || shArr.length == 0) {
            throw new IllegalArgumentException(EMPTY_VALUES);
        }
        beginGroupWithoutThreadValidation().equalToWithoutThreadValidation(str, shArr[0]);
        for (int i = 1; i < shArr.length; i++) {
            orWithoutThreadValidation().equalToWithoutThreadValidation(str, shArr[i]);
        }
        return endGroupWithoutThreadValidation();
    }

    public RealmQuery<E> in(String str, Integer[] numArr) {
        this.realm.checkIfValid();
        if (numArr == null || numArr.length == 0) {
            throw new IllegalArgumentException(EMPTY_VALUES);
        }
        beginGroupWithoutThreadValidation().equalToWithoutThreadValidation(str, numArr[0]);
        for (int i = 1; i < numArr.length; i++) {
            orWithoutThreadValidation().equalToWithoutThreadValidation(str, numArr[i]);
        }
        return endGroupWithoutThreadValidation();
    }

    public RealmQuery<E> in(String str, Long[] lArr) {
        this.realm.checkIfValid();
        if (lArr == null || lArr.length == 0) {
            throw new IllegalArgumentException(EMPTY_VALUES);
        }
        beginGroupWithoutThreadValidation().equalToWithoutThreadValidation(str, lArr[0]);
        for (int i = 1; i < lArr.length; i++) {
            orWithoutThreadValidation().equalToWithoutThreadValidation(str, lArr[i]);
        }
        return endGroupWithoutThreadValidation();
    }

    public RealmQuery<E> in(String str, Double[] dArr) {
        this.realm.checkIfValid();
        if (dArr == null || dArr.length == 0) {
            throw new IllegalArgumentException(EMPTY_VALUES);
        }
        beginGroupWithoutThreadValidation().equalToWithoutThreadValidation(str, dArr[0]);
        for (int i = 1; i < dArr.length; i++) {
            orWithoutThreadValidation().equalToWithoutThreadValidation(str, dArr[i]);
        }
        return endGroupWithoutThreadValidation();
    }

    public RealmQuery<E> in(String str, Float[] fArr) {
        this.realm.checkIfValid();
        if (fArr == null || fArr.length == 0) {
            throw new IllegalArgumentException(EMPTY_VALUES);
        }
        beginGroupWithoutThreadValidation().equalToWithoutThreadValidation(str, fArr[0]);
        for (int i = 1; i < fArr.length; i++) {
            orWithoutThreadValidation().equalToWithoutThreadValidation(str, fArr[i]);
        }
        return endGroupWithoutThreadValidation();
    }

    public RealmQuery<E> in(String str, Boolean[] boolArr) {
        this.realm.checkIfValid();
        if (boolArr == null || boolArr.length == 0) {
            throw new IllegalArgumentException(EMPTY_VALUES);
        }
        beginGroupWithoutThreadValidation().equalToWithoutThreadValidation(str, boolArr[0]);
        for (int i = 1; i < boolArr.length; i++) {
            orWithoutThreadValidation().equalToWithoutThreadValidation(str, boolArr[i]);
        }
        return endGroupWithoutThreadValidation();
    }

    public RealmQuery<E> in(String str, Date[] dateArr) {
        this.realm.checkIfValid();
        if (dateArr == null || dateArr.length == 0) {
            throw new IllegalArgumentException(EMPTY_VALUES);
        }
        beginGroupWithoutThreadValidation().equalToWithoutThreadValidation(str, dateArr[0]);
        for (int i = 1; i < dateArr.length; i++) {
            orWithoutThreadValidation().equalToWithoutThreadValidation(str, dateArr[i]);
        }
        return endGroupWithoutThreadValidation();
    }

    public RealmQuery<E> notEqualTo(String str, @Nullable String str2) {
        return notEqualTo(str, str2, Case.SENSITIVE);
    }

    public RealmQuery<E> notEqualTo(String str, @Nullable String str2, Case r8) {
        this.realm.checkIfValid();
        FieldDescriptor columnIndices = this.schema.getColumnIndices(str, RealmFieldType.STRING);
        if (columnIndices.length() <= 1 || r8.getValue()) {
            this.query.notEqualTo(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers(), str2, r8);
            return this;
        }
        throw new IllegalArgumentException("Link queries cannot be case insensitive - coming soon.");
    }

    public RealmQuery<E> notEqualTo(String str, @Nullable Byte b) {
        this.realm.checkIfValid();
        FieldDescriptor columnIndices = this.schema.getColumnIndices(str, RealmFieldType.INTEGER);
        if (b == null) {
            this.query.isNotNull(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers());
        } else {
            this.query.notEqualTo(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers(), (long) b.byteValue());
        }
        return this;
    }

    public RealmQuery<E> notEqualTo(String str, @Nullable byte[] bArr) {
        this.realm.checkIfValid();
        FieldDescriptor columnIndices = this.schema.getColumnIndices(str, RealmFieldType.BINARY);
        if (bArr == null) {
            this.query.isNotNull(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers());
        } else {
            this.query.notEqualTo(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers(), bArr);
        }
        return this;
    }

    public RealmQuery<E> notEqualTo(String str, @Nullable Short sh) {
        this.realm.checkIfValid();
        FieldDescriptor columnIndices = this.schema.getColumnIndices(str, RealmFieldType.INTEGER);
        if (sh == null) {
            this.query.isNotNull(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers());
        } else {
            this.query.notEqualTo(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers(), (long) sh.shortValue());
        }
        return this;
    }

    public RealmQuery<E> notEqualTo(String str, @Nullable Integer num) {
        this.realm.checkIfValid();
        FieldDescriptor columnIndices = this.schema.getColumnIndices(str, RealmFieldType.INTEGER);
        if (num == null) {
            this.query.isNotNull(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers());
        } else {
            this.query.notEqualTo(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers(), (long) num.intValue());
        }
        return this;
    }

    public RealmQuery<E> notEqualTo(String str, @Nullable Long l) {
        this.realm.checkIfValid();
        FieldDescriptor columnIndices = this.schema.getColumnIndices(str, RealmFieldType.INTEGER);
        if (l == null) {
            this.query.isNotNull(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers());
        } else {
            this.query.notEqualTo(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers(), l.longValue());
        }
        return this;
    }

    public RealmQuery<E> notEqualTo(String str, @Nullable Double d) {
        this.realm.checkIfValid();
        FieldDescriptor columnIndices = this.schema.getColumnIndices(str, RealmFieldType.DOUBLE);
        if (d == null) {
            this.query.isNotNull(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers());
        } else {
            this.query.notEqualTo(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers(), d.doubleValue());
        }
        return this;
    }

    public RealmQuery<E> notEqualTo(String str, @Nullable Float f) {
        this.realm.checkIfValid();
        FieldDescriptor columnIndices = this.schema.getColumnIndices(str, RealmFieldType.FLOAT);
        if (f == null) {
            this.query.isNotNull(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers());
        } else {
            this.query.notEqualTo(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers(), f.floatValue());
        }
        return this;
    }

    public RealmQuery<E> notEqualTo(String str, @Nullable Boolean bool) {
        this.realm.checkIfValid();
        FieldDescriptor columnIndices = this.schema.getColumnIndices(str, RealmFieldType.BOOLEAN);
        if (bool == null) {
            this.query.isNotNull(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers());
        } else {
            this.query.equalTo(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers(), !bool.booleanValue());
        }
        return this;
    }

    public RealmQuery<E> notEqualTo(String str, @Nullable Date date) {
        this.realm.checkIfValid();
        FieldDescriptor columnIndices = this.schema.getColumnIndices(str, RealmFieldType.DATE);
        if (date == null) {
            this.query.isNotNull(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers());
        } else {
            this.query.notEqualTo(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers(), date);
        }
        return this;
    }

    public RealmQuery<E> greaterThan(String str, int i) {
        this.realm.checkIfValid();
        FieldDescriptor columnIndices = this.schema.getColumnIndices(str, RealmFieldType.INTEGER);
        this.query.greaterThan(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers(), (long) i);
        return this;
    }

    public RealmQuery<E> greaterThan(String str, long j) {
        this.realm.checkIfValid();
        FieldDescriptor columnIndices = this.schema.getColumnIndices(str, RealmFieldType.INTEGER);
        this.query.greaterThan(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers(), j);
        return this;
    }

    public RealmQuery<E> greaterThan(String str, double d) {
        this.realm.checkIfValid();
        FieldDescriptor columnIndices = this.schema.getColumnIndices(str, RealmFieldType.DOUBLE);
        this.query.greaterThan(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers(), d);
        return this;
    }

    public RealmQuery<E> greaterThan(String str, float f) {
        this.realm.checkIfValid();
        FieldDescriptor columnIndices = this.schema.getColumnIndices(str, RealmFieldType.FLOAT);
        this.query.greaterThan(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers(), f);
        return this;
    }

    public RealmQuery<E> greaterThan(String str, Date date) {
        this.realm.checkIfValid();
        FieldDescriptor columnIndices = this.schema.getColumnIndices(str, RealmFieldType.DATE);
        this.query.greaterThan(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers(), date);
        return this;
    }

    public RealmQuery<E> greaterThanOrEqualTo(String str, int i) {
        this.realm.checkIfValid();
        FieldDescriptor columnIndices = this.schema.getColumnIndices(str, RealmFieldType.INTEGER);
        this.query.greaterThanOrEqual(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers(), (long) i);
        return this;
    }

    public RealmQuery<E> greaterThanOrEqualTo(String str, long j) {
        this.realm.checkIfValid();
        FieldDescriptor columnIndices = this.schema.getColumnIndices(str, RealmFieldType.INTEGER);
        this.query.greaterThanOrEqual(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers(), j);
        return this;
    }

    public RealmQuery<E> greaterThanOrEqualTo(String str, double d) {
        this.realm.checkIfValid();
        FieldDescriptor columnIndices = this.schema.getColumnIndices(str, RealmFieldType.DOUBLE);
        this.query.greaterThanOrEqual(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers(), d);
        return this;
    }

    public RealmQuery<E> greaterThanOrEqualTo(String str, float f) {
        this.realm.checkIfValid();
        FieldDescriptor columnIndices = this.schema.getColumnIndices(str, RealmFieldType.FLOAT);
        this.query.greaterThanOrEqual(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers(), f);
        return this;
    }

    public RealmQuery<E> greaterThanOrEqualTo(String str, Date date) {
        this.realm.checkIfValid();
        FieldDescriptor columnIndices = this.schema.getColumnIndices(str, RealmFieldType.DATE);
        this.query.greaterThanOrEqual(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers(), date);
        return this;
    }

    public RealmQuery<E> lessThan(String str, int i) {
        this.realm.checkIfValid();
        FieldDescriptor columnIndices = this.schema.getColumnIndices(str, RealmFieldType.INTEGER);
        this.query.lessThan(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers(), (long) i);
        return this;
    }

    public RealmQuery<E> lessThan(String str, long j) {
        this.realm.checkIfValid();
        FieldDescriptor columnIndices = this.schema.getColumnIndices(str, RealmFieldType.INTEGER);
        this.query.lessThan(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers(), j);
        return this;
    }

    public RealmQuery<E> lessThan(String str, double d) {
        this.realm.checkIfValid();
        FieldDescriptor columnIndices = this.schema.getColumnIndices(str, RealmFieldType.DOUBLE);
        this.query.lessThan(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers(), d);
        return this;
    }

    public RealmQuery<E> lessThan(String str, float f) {
        this.realm.checkIfValid();
        FieldDescriptor columnIndices = this.schema.getColumnIndices(str, RealmFieldType.FLOAT);
        this.query.lessThan(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers(), f);
        return this;
    }

    public RealmQuery<E> lessThan(String str, Date date) {
        this.realm.checkIfValid();
        FieldDescriptor columnIndices = this.schema.getColumnIndices(str, RealmFieldType.DATE);
        this.query.lessThan(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers(), date);
        return this;
    }

    public RealmQuery<E> lessThanOrEqualTo(String str, int i) {
        this.realm.checkIfValid();
        FieldDescriptor columnIndices = this.schema.getColumnIndices(str, RealmFieldType.INTEGER);
        this.query.lessThanOrEqual(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers(), (long) i);
        return this;
    }

    public RealmQuery<E> lessThanOrEqualTo(String str, long j) {
        this.realm.checkIfValid();
        FieldDescriptor columnIndices = this.schema.getColumnIndices(str, RealmFieldType.INTEGER);
        this.query.lessThanOrEqual(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers(), j);
        return this;
    }

    public RealmQuery<E> lessThanOrEqualTo(String str, double d) {
        this.realm.checkIfValid();
        FieldDescriptor columnIndices = this.schema.getColumnIndices(str, RealmFieldType.DOUBLE);
        this.query.lessThanOrEqual(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers(), d);
        return this;
    }

    public RealmQuery<E> lessThanOrEqualTo(String str, float f) {
        this.realm.checkIfValid();
        FieldDescriptor columnIndices = this.schema.getColumnIndices(str, RealmFieldType.FLOAT);
        this.query.lessThanOrEqual(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers(), f);
        return this;
    }

    public RealmQuery<E> lessThanOrEqualTo(String str, Date date) {
        this.realm.checkIfValid();
        FieldDescriptor columnIndices = this.schema.getColumnIndices(str, RealmFieldType.DATE);
        this.query.lessThanOrEqual(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers(), date);
        return this;
    }

    public RealmQuery<E> between(String str, int i, int i2) {
        this.realm.checkIfValid();
        this.query.between(this.schema.getColumnIndices(str, RealmFieldType.INTEGER).getColumnIndices(), (long) i, (long) i2);
        return this;
    }

    public RealmQuery<E> between(String str, long j, long j2) {
        this.realm.checkIfValid();
        this.query.between(this.schema.getColumnIndices(str, RealmFieldType.INTEGER).getColumnIndices(), j, j2);
        return this;
    }

    public RealmQuery<E> between(String str, double d, double d2) {
        this.realm.checkIfValid();
        this.query.between(this.schema.getColumnIndices(str, RealmFieldType.DOUBLE).getColumnIndices(), d, d2);
        return this;
    }

    public RealmQuery<E> between(String str, float f, float f2) {
        this.realm.checkIfValid();
        this.query.between(this.schema.getColumnIndices(str, RealmFieldType.FLOAT).getColumnIndices(), f, f2);
        return this;
    }

    public RealmQuery<E> between(String str, Date date, Date date2) {
        this.realm.checkIfValid();
        this.query.between(this.schema.getColumnIndices(str, RealmFieldType.DATE).getColumnIndices(), date, date2);
        return this;
    }

    public RealmQuery<E> contains(String str, String str2) {
        return contains(str, str2, Case.SENSITIVE);
    }

    public RealmQuery<E> contains(String str, String str2, Case r7) {
        this.realm.checkIfValid();
        FieldDescriptor columnIndices = this.schema.getColumnIndices(str, RealmFieldType.STRING);
        this.query.contains(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers(), str2, r7);
        return this;
    }

    public RealmQuery<E> beginsWith(String str, String str2) {
        return beginsWith(str, str2, Case.SENSITIVE);
    }

    public RealmQuery<E> beginsWith(String str, String str2, Case r7) {
        this.realm.checkIfValid();
        FieldDescriptor columnIndices = this.schema.getColumnIndices(str, RealmFieldType.STRING);
        this.query.beginsWith(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers(), str2, r7);
        return this;
    }

    public RealmQuery<E> endsWith(String str, String str2) {
        return endsWith(str, str2, Case.SENSITIVE);
    }

    public RealmQuery<E> endsWith(String str, String str2, Case r7) {
        this.realm.checkIfValid();
        FieldDescriptor columnIndices = this.schema.getColumnIndices(str, RealmFieldType.STRING);
        this.query.endsWith(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers(), str2, r7);
        return this;
    }

    public RealmQuery<E> like(String str, String str2) {
        return like(str, str2, Case.SENSITIVE);
    }

    public RealmQuery<E> like(String str, String str2, Case r7) {
        this.realm.checkIfValid();
        FieldDescriptor columnIndices = this.schema.getColumnIndices(str, RealmFieldType.STRING);
        this.query.like(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers(), str2, r7);
        return this;
    }

    public RealmQuery<E> beginGroup() {
        this.realm.checkIfValid();
        return beginGroupWithoutThreadValidation();
    }

    private RealmQuery<E> beginGroupWithoutThreadValidation() {
        this.query.group();
        return this;
    }

    public RealmQuery<E> endGroup() {
        this.realm.checkIfValid();
        return endGroupWithoutThreadValidation();
    }

    private RealmQuery<E> endGroupWithoutThreadValidation() {
        this.query.endGroup();
        return this;
    }

    public RealmQuery<E> or() {
        this.realm.checkIfValid();
        return orWithoutThreadValidation();
    }

    private RealmQuery<E> orWithoutThreadValidation() {
        this.query.or();
        return this;
    }

    public RealmQuery<E> and() {
        this.realm.checkIfValid();
        return this;
    }

    public RealmQuery<E> not() {
        this.realm.checkIfValid();
        this.query.not();
        return this;
    }

    public RealmQuery<E> isEmpty(String str) {
        this.realm.checkIfValid();
        FieldDescriptor columnIndices = this.schema.getColumnIndices(str, RealmFieldType.STRING, RealmFieldType.BINARY, RealmFieldType.LIST, RealmFieldType.LINKING_OBJECTS);
        this.query.isEmpty(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers());
        return this;
    }

    public RealmQuery<E> isNotEmpty(String str) {
        this.realm.checkIfValid();
        FieldDescriptor columnIndices = this.schema.getColumnIndices(str, RealmFieldType.STRING, RealmFieldType.BINARY, RealmFieldType.LIST, RealmFieldType.LINKING_OBJECTS);
        this.query.isNotEmpty(columnIndices.getColumnIndices(), columnIndices.getNativeTablePointers());
        return this;
    }

    public Number sum(String str) {
        this.realm.checkIfValid();
        long andCheckFieldIndex = this.schema.getAndCheckFieldIndex(str);
        switch (this.table.getColumnType(andCheckFieldIndex)) {
            case INTEGER:
                return Long.valueOf(this.query.sumInt(andCheckFieldIndex));
            case FLOAT:
                return Double.valueOf(this.query.sumFloat(andCheckFieldIndex));
            case DOUBLE:
                return Double.valueOf(this.query.sumDouble(andCheckFieldIndex));
            default:
                throw new IllegalArgumentException(String.format(Locale.US, TYPE_MISMATCH, str, "int, float or double"));
        }
    }

    public double average(String str) {
        this.realm.checkIfValid();
        long andCheckFieldIndex = this.schema.getAndCheckFieldIndex(str);
        switch (this.table.getColumnType(andCheckFieldIndex)) {
            case INTEGER:
                return this.query.averageInt(andCheckFieldIndex);
            case FLOAT:
                return this.query.averageFloat(andCheckFieldIndex);
            case DOUBLE:
                return this.query.averageDouble(andCheckFieldIndex);
            default:
                throw new IllegalArgumentException(String.format(Locale.US, TYPE_MISMATCH, str, "int, float or double"));
        }
    }

    @Nullable
    public Number min(String str) {
        this.realm.checkIfValid();
        long andCheckFieldIndex = this.schema.getAndCheckFieldIndex(str);
        switch (this.table.getColumnType(andCheckFieldIndex)) {
            case INTEGER:
                return this.query.minimumInt(andCheckFieldIndex);
            case FLOAT:
                return this.query.minimumFloat(andCheckFieldIndex);
            case DOUBLE:
                return this.query.minimumDouble(andCheckFieldIndex);
            default:
                throw new IllegalArgumentException(String.format(Locale.US, TYPE_MISMATCH, str, "int, float or double"));
        }
    }

    @Nullable
    public Date minimumDate(String str) {
        this.realm.checkIfValid();
        return this.query.minimumDate(this.schema.getAndCheckFieldIndex(str));
    }

    @Nullable
    public Number max(String str) {
        this.realm.checkIfValid();
        long andCheckFieldIndex = this.schema.getAndCheckFieldIndex(str);
        switch (this.table.getColumnType(andCheckFieldIndex)) {
            case INTEGER:
                return this.query.maximumInt(andCheckFieldIndex);
            case FLOAT:
                return this.query.maximumFloat(andCheckFieldIndex);
            case DOUBLE:
                return this.query.maximumDouble(andCheckFieldIndex);
            default:
                throw new IllegalArgumentException(String.format(Locale.US, TYPE_MISMATCH, str, "int, float or double"));
        }
    }

    @Nullable
    public Date maximumDate(String str) {
        this.realm.checkIfValid();
        return this.query.maximumDate(this.schema.getAndCheckFieldIndex(str));
    }

    public long count() {
        this.realm.checkIfValid();
        return this.query.count();
    }

    public RealmResults<E> findAll() {
        this.realm.checkIfValid();
        return createRealmResults(this.query, this.sortDescriptor, this.distinctDescriptor, true, SubscriptionAction.NO_SUBSCRIPTION);
    }

    public RealmResults<E> findAllAsync() {
        SubscriptionAction subscriptionAction;
        this.realm.checkIfValid();
        this.realm.sharedRealm.capabilities.checkCanDeliverNotification(ASYNC_QUERY_WRONG_THREAD_MESSAGE);
        if (!this.realm.sharedRealm.isPartial() || this.osList != null) {
            subscriptionAction = SubscriptionAction.NO_SUBSCRIPTION;
        } else {
            subscriptionAction = SubscriptionAction.ANONYMOUS_SUBSCRIPTION;
        }
        return createRealmResults(this.query, this.sortDescriptor, this.distinctDescriptor, false, subscriptionAction);
    }

    public RealmResults<E> findAllAsync(String str) {
        this.realm.checkIfValid();
        this.realm.checkIfPartialRealm();
        if (this.osList != null) {
            throw new IllegalStateException("Cannot create subscriptions for queries based on a 'RealmList'");
        } else if (!Util.isEmptyString(str)) {
            this.realm.sharedRealm.capabilities.checkCanDeliverNotification(ASYNC_QUERY_WRONG_THREAD_MESSAGE);
            return createRealmResults(this.query, this.sortDescriptor, this.distinctDescriptor, false, SubscriptionAction.create(str));
        } else {
            throw new IllegalArgumentException("Non-empty 'subscriptionName' required.");
        }
    }

    public RealmQuery<E> sort(String str) {
        this.realm.checkIfValid();
        return sort(str, Sort.ASCENDING);
    }

    public RealmQuery<E> sort(String str, Sort sort) {
        this.realm.checkIfValid();
        return sort(new String[]{str}, new Sort[]{sort});
    }

    public RealmQuery<E> sort(String str, Sort sort, String str2, Sort sort2) {
        this.realm.checkIfValid();
        return sort(new String[]{str, str2}, new Sort[]{sort, sort2});
    }

    public RealmQuery<E> sort(String[] strArr, Sort[] sortArr) {
        this.realm.checkIfValid();
        if (this.sortDescriptor == null) {
            this.sortDescriptor = SortDescriptor.getInstanceForSort(getSchemaConnector(), this.query.getTable(), strArr, sortArr);
            return this;
        }
        throw new IllegalStateException("A sorting order was already defined.");
    }

    public RealmQuery<E> distinct(String str) {
        return distinct(str, new String[0]);
    }

    public RealmQuery<E> distinct(String str, String... strArr) {
        this.realm.checkIfValid();
        if (this.distinctDescriptor == null) {
            if (strArr.length == 0) {
                this.distinctDescriptor = SortDescriptor.getInstanceForDistinct(getSchemaConnector(), this.table, str);
            } else {
                String[] strArr2 = new String[(strArr.length + 1)];
                strArr2[0] = str;
                System.arraycopy(strArr, 0, strArr2, 1, strArr.length);
                this.distinctDescriptor = SortDescriptor.getInstanceForDistinct(getSchemaConnector(), this.table, strArr2);
            }
            return this;
        }
        throw new IllegalStateException("Distinct fields have already been defined.");
    }

    private boolean isDynamicQuery() {
        return this.className != null;
    }

    @Nullable
    public E findFirst() {
        this.realm.checkIfValid();
        if (this.forValues) {
            return null;
        }
        long sourceRowIndexForFirstObject = getSourceRowIndexForFirstObject();
        if (sourceRowIndexForFirstObject < 0) {
            return null;
        }
        return (E) this.realm.get(this.clazz, this.className, sourceRowIndexForFirstObject);
    }

    public E findFirstAsync() {
        Row row;
        E e;
        this.realm.checkIfValid();
        if (!this.forValues) {
            this.realm.sharedRealm.capabilities.checkCanDeliverNotification(ASYNC_QUERY_WRONG_THREAD_MESSAGE);
            if (this.realm.isInTransaction()) {
                row = OsResults.createFromQuery(this.realm.sharedRealm, this.query).firstUncheckedRow();
            } else {
                row = new PendingRow(this.realm.sharedRealm, this.query, this.sortDescriptor, isDynamicQuery());
            }
            if (isDynamicQuery()) {
                e = (E) new DynamicRealmObject(this.realm, row);
            } else {
                Class<E> cls = this.clazz;
                e = (E) this.realm.getConfiguration().getSchemaMediator().newInstance(cls, this.realm, row, this.realm.getSchema().getColumnInfo(cls), false, Collections.emptyList());
            }
            if (row instanceof PendingRow) {
                ((PendingRow) row).setFrontEnd(e.realmGet$proxyState());
            }
            return e;
        }
        throw new UnsupportedOperationException("findFirstAsync() available only when type parameter 'E' is implementing RealmModel.");
    }

    private RealmResults<E> createRealmResults(TableQuery tableQuery, @Nullable SortDescriptor sortDescriptor2, @Nullable SortDescriptor sortDescriptor3, boolean z, SubscriptionAction subscriptionAction) {
        OsResults osResults;
        RealmResults<E> realmResults;
        if (subscriptionAction.shouldCreateSubscriptions()) {
            osResults = SubscriptionAwareOsResults.createFromQuery(this.realm.sharedRealm, tableQuery, sortDescriptor2, sortDescriptor3, subscriptionAction.getName());
        } else {
            osResults = OsResults.createFromQuery(this.realm.sharedRealm, tableQuery, sortDescriptor2, sortDescriptor3);
        }
        if (isDynamicQuery()) {
            realmResults = new RealmResults<>(this.realm, osResults, this.className);
        } else {
            realmResults = new RealmResults<>(this.realm, osResults, this.clazz);
        }
        if (z) {
            realmResults.load();
        }
        return realmResults;
    }

    private long getSourceRowIndexForFirstObject() {
        if (this.sortDescriptor == null && this.distinctDescriptor == null) {
            return this.query.find();
        }
        RealmObjectProxy realmObjectProxy = (RealmObjectProxy) findAll().first(null);
        if (realmObjectProxy != null) {
            return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
        }
        return -1;
    }

    private SchemaConnector getSchemaConnector() {
        return new SchemaConnector(this.realm.getSchema());
    }
}
