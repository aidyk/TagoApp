package io.realm.internal.fields;

import io.realm.RealmFieldType;
import io.realm.internal.ColumnInfo;
import io.realm.internal.Table;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;

public abstract class FieldDescriptor {
    public static final Set<RealmFieldType> ALL_LINK_FIELD_TYPES;
    public static final Set<RealmFieldType> LIST_LINK_FIELD_TYPE;
    public static final Set<RealmFieldType> NO_LINK_FIELD_TYPE = Collections.emptySet();
    public static final Set<RealmFieldType> OBJECT_LINK_FIELD_TYPE;
    public static final Set<RealmFieldType> SIMPLE_LINK_FIELD_TYPES;
    private long[] columnIndices;
    private final List<String> fields;
    private String finalColumnName;
    private RealmFieldType finalColumnType;
    private long[] nativeTablePointers;
    private final Set<RealmFieldType> validFinalColumnTypes;
    private final Set<RealmFieldType> validInternalColumnTypes;

    public interface SchemaProxy {
        ColumnInfo getColumnInfo(String str);

        long getNativeTablePtr(String str);

        boolean hasCache();
    }

    /* access modifiers changed from: protected */
    public abstract void compileFieldDescription(List<String> list);

    static {
        HashSet hashSet = new HashSet(3);
        hashSet.add(RealmFieldType.OBJECT);
        hashSet.add(RealmFieldType.LIST);
        hashSet.add(RealmFieldType.LINKING_OBJECTS);
        ALL_LINK_FIELD_TYPES = Collections.unmodifiableSet(hashSet);
        HashSet hashSet2 = new HashSet(2);
        hashSet2.add(RealmFieldType.OBJECT);
        hashSet2.add(RealmFieldType.LIST);
        SIMPLE_LINK_FIELD_TYPES = Collections.unmodifiableSet(hashSet2);
        HashSet hashSet3 = new HashSet(1);
        hashSet3.add(RealmFieldType.LIST);
        LIST_LINK_FIELD_TYPE = Collections.unmodifiableSet(hashSet3);
        HashSet hashSet4 = new HashSet(1);
        hashSet4.add(RealmFieldType.OBJECT);
        OBJECT_LINK_FIELD_TYPE = Collections.unmodifiableSet(hashSet4);
    }

    public static FieldDescriptor createStandardFieldDescriptor(SchemaProxy schemaProxy, Table table, String str, RealmFieldType... realmFieldTypeArr) {
        return createFieldDescriptor(schemaProxy, table, str, null, new HashSet(Arrays.asList(realmFieldTypeArr)));
    }

    public static FieldDescriptor createFieldDescriptor(SchemaProxy schemaProxy, Table table, String str, Set<RealmFieldType> set, Set<RealmFieldType> set2) {
        FieldDescriptor fieldDescriptor;
        if (schemaProxy == null || !schemaProxy.hasCache()) {
            if (set == null) {
                set = SIMPLE_LINK_FIELD_TYPES;
            }
            fieldDescriptor = new DynamicFieldDescriptor(table, str, set, set2);
        } else {
            String className = table.getClassName();
            if (set == null) {
                set = ALL_LINK_FIELD_TYPES;
            }
            fieldDescriptor = new CachedFieldDescriptor(schemaProxy, className, str, set, set2);
        }
        return fieldDescriptor;
    }

    protected FieldDescriptor(String str, Set<RealmFieldType> set, Set<RealmFieldType> set2) {
        this.fields = parseFieldDescription(str);
        if (this.fields.size() > 0) {
            this.validInternalColumnTypes = set;
            this.validFinalColumnTypes = set2;
            return;
        }
        throw new IllegalArgumentException("Invalid query: Empty field descriptor");
    }

    public final int length() {
        return this.fields.size();
    }

    public final long[] getColumnIndices() {
        compileIfNecessary();
        return Arrays.copyOf(this.columnIndices, this.columnIndices.length);
    }

    public final long[] getNativeTablePointers() {
        compileIfNecessary();
        return Arrays.copyOf(this.nativeTablePointers, this.nativeTablePointers.length);
    }

    public final String getFinalColumnName() {
        compileIfNecessary();
        return this.finalColumnName;
    }

    public final RealmFieldType getFinalColumnType() {
        compileIfNecessary();
        return this.finalColumnType;
    }

    /* access modifiers changed from: protected */
    public final void verifyInternalColumnType(String str, String str2, RealmFieldType realmFieldType) {
        verifyColumnType(str, str2, realmFieldType, this.validInternalColumnTypes);
    }

    /* access modifiers changed from: protected */
    public final void setCompilationResults(String str, String str2, RealmFieldType realmFieldType, long[] jArr, long[] jArr2) {
        if (this.validFinalColumnTypes != null && this.validFinalColumnTypes.size() > 0) {
            verifyColumnType(str, str2, realmFieldType, this.validFinalColumnTypes);
        }
        this.finalColumnName = str2;
        this.finalColumnType = realmFieldType;
        this.columnIndices = jArr;
        this.nativeTablePointers = jArr2;
    }

    private List<String> parseFieldDescription(String str) {
        if (str == null || str.equals("")) {
            throw new IllegalArgumentException("Invalid query: field name is empty");
        } else if (!str.endsWith(".")) {
            return Arrays.asList(str.split("\\."));
        } else {
            throw new IllegalArgumentException("Invalid query: field name must not end with a period ('.')");
        }
    }

    private void verifyColumnType(String str, String str2, RealmFieldType realmFieldType, Set<RealmFieldType> set) {
        if (!set.contains(realmFieldType)) {
            throw new IllegalArgumentException(String.format(Locale.US, "Invalid query: field '%s' in class '%s' is of invalid type '%s'.", str2, str, realmFieldType.toString()));
        }
    }

    private void compileIfNecessary() {
        if (this.finalColumnType == null) {
            compileFieldDescription(this.fields);
        }
    }
}
