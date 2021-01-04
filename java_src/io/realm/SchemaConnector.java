package io.realm;

import io.realm.internal.ColumnInfo;
import io.realm.internal.fields.FieldDescriptor;

/* access modifiers changed from: package-private */
public class SchemaConnector implements FieldDescriptor.SchemaProxy {
    private final RealmSchema schema;

    public SchemaConnector(RealmSchema realmSchema) {
        this.schema = realmSchema;
    }

    @Override // io.realm.internal.fields.FieldDescriptor.SchemaProxy
    public boolean hasCache() {
        return this.schema.haveColumnInfo();
    }

    @Override // io.realm.internal.fields.FieldDescriptor.SchemaProxy
    public ColumnInfo getColumnInfo(String str) {
        return this.schema.getColumnInfo(str);
    }

    @Override // io.realm.internal.fields.FieldDescriptor.SchemaProxy
    public long getNativeTablePtr(String str) {
        return this.schema.getTable(str).getNativePtr();
    }
}
