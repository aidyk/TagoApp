package io.realm.internal;

import io.realm.RealmFieldType;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Nullable;

public abstract class ColumnInfo {
    private final Map<String, ColumnDetails> indicesFromColumnNames;
    private final Map<String, ColumnDetails> indicesFromJavaFieldNames;
    private final boolean mutable;

    /* access modifiers changed from: protected */
    public abstract ColumnInfo copy(boolean z);

    /* access modifiers changed from: protected */
    public abstract void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2);

    public static final class ColumnDetails {
        public final long columnIndex;
        public final RealmFieldType columnType;
        public final String linkedClassName;

        private ColumnDetails(long j, RealmFieldType realmFieldType, @Nullable String str) {
            this.columnIndex = j;
            this.columnType = realmFieldType;
            this.linkedClassName = str;
        }

        ColumnDetails(Property property) {
            this(property.getColumnIndex(), property.getType(), property.getLinkedObjectName());
        }

        public String toString() {
            return "ColumnDetails[" + this.columnIndex + ", " + this.columnType + ", " + this.linkedClassName + "]";
        }
    }

    protected ColumnInfo(int i) {
        this(i, true);
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    protected ColumnInfo(@Nullable ColumnInfo columnInfo, boolean z) {
        this(columnInfo == null ? 0 : columnInfo.indicesFromJavaFieldNames.size(), z);
        if (columnInfo != null) {
            this.indicesFromJavaFieldNames.putAll(columnInfo.indicesFromJavaFieldNames);
        }
    }

    private ColumnInfo(int i, boolean z) {
        this.indicesFromJavaFieldNames = new HashMap(i);
        this.indicesFromColumnNames = new HashMap(i);
        this.mutable = z;
    }

    public final boolean isMutable() {
        return this.mutable;
    }

    public long getColumnIndex(String str) {
        ColumnDetails columnDetails = this.indicesFromJavaFieldNames.get(str);
        if (columnDetails == null) {
            return -1;
        }
        return columnDetails.columnIndex;
    }

    @Nullable
    public ColumnDetails getColumnDetails(String str) {
        return this.indicesFromJavaFieldNames.get(str);
    }

    public void copyFrom(ColumnInfo columnInfo) {
        if (!this.mutable) {
            throw new UnsupportedOperationException("Attempt to modify an immutable ColumnInfo");
        } else if (columnInfo != null) {
            this.indicesFromJavaFieldNames.clear();
            this.indicesFromJavaFieldNames.putAll(columnInfo.indicesFromJavaFieldNames);
            this.indicesFromColumnNames.clear();
            this.indicesFromColumnNames.putAll(columnInfo.indicesFromColumnNames);
            copy(columnInfo, this);
        } else {
            throw new NullPointerException("Attempt to copy null ColumnInfo");
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ColumnInfo[");
        sb.append("mutable=" + this.mutable);
        sb.append(",");
        boolean z = false;
        if (this.indicesFromJavaFieldNames != null) {
            sb.append("JavaFieldNames=[");
            boolean z2 = false;
            for (Map.Entry<String, ColumnDetails> entry : this.indicesFromJavaFieldNames.entrySet()) {
                if (z2) {
                    sb.append(",");
                }
                sb.append(entry.getKey());
                sb.append("->");
                sb.append(entry.getValue());
                z2 = true;
            }
            sb.append("]");
        }
        if (this.indicesFromColumnNames != null) {
            sb.append(", InternalFieldNames=[");
            for (Map.Entry<String, ColumnDetails> entry2 : this.indicesFromColumnNames.entrySet()) {
                if (z) {
                    sb.append(",");
                }
                sb.append(entry2.getKey());
                sb.append("->");
                sb.append(entry2.getValue());
                z = true;
            }
            sb.append("]");
        }
        sb.append("]");
        return sb.toString();
    }

    /* access modifiers changed from: protected */
    public final long addColumnDetails(String str, String str2, OsObjectSchemaInfo osObjectSchemaInfo) {
        Property property = osObjectSchemaInfo.getProperty(str2);
        ColumnDetails columnDetails = new ColumnDetails(property);
        this.indicesFromJavaFieldNames.put(str, columnDetails);
        this.indicesFromColumnNames.put(str2, columnDetails);
        return property.getColumnIndex();
    }

    /* access modifiers changed from: protected */
    public final void addBacklinkDetails(OsSchemaInfo osSchemaInfo, String str, String str2, String str3) {
        this.indicesFromJavaFieldNames.put(str, new ColumnDetails(osSchemaInfo.getObjectSchemaInfo(str2).getProperty(str3).getColumnIndex(), RealmFieldType.LINKING_OBJECTS, str2));
    }

    public Map<String, ColumnDetails> getIndicesMap() {
        return this.indicesFromJavaFieldNames;
    }
}
