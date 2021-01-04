package io.realm.internal;

import io.realm.RealmFieldType;
import java.util.Date;

public enum InvalidRow implements Row {
    INSTANCE;

    @Override // io.realm.internal.Row
    public boolean isAttached() {
        return false;
    }

    @Override // io.realm.internal.Row
    public long getColumnCount() {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public String getColumnName(long j) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public long getColumnIndex(String str) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public RealmFieldType getColumnType(long j) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public Table getTable() {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public long getIndex() {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public long getLong(long j) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public boolean getBoolean(long j) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public float getFloat(long j) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public double getDouble(long j) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public Date getDate(long j) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public String getString(long j) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public byte[] getBinaryByteArray(long j) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public long getLink(long j) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public boolean isNullLink(long j) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public OsList getModelList(long j) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public OsList getValueList(long j, RealmFieldType realmFieldType) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public void setLong(long j, long j2) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public void setBoolean(long j, boolean z) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public void setFloat(long j, float f) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public void setDouble(long j, double d) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public void setDate(long j, Date date) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public void setString(long j, String str) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public void setBinaryByteArray(long j, byte[] bArr) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public void setLink(long j, long j2) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public void nullifyLink(long j) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public boolean isNull(long j) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public void setNull(long j) {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public void checkIfAttached() {
        throw getStubException();
    }

    @Override // io.realm.internal.Row
    public boolean hasColumn(String str) {
        throw getStubException();
    }

    private RuntimeException getStubException() {
        return new IllegalStateException("Object is no longer managed by Realm. Has it been deleted?");
    }
}
