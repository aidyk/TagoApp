package androidx.core.util;

import android.util.LongSparseArray;
import kotlin.Metadata;
import kotlin.collections.LongIterator;

@Metadata(bv = {1, 0, 2}, d1 = {"\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\t\u0010\t\u001a\u00020\nH\u0002J\b\u0010\u000b\u001a\u00020\fH\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\r"}, d2 = {"androidx/core/util/LongSparseArrayKt$keyIterator$1", "Lkotlin/collections/LongIterator;", "(Landroid/util/LongSparseArray;)V", "index", "", "getIndex", "()I", "setIndex", "(I)V", "hasNext", "", "nextLong", "", "core-ktx_release"}, k = 1, mv = {1, 1, 9})
/* compiled from: LongSparseArray.kt */
public final class LongSparseArrayKt$keyIterator$1 extends LongIterator {
    private int index;
    final /* synthetic */ LongSparseArray receiver$0;

    LongSparseArrayKt$keyIterator$1(LongSparseArray<T> longSparseArray) {
        this.receiver$0 = longSparseArray;
    }

    public final int getIndex() {
        return this.index;
    }

    public final void setIndex(int i) {
        this.index = i;
    }

    public boolean hasNext() {
        return this.index < this.receiver$0.size();
    }

    @Override // kotlin.collections.LongIterator
    public long nextLong() {
        LongSparseArray longSparseArray = this.receiver$0;
        int i = this.index;
        this.index = i + 1;
        return longSparseArray.keyAt(i);
    }
}
