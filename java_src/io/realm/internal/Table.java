package io.realm.internal;

import io.realm.RealmFieldType;
import io.realm.exceptions.RealmPrimaryKeyConstraintException;
import java.util.Date;
import javax.annotation.Nullable;
import org.apache.commons.lang3.StringUtils;

public class Table implements NativeObject {
    public static final int CLASS_NAME_MAX_LENGTH = (63 - TABLE_PREFIX.length());
    public static final long INFINITE = -1;
    public static final int MAX_BINARY_SIZE = 16777200;
    public static final int MAX_STRING_SIZE = 16777199;
    public static final boolean NOT_NULLABLE = false;
    public static final int NO_MATCH = -1;
    public static final boolean NULLABLE = true;
    private static final int TABLE_NAME_MAX_LENGTH = 63;
    private static final String TABLE_PREFIX = Util.getTablePrefix();
    private static final long nativeFinalizerPtr = nativeGetFinalizerPtr();
    private final NativeContext context;
    private final long nativePtr;
    private final OsSharedRealm sharedRealm;

    private native long nativeAddColumn(long j, int i, String str, boolean z);

    private native long nativeAddColumnLink(long j, int i, String str, long j2);

    private native long nativeAddPrimitiveListColumn(long j, int i, String str, boolean z);

    private native void nativeAddSearchIndex(long j, long j2);

    private native void nativeClear(long j, boolean z);

    private native void nativeConvertColumnToNotNullable(long j, long j2, boolean z);

    private native void nativeConvertColumnToNullable(long j, long j2, boolean z);

    private native long nativeCountDouble(long j, long j2, double d);

    private native long nativeCountFloat(long j, long j2, float f);

    private native long nativeCountLong(long j, long j2, long j3);

    private native long nativeCountString(long j, long j2, String str);

    private native long nativeFindFirstBool(long j, long j2, boolean z);

    private native long nativeFindFirstDouble(long j, long j2, double d);

    private native long nativeFindFirstFloat(long j, long j2, float f);

    public static native long nativeFindFirstInt(long j, long j2, long j3);

    public static native long nativeFindFirstNull(long j, long j2);

    public static native long nativeFindFirstString(long j, long j2, String str);

    private native long nativeFindFirstTimestamp(long j, long j2, long j3);

    private native boolean nativeGetBoolean(long j, long j2, long j3);

    private native byte[] nativeGetByteArray(long j, long j2, long j3);

    private native long nativeGetColumnCount(long j);

    private native long nativeGetColumnIndex(long j, String str);

    private native String nativeGetColumnName(long j, long j2);

    private native int nativeGetColumnType(long j, long j2);

    private native double nativeGetDouble(long j, long j2, long j3);

    private static native long nativeGetFinalizerPtr();

    private native float nativeGetFloat(long j, long j2, long j3);

    private native long nativeGetLink(long j, long j2, long j3);

    private native long nativeGetLinkTarget(long j, long j2);

    private native long nativeGetLong(long j, long j2, long j3);

    private native String nativeGetName(long j);

    private native String nativeGetString(long j, long j2, long j3);

    private native long nativeGetTimestamp(long j, long j2, long j3);

    private native boolean nativeHasSameSchema(long j, long j2);

    private native boolean nativeHasSearchIndex(long j, long j2);

    public static native void nativeIncrementLong(long j, long j2, long j3, long j4);

    private static native void nativeInsertColumn(long j, long j2, int i, String str);

    private native boolean nativeIsColumnNullable(long j, long j2);

    private native boolean nativeIsNull(long j, long j2, long j3);

    private native boolean nativeIsNullLink(long j, long j2, long j3);

    private native boolean nativeIsValid(long j);

    private static native void nativeMigratePrimaryKeyTableIfNeeded(long j);

    private native void nativeMoveLastOver(long j, long j2);

    public static native void nativeNullifyLink(long j, long j2, long j3);

    private native void nativeRemoveColumn(long j, long j2);

    private native void nativeRemoveSearchIndex(long j, long j2);

    private native void nativeRenameColumn(long j, long j2, String str);

    public static native void nativeSetBoolean(long j, long j2, long j3, boolean z, boolean z2);

    public static native void nativeSetByteArray(long j, long j2, long j3, byte[] bArr, boolean z);

    public static native void nativeSetDouble(long j, long j2, long j3, double d, boolean z);

    public static native void nativeSetFloat(long j, long j2, long j3, float f, boolean z);

    public static native void nativeSetLink(long j, long j2, long j3, long j4, boolean z);

    public static native void nativeSetLong(long j, long j2, long j3, long j4, boolean z);

    public static native void nativeSetNull(long j, long j2, long j3, boolean z);

    public static native void nativeSetString(long j, long j2, long j3, String str, boolean z);

    public static native void nativeSetTimestamp(long j, long j2, long j3, long j4, boolean z);

    private native long nativeSize(long j);

    private native long nativeWhere(long j);

    public Table getTable() {
        return this;
    }

    /* access modifiers changed from: package-private */
    public native long nativeGetRowPtr(long j, long j2);

    Table(Table table, long j) {
        this(table.sharedRealm, j);
    }

    Table(OsSharedRealm osSharedRealm, long j) {
        this.context = osSharedRealm.context;
        this.sharedRealm = osSharedRealm;
        this.nativePtr = j;
        this.context.addReference(this);
    }

    @Override // io.realm.internal.NativeObject
    public long getNativePtr() {
        return this.nativePtr;
    }

    @Override // io.realm.internal.NativeObject
    public long getNativeFinalizerPtr() {
        return nativeFinalizerPtr;
    }

    public boolean isValid() {
        return this.nativePtr != 0 && nativeIsValid(this.nativePtr);
    }

    private void verifyColumnName(String str) {
        if (str.length() > 63) {
            throw new IllegalArgumentException("Column names are currently limited to max 63 characters.");
        }
    }

    public long addColumn(RealmFieldType realmFieldType, String str, boolean z) {
        verifyColumnName(str);
        switch (realmFieldType) {
            case INTEGER:
            case BOOLEAN:
            case STRING:
            case BINARY:
            case DATE:
            case FLOAT:
            case DOUBLE:
                return nativeAddColumn(this.nativePtr, realmFieldType.getNativeValue(), str, z);
            case INTEGER_LIST:
            case BOOLEAN_LIST:
            case STRING_LIST:
            case BINARY_LIST:
            case DATE_LIST:
            case FLOAT_LIST:
            case DOUBLE_LIST:
                return nativeAddPrimitiveListColumn(this.nativePtr, realmFieldType.getNativeValue() - 128, str, z);
            default:
                throw new IllegalArgumentException("Unsupported type: " + realmFieldType);
        }
    }

    public long addColumn(RealmFieldType realmFieldType, String str) {
        return addColumn(realmFieldType, str, false);
    }

    public long addColumnLink(RealmFieldType realmFieldType, String str, Table table) {
        verifyColumnName(str);
        return nativeAddColumnLink(this.nativePtr, realmFieldType.getNativeValue(), str, table.nativePtr);
    }

    public void removeColumn(long j) {
        String className = getClassName();
        String columnName = getColumnName(j);
        String primaryKeyForObject = OsObjectStore.getPrimaryKeyForObject(this.sharedRealm, getClassName());
        nativeRemoveColumn(this.nativePtr, j);
        if (columnName.equals(primaryKeyForObject)) {
            OsObjectStore.setPrimaryKeyForObject(this.sharedRealm, className, null);
        }
    }

    public void renameColumn(long j, String str) {
        verifyColumnName(str);
        String nativeGetColumnName = nativeGetColumnName(this.nativePtr, j);
        String primaryKeyForObject = OsObjectStore.getPrimaryKeyForObject(this.sharedRealm, getClassName());
        nativeRenameColumn(this.nativePtr, j, str);
        if (nativeGetColumnName.equals(primaryKeyForObject)) {
            try {
                OsObjectStore.setPrimaryKeyForObject(this.sharedRealm, getClassName(), str);
            } catch (Exception e) {
                nativeRenameColumn(this.nativePtr, j, nativeGetColumnName);
                throw new RuntimeException(e);
            }
        }
    }

    public void insertColumn(long j, RealmFieldType realmFieldType, String str) {
        verifyColumnName(str);
        nativeInsertColumn(this.nativePtr, j, realmFieldType.getNativeValue(), str);
    }

    public boolean isColumnNullable(long j) {
        return nativeIsColumnNullable(this.nativePtr, j);
    }

    public void convertColumnToNullable(long j) {
        nativeConvertColumnToNullable(this.nativePtr, j, isPrimaryKey(j));
    }

    public void convertColumnToNotNullable(long j) {
        nativeConvertColumnToNotNullable(this.nativePtr, j, isPrimaryKey(j));
    }

    public long size() {
        return nativeSize(this.nativePtr);
    }

    public boolean isEmpty() {
        return size() == 0;
    }

    public void clear(boolean z) {
        checkImmutable();
        nativeClear(this.nativePtr, z);
    }

    public long getColumnCount() {
        return nativeGetColumnCount(this.nativePtr);
    }

    public String getColumnName(long j) {
        return nativeGetColumnName(this.nativePtr, j);
    }

    public long getColumnIndex(String str) {
        if (str != null) {
            return nativeGetColumnIndex(this.nativePtr, str);
        }
        throw new IllegalArgumentException("Column name can not be null.");
    }

    public RealmFieldType getColumnType(long j) {
        return RealmFieldType.fromNativeValue(nativeGetColumnType(this.nativePtr, j));
    }

    public void moveLastOver(long j) {
        checkImmutable();
        nativeMoveLastOver(this.nativePtr, j);
    }

    private boolean isPrimaryKey(long j) {
        return getColumnName(j).equals(OsObjectStore.getPrimaryKeyForObject(this.sharedRealm, getClassName()));
    }

    public static void throwDuplicatePrimaryKeyException(Object obj) {
        throw new RealmPrimaryKeyConstraintException("Value already exists: " + obj);
    }

    /* access modifiers changed from: package-private */
    public OsSharedRealm getSharedRealm() {
        return this.sharedRealm;
    }

    public long getLong(long j, long j2) {
        return nativeGetLong(this.nativePtr, j, j2);
    }

    public boolean getBoolean(long j, long j2) {
        return nativeGetBoolean(this.nativePtr, j, j2);
    }

    public float getFloat(long j, long j2) {
        return nativeGetFloat(this.nativePtr, j, j2);
    }

    public double getDouble(long j, long j2) {
        return nativeGetDouble(this.nativePtr, j, j2);
    }

    public Date getDate(long j, long j2) {
        return new Date(nativeGetTimestamp(this.nativePtr, j, j2));
    }

    public String getString(long j, long j2) {
        return nativeGetString(this.nativePtr, j, j2);
    }

    public byte[] getBinaryByteArray(long j, long j2) {
        return nativeGetByteArray(this.nativePtr, j, j2);
    }

    public long getLink(long j, long j2) {
        return nativeGetLink(this.nativePtr, j, j2);
    }

    public Table getLinkTarget(long j) {
        return new Table(this.sharedRealm, nativeGetLinkTarget(this.nativePtr, j));
    }

    public boolean isNull(long j, long j2) {
        return nativeIsNull(this.nativePtr, j, j2);
    }

    public UncheckedRow getUncheckedRow(long j) {
        return UncheckedRow.getByRowIndex(this.context, this, j);
    }

    public UncheckedRow getUncheckedRowByPointer(long j) {
        return UncheckedRow.getByRowPointer(this.context, this, j);
    }

    public CheckedRow getCheckedRow(long j) {
        return CheckedRow.get(this.context, this, j);
    }

    public void setLong(long j, long j2, long j3, boolean z) {
        checkImmutable();
        nativeSetLong(this.nativePtr, j, j2, j3, z);
    }

    public void incrementLong(long j, long j2, long j3) {
        checkImmutable();
        nativeIncrementLong(this.nativePtr, j, j2, j3);
    }

    public void setBoolean(long j, long j2, boolean z, boolean z2) {
        checkImmutable();
        nativeSetBoolean(this.nativePtr, j, j2, z, z2);
    }

    public void setFloat(long j, long j2, float f, boolean z) {
        checkImmutable();
        nativeSetFloat(this.nativePtr, j, j2, f, z);
    }

    public void setDouble(long j, long j2, double d, boolean z) {
        checkImmutable();
        nativeSetDouble(this.nativePtr, j, j2, d, z);
    }

    public void setDate(long j, long j2, Date date, boolean z) {
        if (date != null) {
            checkImmutable();
            nativeSetTimestamp(this.nativePtr, j, j2, date.getTime(), z);
            return;
        }
        throw new IllegalArgumentException("Null Date is not allowed.");
    }

    public void setString(long j, long j2, @Nullable String str, boolean z) {
        checkImmutable();
        if (str == null) {
            nativeSetNull(this.nativePtr, j, j2, z);
        } else {
            nativeSetString(this.nativePtr, j, j2, str, z);
        }
    }

    public void setBinaryByteArray(long j, long j2, byte[] bArr, boolean z) {
        checkImmutable();
        nativeSetByteArray(this.nativePtr, j, j2, bArr, z);
    }

    public void setLink(long j, long j2, long j3, boolean z) {
        checkImmutable();
        nativeSetLink(this.nativePtr, j, j2, j3, z);
    }

    public void setNull(long j, long j2, boolean z) {
        checkImmutable();
        nativeSetNull(this.nativePtr, j, j2, z);
    }

    public void addSearchIndex(long j) {
        checkImmutable();
        nativeAddSearchIndex(this.nativePtr, j);
    }

    public void removeSearchIndex(long j) {
        checkImmutable();
        nativeRemoveSearchIndex(this.nativePtr, j);
    }

    public static void migratePrimaryKeyTableIfNeeded(OsSharedRealm osSharedRealm) {
        nativeMigratePrimaryKeyTableIfNeeded(osSharedRealm.getNativePtr());
    }

    public boolean hasSearchIndex(long j) {
        return nativeHasSearchIndex(this.nativePtr, j);
    }

    public boolean isNullLink(long j, long j2) {
        return nativeIsNullLink(this.nativePtr, j, j2);
    }

    public void nullifyLink(long j, long j2) {
        nativeNullifyLink(this.nativePtr, j, j2);
    }

    /* access modifiers changed from: package-private */
    public boolean isImmutable() {
        return this.sharedRealm != null && !this.sharedRealm.isInTransaction();
    }

    /* access modifiers changed from: package-private */
    public void checkImmutable() {
        if (isImmutable()) {
            throwImmutable();
        }
    }

    public long count(long j, long j2) {
        return nativeCountLong(this.nativePtr, j, j2);
    }

    public long count(long j, float f) {
        return nativeCountFloat(this.nativePtr, j, f);
    }

    public long count(long j, double d) {
        return nativeCountDouble(this.nativePtr, j, d);
    }

    public long count(long j, String str) {
        return nativeCountString(this.nativePtr, j, str);
    }

    public TableQuery where() {
        return new TableQuery(this.context, this, nativeWhere(this.nativePtr));
    }

    public long findFirstLong(long j, long j2) {
        return nativeFindFirstInt(this.nativePtr, j, j2);
    }

    public long findFirstBoolean(long j, boolean z) {
        return nativeFindFirstBool(this.nativePtr, j, z);
    }

    public long findFirstFloat(long j, float f) {
        return nativeFindFirstFloat(this.nativePtr, j, f);
    }

    public long findFirstDouble(long j, double d) {
        return nativeFindFirstDouble(this.nativePtr, j, d);
    }

    public long findFirstDate(long j, Date date) {
        if (date != null) {
            return nativeFindFirstTimestamp(this.nativePtr, j, date.getTime());
        }
        throw new IllegalArgumentException("null is not supported");
    }

    public long findFirstString(long j, String str) {
        if (str != null) {
            return nativeFindFirstString(this.nativePtr, j, str);
        }
        throw new IllegalArgumentException("null is not supported");
    }

    public long findFirstNull(long j) {
        return nativeFindFirstNull(this.nativePtr, j);
    }

    @Nullable
    public String getName() {
        return nativeGetName(this.nativePtr);
    }

    @Nullable
    public String getClassName() {
        return getClassNameForTable(getName());
    }

    public String toString() {
        long columnCount = getColumnCount();
        String name = getName();
        StringBuilder sb = new StringBuilder("The Table ");
        if (name != null && !name.isEmpty()) {
            sb.append(getName());
            sb.append(StringUtils.SPACE);
        }
        sb.append("contains ");
        sb.append(columnCount);
        sb.append(" columns: ");
        int i = 0;
        while (true) {
            long j = (long) i;
            if (j < columnCount) {
                if (i != 0) {
                    sb.append(", ");
                }
                sb.append(getColumnName(j));
                i++;
            } else {
                sb.append(".");
                sb.append(" And ");
                sb.append(size());
                sb.append(" rows.");
                return sb.toString();
            }
        }
    }

    private static void throwImmutable() {
        throw new IllegalStateException("Cannot modify managed objects outside of a write transaction.");
    }

    public boolean hasSameSchema(Table table) {
        if (table != null) {
            return nativeHasSameSchema(this.nativePtr, table.nativePtr);
        }
        throw new IllegalArgumentException("The argument cannot be null");
    }

    @Nullable
    public static String getClassNameForTable(@Nullable String str) {
        if (str == null) {
            return null;
        }
        if (!str.startsWith(TABLE_PREFIX)) {
            return str;
        }
        return str.substring(TABLE_PREFIX.length());
    }

    public static String getTableNameForClass(String str) {
        if (str == null) {
            return null;
        }
        return TABLE_PREFIX + str;
    }
}
