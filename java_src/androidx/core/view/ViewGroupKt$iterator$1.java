package androidx.core.view;

import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.analytics.ecommerce.ProductAction;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMutableIterator;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 2}, d1 = {"\u0000%\n\u0000\n\u0002\u0010)\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\t\u0010\u0006\u001a\u00020\u0007H\u0002J\t\u0010\b\u001a\u00020\u0002H\u0002J\b\u0010\t\u001a\u00020\nH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"androidx/core/view/ViewGroupKt$iterator$1", "", "Landroid/view/View;", "(Landroid/view/ViewGroup;)V", "index", "", "hasNext", "", "next", ProductAction.ACTION_REMOVE, "", "core-ktx_release"}, k = 1, mv = {1, 1, 9})
/* compiled from: ViewGroup.kt */
public final class ViewGroupKt$iterator$1 implements Iterator<View>, KMutableIterator {
    private int index;
    final /* synthetic */ ViewGroup receiver$0;

    ViewGroupKt$iterator$1(ViewGroup viewGroup) {
        this.receiver$0 = viewGroup;
    }

    public boolean hasNext() {
        return this.index < this.receiver$0.getChildCount();
    }

    @Override // java.util.Iterator
    @NotNull
    public View next() {
        ViewGroup viewGroup = this.receiver$0;
        int i = this.index;
        this.index = i + 1;
        View childAt = viewGroup.getChildAt(i);
        if (childAt != null) {
            return childAt;
        }
        throw new IndexOutOfBoundsException();
    }

    public void remove() {
        this.index--;
        this.receiver$0.removeViewAt(this.index);
    }
}
