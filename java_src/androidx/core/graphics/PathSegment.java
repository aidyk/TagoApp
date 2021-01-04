package androidx.core.graphics;

import android.graphics.PointF;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 2}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0005¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0005HÆ\u0003J1\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\f¨\u0006\u001b"}, d2 = {"Landroidx/core/graphics/PathSegment;", "", TtmlNode.START, "Landroid/graphics/PointF;", "startFraction", "", TtmlNode.END, "endFraction", "(Landroid/graphics/PointF;FLandroid/graphics/PointF;F)V", "getEnd", "()Landroid/graphics/PointF;", "getEndFraction", "()F", "getStart", "getStartFraction", "component1", "component2", "component3", "component4", "copy", "equals", "", FacebookRequestErrorClassification.KEY_OTHER, "hashCode", "", "toString", "", "core-ktx_release"}, k = 1, mv = {1, 1, 9})
/* compiled from: Path.kt */
public final class PathSegment {
    @NotNull
    private final PointF end;
    private final float endFraction;
    @NotNull
    private final PointF start;
    private final float startFraction;

    @NotNull
    public static /* bridge */ /* synthetic */ PathSegment copy$default(PathSegment pathSegment, PointF pointF, float f, PointF pointF2, float f2, int i, Object obj) {
        if ((i & 1) != 0) {
            pointF = pathSegment.start;
        }
        if ((i & 2) != 0) {
            f = pathSegment.startFraction;
        }
        if ((i & 4) != 0) {
            pointF2 = pathSegment.end;
        }
        if ((i & 8) != 0) {
            f2 = pathSegment.endFraction;
        }
        return pathSegment.copy(pointF, f, pointF2, f2);
    }

    @NotNull
    public final PointF component1() {
        return this.start;
    }

    public final float component2() {
        return this.startFraction;
    }

    @NotNull
    public final PointF component3() {
        return this.end;
    }

    public final float component4() {
        return this.endFraction;
    }

    @NotNull
    public final PathSegment copy(@NotNull PointF pointF, float f, @NotNull PointF pointF2, float f2) {
        return new PathSegment(pointF, f, pointF2, f2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PathSegment)) {
            return false;
        }
        PathSegment pathSegment = (PathSegment) obj;
        return Intrinsics.areEqual(this.start, pathSegment.start) && Float.compare(this.startFraction, pathSegment.startFraction) == 0 && Intrinsics.areEqual(this.end, pathSegment.end) && Float.compare(this.endFraction, pathSegment.endFraction) == 0;
    }

    public int hashCode() {
        PointF pointF = this.start;
        int i = 0;
        int hashCode = (((pointF != null ? pointF.hashCode() : 0) * 31) + Float.floatToIntBits(this.startFraction)) * 31;
        PointF pointF2 = this.end;
        if (pointF2 != null) {
            i = pointF2.hashCode();
        }
        return ((hashCode + i) * 31) + Float.floatToIntBits(this.endFraction);
    }

    public String toString() {
        return "PathSegment(start=" + this.start + ", startFraction=" + this.startFraction + ", end=" + this.end + ", endFraction=" + this.endFraction + ")";
    }

    public PathSegment(@NotNull PointF pointF, float f, @NotNull PointF pointF2, float f2) {
        this.start = pointF;
        this.startFraction = f;
        this.end = pointF2;
        this.endFraction = f2;
    }

    @NotNull
    public final PointF getStart() {
        return this.start;
    }

    public final float getStartFraction() {
        return this.startFraction;
    }

    @NotNull
    public final PointF getEnd() {
        return this.end;
    }

    public final float getEndFraction() {
        return this.endFraction;
    }
}
