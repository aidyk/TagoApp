package io.realm;

import io.realm.internal.ColumnInfo;
import io.realm.internal.OsObject;
import io.realm.internal.OsObjectStore;
import io.realm.internal.Table;
import io.realm.internal.fields.FieldDescriptor;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;

public abstract class RealmObjectSchema {
    static final Map<Class<?>, FieldMetaData> SUPPORTED_LINKED_FIELDS;
    static final Map<Class<?>, FieldMetaData> SUPPORTED_SIMPLE_FIELDS;
    private final ColumnInfo columnInfo;
    final BaseRealm realm;
    final RealmSchema schema;
    final Table table;

    public interface Function {
        void apply(DynamicRealmObject dynamicRealmObject);
    }

    public abstract RealmObjectSchema addField(String str, Class<?> cls, FieldAttribute... fieldAttributeArr);

    public abstract RealmObjectSchema addIndex(String str);

    public abstract RealmObjectSchema addPrimaryKey(String str);

    public abstract RealmObjectSchema addRealmListField(String str, RealmObjectSchema realmObjectSchema);

    public abstract RealmObjectSchema addRealmListField(String str, Class<?> cls);

    public abstract RealmObjectSchema addRealmObjectField(String str, RealmObjectSchema realmObjectSchema);

    /* access modifiers changed from: package-private */
    public abstract FieldDescriptor getColumnIndices(String str, RealmFieldType... realmFieldTypeArr);

    public abstract RealmObjectSchema removeField(String str);

    public abstract RealmObjectSchema removeIndex(String str);

    public abstract RealmObjectSchema removePrimaryKey();

    public abstract RealmObjectSchema renameField(String str, String str2);

    public abstract RealmObjectSchema setClassName(String str);

    public abstract RealmObjectSchema setNullable(String str, boolean z);

    public abstract RealmObjectSchema setRequired(String str, boolean z);

    public abstract RealmObjectSchema transform(Function function);

    static {
        HashMap hashMap = new HashMap();
        hashMap.put(String.class, new FieldMetaData(RealmFieldType.STRING, RealmFieldType.STRING_LIST, true));
        hashMap.put(Short.TYPE, new FieldMetaData(RealmFieldType.INTEGER, RealmFieldType.INTEGER_LIST, false));
        hashMap.put(Short.class, new FieldMetaData(RealmFieldType.INTEGER, RealmFieldType.INTEGER_LIST, true));
        hashMap.put(Integer.TYPE, new FieldMetaData(RealmFieldType.INTEGER, RealmFieldType.INTEGER_LIST, false));
        hashMap.put(Integer.class, new FieldMetaData(RealmFieldType.INTEGER, RealmFieldType.INTEGER_LIST, true));
        hashMap.put(Long.TYPE, new FieldMetaData(RealmFieldType.INTEGER, RealmFieldType.INTEGER_LIST, false));
        hashMap.put(Long.class, new FieldMetaData(RealmFieldType.INTEGER, RealmFieldType.INTEGER_LIST, true));
        hashMap.put(Float.TYPE, new FieldMetaData(RealmFieldType.FLOAT, RealmFieldType.FLOAT_LIST, false));
        hashMap.put(Float.class, new FieldMetaData(RealmFieldType.FLOAT, RealmFieldType.FLOAT_LIST, true));
        hashMap.put(Double.TYPE, new FieldMetaData(RealmFieldType.DOUBLE, RealmFieldType.DOUBLE_LIST, false));
        hashMap.put(Double.class, new FieldMetaData(RealmFieldType.DOUBLE, RealmFieldType.DOUBLE_LIST, true));
        hashMap.put(Boolean.TYPE, new FieldMetaData(RealmFieldType.BOOLEAN, RealmFieldType.BOOLEAN_LIST, false));
        hashMap.put(Boolean.class, new FieldMetaData(RealmFieldType.BOOLEAN, RealmFieldType.BOOLEAN_LIST, true));
        hashMap.put(Byte.TYPE, new FieldMetaData(RealmFieldType.INTEGER, RealmFieldType.INTEGER_LIST, false));
        hashMap.put(Byte.class, new FieldMetaData(RealmFieldType.INTEGER, RealmFieldType.INTEGER_LIST, true));
        hashMap.put(byte[].class, new FieldMetaData(RealmFieldType.BINARY, RealmFieldType.BINARY_LIST, true));
        hashMap.put(Date.class, new FieldMetaData(RealmFieldType.DATE, RealmFieldType.DATE_LIST, true));
        SUPPORTED_SIMPLE_FIELDS = Collections.unmodifiableMap(hashMap);
        HashMap hashMap2 = new HashMap();
        hashMap2.put(RealmObject.class, new FieldMetaData(RealmFieldType.OBJECT, null, false));
        hashMap2.put(RealmList.class, new FieldMetaData(RealmFieldType.LIST, null, false));
        SUPPORTED_LINKED_FIELDS = Collections.unmodifiableMap(hashMap2);
    }

    RealmObjectSchema(BaseRealm baseRealm, RealmSchema realmSchema, Table table2, ColumnInfo columnInfo2) {
        this.schema = realmSchema;
        this.realm = baseRealm;
        this.table = table2;
        this.columnInfo = columnInfo2;
    }

    public String getClassName() {
        return this.table.getClassName();
    }

    public boolean hasField(String str) {
        return this.table.getColumnIndex(str) != -1;
    }

    public boolean hasIndex(String str) {
        checkLegalName(str);
        checkFieldExists(str);
        return this.table.hasSearchIndex(this.table.getColumnIndex(str));
    }

    public boolean isRequired(String str) {
        return !this.table.isColumnNullable(getColumnIndex(str));
    }

    public boolean isNullable(String str) {
        return this.table.isColumnNullable(getColumnIndex(str));
    }

    public boolean isPrimaryKey(String str) {
        checkFieldExists(str);
        return str.equals(OsObjectStore.getPrimaryKeyForObject(this.realm.sharedRealm, getClassName()));
    }

    public boolean hasPrimaryKey() {
        return OsObjectStore.getPrimaryKeyForObject(this.realm.sharedRealm, getClassName()) != null;
    }

    public String getPrimaryKey() {
        String primaryKeyForObject = OsObjectStore.getPrimaryKeyForObject(this.realm.sharedRealm, getClassName());
        if (primaryKeyForObject != null) {
            return primaryKeyForObject;
        }
        throw new IllegalStateException(getClassName() + " doesn't have a primary key.");
    }

    public Set<String> getFieldNames() {
        int columnCount = (int) this.table.getColumnCount();
        LinkedHashSet linkedHashSet = new LinkedHashSet(columnCount);
        for (int i = 0; i < columnCount; i++) {
            String columnName = this.table.getColumnName((long) i);
            if (!OsObject.isObjectIdColumn(columnName)) {
                linkedHashSet.add(columnName);
            }
        }
        return linkedHashSet;
    }

    public RealmFieldType getFieldType(String str) {
        return this.table.getColumnType(getColumnIndex(str));
    }

    /* access modifiers changed from: package-private */
    public RealmObjectSchema add(String str, RealmFieldType realmFieldType, boolean z, boolean z2, boolean z3) {
        long addColumn = this.table.addColumn(realmFieldType, str, !z3);
        if (z2) {
            this.table.addSearchIndex(addColumn);
        }
        if (z) {
            OsObjectStore.setPrimaryKeyForObject(this.realm.sharedRealm, getClassName(), str);
        }
        return this;
    }

    /* access modifiers changed from: package-private */
    public RealmObjectSchema add(String str, RealmFieldType realmFieldType, RealmObjectSchema realmObjectSchema) {
        this.table.addColumnLink(realmFieldType, str, this.realm.getSharedRealm().getTable(Table.getTableNameForClass(realmObjectSchema.getClassName())));
        return this;
    }

    /* access modifiers changed from: package-private */
    public long getAndCheckFieldIndex(String str) {
        long columnIndex = this.columnInfo.getColumnIndex(str);
        if (columnIndex >= 0) {
            return columnIndex;
        }
        throw new IllegalArgumentException("Field does not exist: " + str);
    }

    /* access modifiers changed from: package-private */
    public Table getTable() {
        return this.table;
    }

    static final Map<Class<?>, FieldMetaData> getSupportedSimpleFields() {
        return SUPPORTED_SIMPLE_FIELDS;
    }

    /* access modifiers changed from: protected */
    public final SchemaConnector getSchemaConnector() {
        return new SchemaConnector(this.schema);
    }

    /* access modifiers changed from: package-private */
    public long getFieldIndex(String str) {
        return this.columnInfo.getColumnIndex(str);
    }

    static void checkLegalName(String str) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("Field name can not be null or empty");
        } else if (str.contains(".")) {
            throw new IllegalArgumentException("Field name can not contain '.'");
        } else if (str.length() > 63) {
            throw new IllegalArgumentException("Field name is currently limited to max 63 characters.");
        }
    }

    /* access modifiers changed from: package-private */
    public void checkFieldExists(String str) {
        if (this.table.getColumnIndex(str) == -1) {
            throw new IllegalArgumentException("Field name doesn't exist on object '" + getClassName() + "': " + str);
        }
    }

    /* access modifiers changed from: package-private */
    public long getColumnIndex(String str) {
        long columnIndex = this.table.getColumnIndex(str);
        if (columnIndex != -1) {
            return columnIndex;
        }
        throw new IllegalArgumentException(String.format(Locale.US, "Field name '%s' does not exist on schema for '%s'", str, getClassName()));
    }

    static final class DynamicColumnIndices extends ColumnInfo {
        private final Table table;

        DynamicColumnIndices(Table table2) {
            super((ColumnInfo) null, false);
            this.table = table2;
        }

        @Override // io.realm.internal.ColumnInfo
        public long getColumnIndex(String str) {
            return this.table.getColumnIndex(str);
        }

        @Override // io.realm.internal.ColumnInfo
        public ColumnInfo.ColumnDetails getColumnDetails(String str) {
            throw new UnsupportedOperationException("DynamicColumnIndices do not support 'getColumnDetails'");
        }

        @Override // io.realm.internal.ColumnInfo
        public void copyFrom(ColumnInfo columnInfo) {
            throw new UnsupportedOperationException("DynamicColumnIndices cannot be copied");
        }

        /* access modifiers changed from: protected */
        @Override // io.realm.internal.ColumnInfo
        public ColumnInfo copy(boolean z) {
            throw new UnsupportedOperationException("DynamicColumnIndices cannot be copied");
        }

        /* access modifiers changed from: protected */
        @Override // io.realm.internal.ColumnInfo
        public void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            throw new UnsupportedOperationException("DynamicColumnIndices cannot copy");
        }
    }

    /* access modifiers changed from: package-private */
    public static final class FieldMetaData {
        final boolean defaultNullable;
        final RealmFieldType fieldType;
        final RealmFieldType listType;

        FieldMetaData(RealmFieldType realmFieldType, @Nullable RealmFieldType realmFieldType2, boolean z) {
            this.fieldType = realmFieldType;
            this.listType = realmFieldType2;
            this.defaultNullable = z;
        }
    }
}
