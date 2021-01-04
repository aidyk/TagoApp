package kotlinx.coroutines.internal;

import com.facebook.share.internal.MessengerShareContentUtility;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0007\b\u0000\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\u0013\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00028\u0000¢\u0006\u0002\u0010\u0010J\u0006\u0010\u0011\u001a\u00020\u000eJ\b\u0010\u0012\u001a\u00020\u000eH\u0002J\r\u0010\u0013\u001a\u0004\u0018\u00018\u0000¢\u0006\u0002\u0010\u0014R\u0018\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0005X\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\bX\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\t\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\b\t\u0010\u000bR\u000e\u0010\f\u001a\u00020\bX\u000e¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lkotlinx/coroutines/internal/ArrayQueue;", "T", "", "()V", MessengerShareContentUtility.ELEMENTS, "", "[Ljava/lang/Object;", TtmlNode.TAG_HEAD, "", "isEmpty", "", "()Z", "tail", "addLast", "", "element", "(Ljava/lang/Object;)V", "clear", "ensureCapacity", "removeFirstOrNull", "()Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 13})
/* compiled from: ArrayQueue.kt */
public final class ArrayQueue<T> {
    private Object[] elements = new Object[16];
    private int head;
    private int tail;

    public final boolean isEmpty() {
        return this.head == this.tail;
    }

    public final void addLast(@NotNull T t) {
        Intrinsics.checkParameterIsNotNull(t, "element");
        this.elements[this.tail] = t;
        this.tail = (this.tail + 1) & (this.elements.length - 1);
        if (this.tail == this.head) {
            ensureCapacity();
        }
    }

    @Nullable
    public final T removeFirstOrNull() {
        if (this.head == this.tail) {
            return null;
        }
        T t = (T) this.elements[this.head];
        this.elements[this.head] = null;
        this.head = (this.head + 1) & (this.elements.length - 1);
        if (t != null) {
            return t;
        }
        throw new TypeCastException("null cannot be cast to non-null type T");
    }

    public final void clear() {
        this.head = 0;
        this.tail = 0;
        this.elements = new Object[this.elements.length];
    }

    private final void ensureCapacity() {
        int length = this.elements.length;
        Object[] objArr = new Object[(length << 1)];
        int length2 = this.elements.length - this.head;
        ArrayCopyKt.arraycopy(this.elements, this.head, objArr, 0, length2);
        ArrayCopyKt.arraycopy(this.elements, 0, objArr, length2, this.head);
        this.elements = objArr;
        this.head = 0;
        this.tail = length;
    }
}
