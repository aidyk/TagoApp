package io.realm.internal;

import io.realm.RealmFieldType;
import io.realm.Sort;
import io.realm.internal.fields.FieldDescriptor;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
import javax.annotation.Nullable;

@Keep
public class SortDescriptor {
    static final Set<RealmFieldType> DISTINCT_VALID_FIELD_TYPES = Collections.unmodifiableSet(new HashSet(Arrays.asList(RealmFieldType.BOOLEAN, RealmFieldType.INTEGER, RealmFieldType.STRING, RealmFieldType.DATE)));
    static final Set<RealmFieldType> SORT_VALID_FIELD_TYPES = Collections.unmodifiableSet(new HashSet(Arrays.asList(RealmFieldType.BOOLEAN, RealmFieldType.INTEGER, RealmFieldType.FLOAT, RealmFieldType.DOUBLE, RealmFieldType.STRING, RealmFieldType.DATE)));
    private final boolean[] ascendings;
    private final long[][] columnIndices;
    private final Table table;

    public static SortDescriptor getInstanceForSort(FieldDescriptor.SchemaProxy schemaProxy, Table table2, String str, Sort sort) {
        return getInstanceForSort(schemaProxy, table2, new String[]{str}, new Sort[]{sort});
    }

    public static SortDescriptor getInstanceForSort(FieldDescriptor.SchemaProxy schemaProxy, Table table2, String[] strArr, Sort[] sortArr) {
        if (sortArr == null || sortArr.length == 0) {
            throw new IllegalArgumentException("You must provide at least one sort order.");
        } else if (strArr.length == sortArr.length) {
            return getInstance(schemaProxy, table2, strArr, sortArr, FieldDescriptor.OBJECT_LINK_FIELD_TYPE, SORT_VALID_FIELD_TYPES, "Sort is not supported");
        } else {
            throw new IllegalArgumentException("Number of fields and sort orders do not match.");
        }
    }

    public static SortDescriptor getInstanceForDistinct(FieldDescriptor.SchemaProxy schemaProxy, Table table2, String str) {
        return getInstanceForDistinct(schemaProxy, table2, new String[]{str});
    }

    public static SortDescriptor getInstanceForDistinct(FieldDescriptor.SchemaProxy schemaProxy, Table table2, String[] strArr) {
        return getInstance(schemaProxy, table2, strArr, null, FieldDescriptor.NO_LINK_FIELD_TYPE, DISTINCT_VALID_FIELD_TYPES, "Distinct is not supported");
    }

    private static SortDescriptor getInstance(FieldDescriptor.SchemaProxy schemaProxy, Table table2, String[] strArr, @Nullable Sort[] sortArr, Set<RealmFieldType> set, Set<RealmFieldType> set2, String str) {
        if (strArr == null || strArr.length == 0) {
            throw new IllegalArgumentException("You must provide at least one field name.");
        }
        long[][] jArr = new long[strArr.length][];
        for (int i = 0; i < strArr.length; i++) {
            FieldDescriptor createFieldDescriptor = FieldDescriptor.createFieldDescriptor(schemaProxy, table2, strArr[i], set, null);
            checkFieldType(createFieldDescriptor, set2, str, strArr[i]);
            jArr[i] = createFieldDescriptor.getColumnIndices();
        }
        return new SortDescriptor(table2, jArr, sortArr);
    }

    static SortDescriptor getTestInstance(Table table2, long[] jArr) {
        return new SortDescriptor(table2, new long[][]{jArr}, null);
    }

    private static void checkFieldType(FieldDescriptor fieldDescriptor, Set<RealmFieldType> set, String str, String str2) {
        if (!set.contains(fieldDescriptor.getFinalColumnType())) {
            throw new IllegalArgumentException(String.format(Locale.US, "%s on '%s' field '%s' in '%s'.", str, fieldDescriptor.getFinalColumnType(), fieldDescriptor.getFinalColumnName(), str2));
        }
    }

    private SortDescriptor(Table table2, long[][] jArr, @Nullable Sort[] sortArr) {
        this.table = table2;
        this.columnIndices = jArr;
        if (sortArr != null) {
            this.ascendings = new boolean[sortArr.length];
            for (int i = 0; i < sortArr.length; i++) {
                this.ascendings[i] = sortArr[i].getValue();
            }
            return;
        }
        this.ascendings = null;
    }

    /* access modifiers changed from: package-private */
    public long[][] getColumnIndices() {
        return this.columnIndices;
    }

    /* access modifiers changed from: package-private */
    public boolean[] getAscendings() {
        return this.ascendings;
    }

    private long getTablePtr() {
        return this.table.getNativePtr();
    }
}
