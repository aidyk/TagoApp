package androidx.core.util;

import android.support.annotation.RequiresApi;
import android.util.ArrayMap;
import kotlin.Metadata;
import kotlin.Pair;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 2}, d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a!\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003H\b\u001aQ\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032*\u0010\u0004\u001a\u0016\u0012\u0012\b\u0001\u0012\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u00060\u0005\"\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0006H\u0007¢\u0006\u0002\u0010\u0007¨\u0006\b"}, d2 = {"arrayMapOf", "Landroid/util/ArrayMap;", "K", "V", "pairs", "", "Lkotlin/Pair;", "([Lkotlin/Pair;)Landroid/util/ArrayMap;", "core-ktx_release"}, k = 2, mv = {1, 1, 9})
/* compiled from: ArrayMap.kt */
public final class ArrayMapKt {
    @RequiresApi(19)
    @NotNull
    public static final <K, V> ArrayMap<K, V> arrayMapOf() {
        return new ArrayMap<>();
    }

    /* JADX DEBUG: Multi-variable search result rejected for r4v1, resolved type: android.util.ArrayMap<K, V> */
    /* JADX WARN: Multi-variable type inference failed */
    @RequiresApi(19)
    @NotNull
    public static final <K, V> ArrayMap<K, V> arrayMapOf(@NotNull Pair<? extends K, ? extends V>... pairArr) {
        ArrayMap<K, V> arrayMap = new ArrayMap<>(pairArr.length);
        for (Pair<? extends K, ? extends V> pair : pairArr) {
            arrayMap.put(pair.getFirst(), pair.getSecond());
        }
        return arrayMap;
    }
}
