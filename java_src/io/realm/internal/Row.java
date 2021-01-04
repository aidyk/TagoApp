package io.realm.internal;

import io.realm.RealmFieldType;
import java.util.Date;
import javax.annotation.Nullable;

public interface Row {
    void checkIfAttached();

    byte[] getBinaryByteArray(long j);

    boolean getBoolean(long j);

    long getColumnCount();

    long getColumnIndex(String str);

    String getColumnName(long j);

    RealmFieldType getColumnType(long j);

    Date getDate(long j);

    double getDouble(long j);

    float getFloat(long j);

    long getIndex();

    long getLink(long j);

    long getLong(long j);

    OsList getModelList(long j);

    String getString(long j);

    Table getTable();

    OsList getValueList(long j, RealmFieldType realmFieldType);

    boolean hasColumn(String str);

    boolean isAttached();

    boolean isNull(long j);

    boolean isNullLink(long j);

    void nullifyLink(long j);

    void setBinaryByteArray(long j, @Nullable byte[] bArr);

    void setBoolean(long j, boolean z);

    void setDate(long j, Date date);

    void setDouble(long j, double d);

    void setFloat(long j, float f);

    void setLink(long j, long j2);

    void setLong(long j, long j2);

    void setNull(long j);

    void setString(long j, @Nullable String str);
}
