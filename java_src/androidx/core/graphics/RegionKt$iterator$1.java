package androidx.core.graphics;

import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.RegionIterator;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 2}, d1 = {"\u0000\u001f\n\u0000\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\t\u0010\t\u001a\u00020\u0005H\u0002J\t\u0010\n\u001a\u00020\u0002H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0002X\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"androidx/core/graphics/RegionKt$iterator$1", "", "Landroid/graphics/Rect;", "(Landroid/graphics/Region;)V", "hasMore", "", "iterator", "Landroid/graphics/RegionIterator;", "rect", "hasNext", "next", "core-ktx_release"}, k = 1, mv = {1, 1, 9})
/* compiled from: Region.kt */
public final class RegionKt$iterator$1 implements Iterator<Rect>, KMappedMarker {
    private boolean hasMore = this.iterator.next(this.rect);
    private final RegionIterator iterator = new RegionIterator(this.receiver$0);
    final /* synthetic */ Region receiver$0;
    private final Rect rect = new Rect();

    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    RegionKt$iterator$1(Region region) {
        this.receiver$0 = region;
    }

    public boolean hasNext() {
        return this.hasMore;
    }

    @Override // java.util.Iterator
    @NotNull
    public Rect next() {
        if (this.hasMore) {
            Rect rect2 = new Rect(this.rect);
            this.hasMore = this.iterator.next(this.rect);
            return rect2;
        }
        throw new IndexOutOfBoundsException();
    }
}
