package io.realm.internal;

import io.realm.RealmFieldType;
import java.util.Locale;

public class CheckedRow extends UncheckedRow {
    private UncheckedRow originalRow;

    /* access modifiers changed from: protected */
    @Override // io.realm.internal.UncheckedRow
    public native boolean nativeGetBoolean(long j, long j2);

    /* access modifiers changed from: protected */
    @Override // io.realm.internal.UncheckedRow
    public native byte[] nativeGetByteArray(long j, long j2);

    /* access modifiers changed from: protected */
    @Override // io.realm.internal.UncheckedRow
    public native long nativeGetColumnCount(long j);

    /* access modifiers changed from: protected */
    @Override // io.realm.internal.UncheckedRow
    public native long nativeGetColumnIndex(long j, String str);

    /* access modifiers changed from: protected */
    @Override // io.realm.internal.UncheckedRow
    public native String nativeGetColumnName(long j, long j2);

    /* access modifiers changed from: protected */
    @Override // io.realm.internal.UncheckedRow
    public native int nativeGetColumnType(long j, long j2);

    /* access modifiers changed from: protected */
    @Override // io.realm.internal.UncheckedRow
    public native double nativeGetDouble(long j, long j2);

    /* access modifiers changed from: protected */
    @Override // io.realm.internal.UncheckedRow
    public native float nativeGetFloat(long j, long j2);

    /* access modifiers changed from: protected */
    @Override // io.realm.internal.UncheckedRow
    public native long nativeGetLink(long j, long j2);

    /* access modifiers changed from: protected */
    @Override // io.realm.internal.UncheckedRow
    public native long nativeGetLong(long j, long j2);

    /* access modifiers changed from: protected */
    @Override // io.realm.internal.UncheckedRow
    public native String nativeGetString(long j, long j2);

    /* access modifiers changed from: protected */
    @Override // io.realm.internal.UncheckedRow
    public native long nativeGetTimestamp(long j, long j2);

    /* access modifiers changed from: protected */
    @Override // io.realm.internal.UncheckedRow
    public native boolean nativeIsNullLink(long j, long j2);

    /* access modifiers changed from: protected */
    @Override // io.realm.internal.UncheckedRow
    public native void nativeNullifyLink(long j, long j2);

    /* access modifiers changed from: protected */
    @Override // io.realm.internal.UncheckedRow
    public native void nativeSetBoolean(long j, long j2, boolean z);

    /* access modifiers changed from: protected */
    @Override // io.realm.internal.UncheckedRow
    public native void nativeSetByteArray(long j, long j2, byte[] bArr);

    /* access modifiers changed from: protected */
    @Override // io.realm.internal.UncheckedRow
    public native void nativeSetDouble(long j, long j2, double d);

    /* access modifiers changed from: protected */
    @Override // io.realm.internal.UncheckedRow
    public native void nativeSetFloat(long j, long j2, float f);

    /* access modifiers changed from: protected */
    @Override // io.realm.internal.UncheckedRow
    public native void nativeSetLink(long j, long j2, long j3);

    /* access modifiers changed from: protected */
    @Override // io.realm.internal.UncheckedRow
    public native void nativeSetLong(long j, long j2, long j3);

    /* access modifiers changed from: protected */
    @Override // io.realm.internal.UncheckedRow
    public native void nativeSetString(long j, long j2, String str);

    /* access modifiers changed from: protected */
    @Override // io.realm.internal.UncheckedRow
    public native void nativeSetTimestamp(long j, long j2, long j3);

    private CheckedRow(NativeContext nativeContext, Table table, long j) {
        super(nativeContext, table, j);
    }

    private CheckedRow(UncheckedRow uncheckedRow) {
        super(uncheckedRow);
        this.originalRow = uncheckedRow;
    }

    public static CheckedRow get(NativeContext nativeContext, Table table, long j) {
        return new CheckedRow(nativeContext, table, table.nativeGetRowPtr(table.getNativePtr(), j));
    }

    public static CheckedRow getFromRow(UncheckedRow uncheckedRow) {
        return new CheckedRow(uncheckedRow);
    }

    @Override // io.realm.internal.Row, io.realm.internal.UncheckedRow
    public boolean isNullLink(long j) {
        RealmFieldType columnType = getColumnType(j);
        if (columnType == RealmFieldType.OBJECT || columnType == RealmFieldType.LIST) {
            return super.isNullLink(j);
        }
        return false;
    }

    @Override // io.realm.internal.Row, io.realm.internal.UncheckedRow
    public boolean isNull(long j) {
        return super.isNull(j);
    }

    @Override // io.realm.internal.Row, io.realm.internal.UncheckedRow
    public void setNull(long j) {
        if (getColumnType(j) == RealmFieldType.BINARY) {
            super.setBinaryByteArray(j, null);
        } else {
            super.setNull(j);
        }
    }

    @Override // io.realm.internal.Row, io.realm.internal.UncheckedRow
    public OsList getModelList(long j) {
        if (getTable().getColumnType(j) == RealmFieldType.LIST) {
            return super.getModelList(j);
        }
        throw new IllegalArgumentException(String.format(Locale.US, "Field '%s' is not a 'RealmList'.", getTable().getColumnName(j)));
    }

    @Override // io.realm.internal.Row, io.realm.internal.UncheckedRow
    public OsList getValueList(long j, RealmFieldType realmFieldType) {
        if (realmFieldType == getTable().getColumnType(j)) {
            return super.getValueList(j, realmFieldType);
        }
        throw new IllegalArgumentException(String.format(Locale.US, "The type of field '%1$s' is not 'RealmFieldType.%2$s'.", getTable().getColumnName(j), realmFieldType.name()));
    }
}
