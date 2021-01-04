package io.realm.internal.fields;

import io.realm.RealmFieldType;
import io.realm.internal.Table;
import java.util.List;
import java.util.Locale;
import java.util.Set;

/* access modifiers changed from: package-private */
public class DynamicFieldDescriptor extends FieldDescriptor {
    private final Table table;

    DynamicFieldDescriptor(Table table2, String str, Set<RealmFieldType> set, Set<RealmFieldType> set2) {
        super(str, set, set2);
        this.table = table2;
    }

    /* access modifiers changed from: protected */
    @Override // io.realm.internal.fields.FieldDescriptor
    public void compileFieldDescription(List<String> list) {
        int size = list.size();
        long[] jArr = new long[size];
        String str = null;
        Table table2 = this.table;
        String str2 = null;
        RealmFieldType realmFieldType = null;
        for (int i = 0; i < size; i++) {
            str2 = list.get(i);
            if (str2 == null || str2.length() <= 0) {
                throw new IllegalArgumentException("Invalid query: Field descriptor contains an empty field.  A field description may not begin with or contain adjacent periods ('.').");
            }
            str = table2.getClassName();
            long columnIndex = table2.getColumnIndex(str2);
            if (columnIndex >= 0) {
                realmFieldType = table2.getColumnType(columnIndex);
                if (i < size - 1) {
                    verifyInternalColumnType(str, str2, realmFieldType);
                    table2 = table2.getLinkTarget(columnIndex);
                }
                jArr[i] = columnIndex;
            } else {
                throw new IllegalArgumentException(String.format(Locale.US, "Invalid query: field '%s' not found in table '%s'.", str2, str));
            }
        }
        setCompilationResults(str, str2, realmFieldType, jArr, new long[size]);
    }
}
