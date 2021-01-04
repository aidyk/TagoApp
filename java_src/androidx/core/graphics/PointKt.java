package androidx.core.graphics;

import android.graphics.Point;
import android.graphics.PointF;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 2}, d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\b\t\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u001a\r\u0010\u0000\u001a\u00020\u0003*\u00020\u0004H\n\u001a\r\u0010\u0005\u001a\u00020\u0001*\u00020\u0002H\n\u001a\r\u0010\u0005\u001a\u00020\u0003*\u00020\u0004H\n\u001a\u0015\u0010\u0006\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\n\u001a\u0015\u0010\u0006\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\b\u001a\u00020\u0001H\n\u001a\u0015\u0010\u0006\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\n\u001a\u0015\u0010\u0006\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\b\u001a\u00020\u0003H\n\u001a\u0015\u0010\t\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\n\u001a\u0015\u0010\t\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\b\u001a\u00020\u0001H\n\u001a\u0015\u0010\t\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\n\u001a\u0015\u0010\t\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\b\u001a\u00020\u0003H\n\u001a\r\u0010\n\u001a\u00020\u0002*\u00020\u0004H\b\u001a\r\u0010\u000b\u001a\u00020\u0004*\u00020\u0002H\b\u001a\r\u0010\f\u001a\u00020\u0002*\u00020\u0002H\n\u001a\r\u0010\f\u001a\u00020\u0004*\u00020\u0004H\n¨\u0006\r"}, d2 = {"component1", "", "Landroid/graphics/Point;", "", "Landroid/graphics/PointF;", "component2", "minus", TtmlNode.TAG_P, "xy", "plus", "toPoint", "toPointF", "unaryMinus", "core-ktx_release"}, k = 2, mv = {1, 1, 9})
/* compiled from: Point.kt */
public final class PointKt {
    public static final int component1(@NotNull Point point) {
        return point.x;
    }

    public static final int component2(@NotNull Point point) {
        return point.y;
    }

    public static final float component1(@NotNull PointF pointF) {
        return pointF.x;
    }

    public static final float component2(@NotNull PointF pointF) {
        return pointF.y;
    }

    @NotNull
    public static final Point plus(@NotNull Point point, @NotNull Point point2) {
        Point point3 = new Point(point.x, point.y);
        point3.offset(point2.x, point2.y);
        return point3;
    }

    @NotNull
    public static final PointF plus(@NotNull PointF pointF, @NotNull PointF pointF2) {
        PointF pointF3 = new PointF(pointF.x, pointF.y);
        pointF3.offset(pointF2.x, pointF2.y);
        return pointF3;
    }

    @NotNull
    public static final Point plus(@NotNull Point point, int i) {
        Point point2 = new Point(point.x, point.y);
        point2.offset(i, i);
        return point2;
    }

    @NotNull
    public static final PointF plus(@NotNull PointF pointF, float f) {
        PointF pointF2 = new PointF(pointF.x, pointF.y);
        pointF2.offset(f, f);
        return pointF2;
    }

    @NotNull
    public static final Point minus(@NotNull Point point, @NotNull Point point2) {
        Point point3 = new Point(point.x, point.y);
        point3.offset(-point2.x, -point2.y);
        return point3;
    }

    @NotNull
    public static final PointF minus(@NotNull PointF pointF, @NotNull PointF pointF2) {
        PointF pointF3 = new PointF(pointF.x, pointF.y);
        pointF3.offset(-pointF2.x, -pointF2.y);
        return pointF3;
    }

    @NotNull
    public static final Point minus(@NotNull Point point, int i) {
        Point point2 = new Point(point.x, point.y);
        int i2 = -i;
        point2.offset(i2, i2);
        return point2;
    }

    @NotNull
    public static final PointF minus(@NotNull PointF pointF, float f) {
        PointF pointF2 = new PointF(pointF.x, pointF.y);
        float f2 = -f;
        pointF2.offset(f2, f2);
        return pointF2;
    }

    @NotNull
    public static final Point unaryMinus(@NotNull Point point) {
        return new Point(-point.x, -point.y);
    }

    @NotNull
    public static final PointF unaryMinus(@NotNull PointF pointF) {
        return new PointF(-pointF.x, -pointF.y);
    }

    @NotNull
    public static final PointF toPointF(@NotNull Point point) {
        return new PointF(point);
    }

    @NotNull
    public static final Point toPoint(@NotNull PointF pointF) {
        return new Point((int) pointF.x, (int) pointF.y);
    }
}
