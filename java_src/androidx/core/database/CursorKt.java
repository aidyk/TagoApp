package androidx.core.database;

import android.database.Cursor;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 2}, d1 = {"\u0000:\n\u0000\n\u0002\u0010\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\n\n\u0002\b\u0006\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\b\u001a\u0017\u0010\u0005\u001a\u0004\u0018\u00010\u0001*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0007H\b\u001a\u0017\u0010\u0005\u001a\u0004\u0018\u00010\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\b\u001a\u0015\u0010\b\u001a\u00020\t*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\b\u001a\u001c\u0010\n\u001a\u0004\u0018\u00010\t*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0007H\b¢\u0006\u0002\u0010\u000b\u001a\u001c\u0010\n\u001a\u0004\u0018\u00010\t*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\b¢\u0006\u0002\u0010\f\u001a\u0015\u0010\r\u001a\u00020\u000e*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\b\u001a\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u000e*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0007H\b¢\u0006\u0002\u0010\u0010\u001a\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u000e*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\b¢\u0006\u0002\u0010\u0011\u001a\u0015\u0010\u0012\u001a\u00020\u0007*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\b\u001a\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0007*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0007H\b¢\u0006\u0002\u0010\u0014\u001a\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0007*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\b¢\u0006\u0002\u0010\u0015\u001a\u0015\u0010\u0016\u001a\u00020\u0017*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\b\u001a\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0017*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0007H\b¢\u0006\u0002\u0010\u0019\u001a\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0017*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\b¢\u0006\u0002\u0010\u001a\u001a\u0015\u0010\u001b\u001a\u00020\u001c*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\b\u001a\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u001c*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0007H\b¢\u0006\u0002\u0010\u001e\u001a\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u001c*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\b¢\u0006\u0002\u0010\u001f\u001a\u0015\u0010 \u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\b\u001a\u0017\u0010!\u001a\u0004\u0018\u00010\u0004*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0007H\b\u001a\u0017\u0010!\u001a\u0004\u0018\u00010\u0004*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\b¨\u0006\""}, d2 = {"getBlob", "", "Landroid/database/Cursor;", "columnName", "", "getBlobOrNull", "index", "", "getDouble", "", "getDoubleOrNull", "(Landroid/database/Cursor;I)Ljava/lang/Double;", "(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Double;", "getFloat", "", "getFloatOrNull", "(Landroid/database/Cursor;I)Ljava/lang/Float;", "(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Float;", "getInt", "getIntOrNull", "(Landroid/database/Cursor;I)Ljava/lang/Integer;", "(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;", "getLong", "", "getLongOrNull", "(Landroid/database/Cursor;I)Ljava/lang/Long;", "(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;", "getShort", "", "getShortOrNull", "(Landroid/database/Cursor;I)Ljava/lang/Short;", "(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Short;", "getString", "getStringOrNull", "core-ktx_release"}, k = 2, mv = {1, 1, 9})
/* compiled from: Cursor.kt */
public final class CursorKt {
    @NotNull
    public static final byte[] getBlob(@NotNull Cursor cursor, @NotNull String str) {
        byte[] blob = cursor.getBlob(cursor.getColumnIndexOrThrow(str));
        Intrinsics.checkExpressionValueIsNotNull(blob, "getBlob(getColumnIndexOrThrow(columnName))");
        return blob;
    }

    public static final double getDouble(@NotNull Cursor cursor, @NotNull String str) {
        return cursor.getDouble(cursor.getColumnIndexOrThrow(str));
    }

    public static final float getFloat(@NotNull Cursor cursor, @NotNull String str) {
        return cursor.getFloat(cursor.getColumnIndexOrThrow(str));
    }

    public static final int getInt(@NotNull Cursor cursor, @NotNull String str) {
        return cursor.getInt(cursor.getColumnIndexOrThrow(str));
    }

    public static final long getLong(@NotNull Cursor cursor, @NotNull String str) {
        return cursor.getLong(cursor.getColumnIndexOrThrow(str));
    }

    public static final short getShort(@NotNull Cursor cursor, @NotNull String str) {
        return cursor.getShort(cursor.getColumnIndexOrThrow(str));
    }

    @NotNull
    public static final String getString(@NotNull Cursor cursor, @NotNull String str) {
        String string = cursor.getString(cursor.getColumnIndexOrThrow(str));
        Intrinsics.checkExpressionValueIsNotNull(string, "getString(getColumnIndexOrThrow(columnName))");
        return string;
    }

    @Nullable
    public static final byte[] getBlobOrNull(@NotNull Cursor cursor, int i) {
        if (cursor.isNull(i)) {
            return null;
        }
        return cursor.getBlob(i);
    }

    @Nullable
    public static final Double getDoubleOrNull(@NotNull Cursor cursor, int i) {
        if (cursor.isNull(i)) {
            return null;
        }
        return Double.valueOf(cursor.getDouble(i));
    }

    @Nullable
    public static final Float getFloatOrNull(@NotNull Cursor cursor, int i) {
        if (cursor.isNull(i)) {
            return null;
        }
        return Float.valueOf(cursor.getFloat(i));
    }

    @Nullable
    public static final Integer getIntOrNull(@NotNull Cursor cursor, int i) {
        if (cursor.isNull(i)) {
            return null;
        }
        return Integer.valueOf(cursor.getInt(i));
    }

    @Nullable
    public static final Long getLongOrNull(@NotNull Cursor cursor, int i) {
        if (cursor.isNull(i)) {
            return null;
        }
        return Long.valueOf(cursor.getLong(i));
    }

    @Nullable
    public static final Short getShortOrNull(@NotNull Cursor cursor, int i) {
        if (cursor.isNull(i)) {
            return null;
        }
        return Short.valueOf(cursor.getShort(i));
    }

    @Nullable
    public static final String getStringOrNull(@NotNull Cursor cursor, int i) {
        if (cursor.isNull(i)) {
            return null;
        }
        return cursor.getString(i);
    }

    @Nullable
    public static final byte[] getBlobOrNull(@NotNull Cursor cursor, @NotNull String str) {
        int columnIndexOrThrow = cursor.getColumnIndexOrThrow(str);
        if (cursor.isNull(columnIndexOrThrow)) {
            return null;
        }
        return cursor.getBlob(columnIndexOrThrow);
    }

    @Nullable
    public static final Double getDoubleOrNull(@NotNull Cursor cursor, @NotNull String str) {
        int columnIndexOrThrow = cursor.getColumnIndexOrThrow(str);
        if (cursor.isNull(columnIndexOrThrow)) {
            return null;
        }
        return Double.valueOf(cursor.getDouble(columnIndexOrThrow));
    }

    @Nullable
    public static final Float getFloatOrNull(@NotNull Cursor cursor, @NotNull String str) {
        int columnIndexOrThrow = cursor.getColumnIndexOrThrow(str);
        if (cursor.isNull(columnIndexOrThrow)) {
            return null;
        }
        return Float.valueOf(cursor.getFloat(columnIndexOrThrow));
    }

    @Nullable
    public static final Integer getIntOrNull(@NotNull Cursor cursor, @NotNull String str) {
        int columnIndexOrThrow = cursor.getColumnIndexOrThrow(str);
        if (cursor.isNull(columnIndexOrThrow)) {
            return null;
        }
        return Integer.valueOf(cursor.getInt(columnIndexOrThrow));
    }

    @Nullable
    public static final Long getLongOrNull(@NotNull Cursor cursor, @NotNull String str) {
        int columnIndexOrThrow = cursor.getColumnIndexOrThrow(str);
        if (cursor.isNull(columnIndexOrThrow)) {
            return null;
        }
        return Long.valueOf(cursor.getLong(columnIndexOrThrow));
    }

    @Nullable
    public static final Short getShortOrNull(@NotNull Cursor cursor, @NotNull String str) {
        int columnIndexOrThrow = cursor.getColumnIndexOrThrow(str);
        if (cursor.isNull(columnIndexOrThrow)) {
            return null;
        }
        return Short.valueOf(cursor.getShort(columnIndexOrThrow));
    }

    @Nullable
    public static final String getStringOrNull(@NotNull Cursor cursor, @NotNull String str) {
        int columnIndexOrThrow = cursor.getColumnIndexOrThrow(str);
        if (cursor.isNull(columnIndexOrThrow)) {
            return null;
        }
        return cursor.getString(columnIndexOrThrow);
    }
}
