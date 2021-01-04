package com.liber8tech.tago.android.drawable;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import com.liber8tech.tago.R;
import com.liber8tech.tago.android.TagoApplication;
import com.liber8tech.tago.model.Arc;
import com.liber8tech.tago.util.extension.AndroidExtensionsKt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.anko.DimensionsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B'\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\bH\u0016J\b\u0010\u0012\u001a\u00020\bH\u0016J\b\u0010\u0013\u001a\u00020\bH\u0016J\u0010\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\bH\u0016J\u0012\u0010\u0016\u001a\u00020\u000e2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u000bX\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/liber8tech/tago/android/drawable/DevicePreview;", "Landroid/graphics/drawable/Drawable;", "arc", "Lcom/liber8tech/tago/model/Arc;", "rect", "Landroid/graphics/RectF;", "innerRect", "borderColor", "", "(Lcom/liber8tech/tago/model/Arc;Landroid/graphics/RectF;Landroid/graphics/RectF;I)V", "paint", "Landroid/graphics/Paint;", "paintBorder", "draw", "", "canvas", "Landroid/graphics/Canvas;", "getIntrinsicHeight", "getIntrinsicWidth", "getOpacity", "setAlpha", "alpha", "setColorFilter", "colorFilter", "Landroid/graphics/ColorFilter;", "Companion", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: DevicePreview.kt */
public final class DevicePreview extends Drawable {
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final DevicePreview black = Companion.from(TagoApplication.Companion.getInstance(), Arc.Black);
    @NotNull
    private static final DevicePreview gold = Companion.from(TagoApplication.Companion.getInstance(), Arc.Gold);
    @NotNull
    private static final DevicePreview silver = Companion.from(TagoApplication.Companion.getInstance(), Arc.Silver);
    @NotNull
    private static final DevicePreview unknown = Companion.from(TagoApplication.Companion.getInstance(), Arc.Unknown);
    private final Arc arc;
    private final RectF innerRect;
    private final Paint paint;
    private final Paint paintBorder;
    private final RectF rect;

    public int getOpacity() {
        return -1;
    }

    public void setAlpha(int i) {
    }

    public void setColorFilter(@Nullable ColorFilter colorFilter) {
    }

    public /* synthetic */ DevicePreview(@NotNull Arc arc2, @NotNull RectF rectF, @NotNull RectF rectF2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(arc2, rectF, rectF2, i);
    }

    private DevicePreview(Arc arc2, RectF rectF, RectF rectF2, int i) {
        this.arc = arc2;
        this.rect = rectF;
        this.innerRect = rectF2;
        this.paint = new Paint(1);
        this.paintBorder = new Paint(1);
        this.paint.setColor(this.arc.getColor());
        this.paintBorder.setColor(i);
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0006R\u0011\u0010\t\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u0006R\u0011\u0010\u000b\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u0006¨\u0006\u0012"}, d2 = {"Lcom/liber8tech/tago/android/drawable/DevicePreview$Companion;", "", "()V", "black", "Lcom/liber8tech/tago/android/drawable/DevicePreview;", "getBlack", "()Lcom/liber8tech/tago/android/drawable/DevicePreview;", "gold", "getGold", "silver", "getSilver", "unknown", "getUnknown", "from", "ctx", "Landroid/content/Context;", "arc", "Lcom/liber8tech/tago/model/Arc;", "app_release"}, k = 1, mv = {1, 1, 13})
    /* compiled from: DevicePreview.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private final DevicePreview from(Context context, Arc arc) {
            RectF rectF = new RectF(0.0f, 0.0f, (float) DimensionsKt.dip(context, 15), (float) DimensionsKt.dip(context, 35));
            RectF rectF2 = new RectF(rectF);
            rectF2.inset((float) DimensionsKt.dip(context, 2), (float) DimensionsKt.dip(context, 2));
            return new DevicePreview(arc, rectF, rectF2, AndroidExtensionsKt.getColorCompat(context, R.color.gray), null);
        }

        @NotNull
        public final DevicePreview getGold() {
            return DevicePreview.gold;
        }

        @NotNull
        public final DevicePreview getSilver() {
            return DevicePreview.silver;
        }

        @NotNull
        public final DevicePreview getBlack() {
            return DevicePreview.black;
        }

        @NotNull
        public final DevicePreview getUnknown() {
            return DevicePreview.unknown;
        }
    }

    public int getIntrinsicWidth() {
        return (int) this.rect.width();
    }

    public int getIntrinsicHeight() {
        return (int) this.rect.height();
    }

    public void draw(@NotNull Canvas canvas) {
        Intrinsics.checkParameterIsNotNull(canvas, "canvas");
        if (this.arc == Arc.Unknown) {
            canvas.drawRoundRect(this.rect, 50.0f, 50.0f, this.paintBorder);
            canvas.drawRoundRect(this.innerRect, 50.0f, 50.0f, this.paint);
            return;
        }
        canvas.drawRoundRect(this.rect, 50.0f, 50.0f, this.paint);
    }
}
