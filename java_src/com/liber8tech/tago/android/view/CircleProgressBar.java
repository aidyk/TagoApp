package com.liber8tech.tago.android.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.support.v4.app.NotificationCompat;
import android.util.AttributeSet;
import android.view.View;
import java.util.Arrays;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u001b\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u0017\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007B\u001f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\b\u00102\u001a\u000203H\u0002J\u0010\u00104\u001a\u0002032\u0006\u00105\u001a\u000206H\u0014R\u000e\u0010\u000b\u001a\u00020\fX.¢\u0006\u0002\n\u0000R$\u0010\u000e\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\t@FX\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\fX.¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0015X.¢\u0006\u0002\n\u0000R$\u0010\u0018\u001a\u00020\u00172\u0006\u0010\r\u001a\u00020\u0017@FX\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR$\u0010\u001d\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\t@FX\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u0010\"\u0004\b\u001f\u0010\u0012R\u000e\u0010 \u001a\u00020\fX.¢\u0006\u0002\n\u0000R$\u0010!\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\t@FX\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0010\"\u0004\b#\u0010\u0012R$\u0010$\u001a\u00020\u00172\u0006\u0010\r\u001a\u00020\u0017@FX\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u001a\"\u0004\b&\u0010\u001cR$\u0010'\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\t@FX\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u0010\"\u0004\b)\u0010\u0012R\u000e\u0010*\u001a\u00020\fX.¢\u0006\u0002\n\u0000R$\u0010+\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\t@FX\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010\u0010\"\u0004\b-\u0010\u0012R\u000e\u0010.\u001a\u00020\fX.¢\u0006\u0002\n\u0000R$\u0010/\u001a\u00020\u00172\u0006\u0010\r\u001a\u00020\u0017@FX\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b0\u0010\u001a\"\u0004\b1\u0010\u001c¨\u00067"}, d2 = {"Lcom/liber8tech/tago/android/view/CircleProgressBar;", "Landroid/view/View;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "backPaint", "Landroid/graphics/Paint;", "value", "backgroundCircleColor", "getBackgroundCircleColor", "()I", "setBackgroundCircleColor", "(I)V", "circlePaint", "oval", "Landroid/graphics/RectF;", "ovalProgress", "", NotificationCompat.CATEGORY_PROGRESS, "getProgress", "()F", "setProgress", "(F)V", "progressColor", "getProgressColor", "setProgressColor", "progressPaint", "progressSize", "getProgressSize", "setProgressSize", "secondProgress", "getSecondProgress", "setSecondProgress", "secondProgressColor", "getSecondProgressColor", "setSecondProgressColor", "secondProgressPaint", "textColor", "getTextColor", "setTextColor", "textPaint", "textSizePx", "getTextSizePx", "setTextSizePx", "init", "", "onDraw", "canvas", "Landroid/graphics/Canvas;", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: CircleProgressBar.kt */
public final class CircleProgressBar extends View {
    private HashMap _$_findViewCache;
    private Paint backPaint;
    private int backgroundCircleColor = -16777216;
    private Paint circlePaint;
    private final RectF oval = new RectF();
    private RectF ovalProgress;
    private float progress;
    private int progressColor = -1;
    private Paint progressPaint;
    private int progressSize;
    private float secondProgress;
    private int secondProgressColor = -16776961;
    private Paint secondProgressPaint;
    private int textColor = -1;
    private Paint textPaint;
    private float textSizePx = 20.0f;

    public void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View findViewById = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), findViewById);
        return findViewById;
    }

    public final float getProgress() {
        return this.progress;
    }

    public final void setProgress(float f) {
        this.progress = f;
        invalidate();
    }

    public final float getSecondProgress() {
        return this.secondProgress;
    }

    public final void setSecondProgress(float f) {
        this.secondProgress = f;
        invalidate();
    }

    public final int getProgressSize() {
        return this.progressSize;
    }

    public final void setProgressSize(int i) {
        this.progressSize = i;
        Paint paint = this.progressPaint;
        if (paint == null) {
            Intrinsics.throwUninitializedPropertyAccessException("progressPaint");
        }
        paint.setStrokeWidth((float) i);
    }

    public final float getTextSizePx() {
        return this.textSizePx;
    }

    public final void setTextSizePx(float f) {
        this.textSizePx = f;
        Paint paint = this.textPaint;
        if (paint == null) {
            Intrinsics.throwUninitializedPropertyAccessException("textPaint");
        }
        paint.setTextSize(f);
    }

    public final int getTextColor() {
        return this.textColor;
    }

    public final void setTextColor(int i) {
        this.textColor = i;
        Paint paint = this.textPaint;
        if (paint == null) {
            Intrinsics.throwUninitializedPropertyAccessException("textPaint");
        }
        paint.setColor(i);
    }

    public final int getBackgroundCircleColor() {
        return this.backgroundCircleColor;
    }

    public final void setBackgroundCircleColor(int i) {
        this.backgroundCircleColor = i;
        Paint paint = this.backPaint;
        if (paint == null) {
            Intrinsics.throwUninitializedPropertyAccessException("backPaint");
        }
        paint.setColor(i);
    }

    public final int getProgressColor() {
        return this.progressColor;
    }

    public final void setProgressColor(int i) {
        this.progressColor = i;
        Paint paint = this.progressPaint;
        if (paint == null) {
            Intrinsics.throwUninitializedPropertyAccessException("progressPaint");
        }
        paint.setColor(i);
        Paint paint2 = this.circlePaint;
        if (paint2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("circlePaint");
        }
        paint2.setColor(i);
    }

    public final int getSecondProgressColor() {
        return this.secondProgressColor;
    }

    public final void setSecondProgressColor(int i) {
        this.secondProgressColor = i;
        Paint paint = this.secondProgressPaint;
        if (paint == null) {
            Intrinsics.throwUninitializedPropertyAccessException("secondProgressPaint");
        }
        paint.setColor(i);
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public CircleProgressBar(@NotNull Context context) {
        super(context);
        Intrinsics.checkParameterIsNotNull(context, "context");
        init();
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public CircleProgressBar(@NotNull Context context, @NotNull AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributeSet, "attrs");
        init();
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public CircleProgressBar(@NotNull Context context, @NotNull AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributeSet, "attrs");
        init();
    }

    private final void init() {
        this.progressPaint = new Paint(1);
        Paint paint = this.progressPaint;
        if (paint == null) {
            Intrinsics.throwUninitializedPropertyAccessException("progressPaint");
        }
        paint.setColor(this.progressColor);
        Paint paint2 = this.progressPaint;
        if (paint2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("progressPaint");
        }
        paint2.setStyle(Paint.Style.STROKE);
        Paint paint3 = this.progressPaint;
        if (paint3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("progressPaint");
        }
        paint3.setStrokeWidth((float) this.progressSize);
        this.secondProgressPaint = new Paint(1);
        Paint paint4 = this.secondProgressPaint;
        if (paint4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("secondProgressPaint");
        }
        paint4.setColor(this.secondProgressColor);
        Paint paint5 = this.secondProgressPaint;
        if (paint5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("secondProgressPaint");
        }
        paint5.setStyle(Paint.Style.FILL_AND_STROKE);
        this.backPaint = new Paint(1);
        Paint paint6 = this.backPaint;
        if (paint6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("backPaint");
        }
        paint6.setColor(this.backgroundCircleColor);
        Paint paint7 = this.backPaint;
        if (paint7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("backPaint");
        }
        paint7.setStyle(Paint.Style.FILL_AND_STROKE);
        this.circlePaint = new Paint(1);
        Paint paint8 = this.circlePaint;
        if (paint8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("circlePaint");
        }
        paint8.setColor(this.progressColor);
        Paint paint9 = this.circlePaint;
        if (paint9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("circlePaint");
        }
        paint9.setStyle(Paint.Style.FILL_AND_STROKE);
        this.textPaint = new Paint(1);
        Paint paint10 = this.textPaint;
        if (paint10 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("textPaint");
        }
        paint10.setColor(this.textColor);
        Paint paint11 = this.textPaint;
        if (paint11 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("textPaint");
        }
        paint11.setTextSize(this.textSizePx);
        Paint paint12 = this.textPaint;
        if (paint12 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("textPaint");
        }
        paint12.setTextAlign(Paint.Align.CENTER);
        measure(1073741824, 1073741824);
        float f = ((float) this.progressSize) / 2.0f;
        this.ovalProgress = new RectF(f, f, ((float) getMeasuredWidth()) - f, ((float) getMeasuredHeight()) - f);
    }

    /* access modifiers changed from: protected */
    public void onDraw(@NotNull Canvas canvas) {
        Intrinsics.checkParameterIsNotNull(canvas, "canvas");
        float f = ((float) this.progressSize) / 2.0f;
        RectF rectF = this.ovalProgress;
        if (rectF == null) {
            Intrinsics.throwUninitializedPropertyAccessException("ovalProgress");
        }
        rectF.left = f;
        RectF rectF2 = this.ovalProgress;
        if (rectF2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("ovalProgress");
        }
        rectF2.top = f;
        RectF rectF3 = this.ovalProgress;
        if (rectF3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("ovalProgress");
        }
        rectF3.right = ((float) getWidth()) - f;
        RectF rectF4 = this.ovalProgress;
        if (rectF4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("ovalProgress");
        }
        rectF4.bottom = ((float) getHeight()) - f;
        float width = ((float) getWidth()) / 2.0f;
        float height = ((float) getHeight()) / 2.0f;
        float height2 = (((float) getHeight()) / 2.0f) - ((float) this.progressSize);
        Paint paint = this.backPaint;
        if (paint == null) {
            Intrinsics.throwUninitializedPropertyAccessException("backPaint");
        }
        canvas.drawCircle(width, height, height2, paint);
        float f2 = (float) 360;
        float f3 = this.progress * f2;
        float f4 = this.secondProgress * f2;
        double width2 = (double) (((float) getWidth()) / 2.0f);
        double width3 = (double) ((((float) getWidth()) / 2.0f) - f);
        double d = (double) f3;
        double d2 = (double) 90;
        Double.isNaN(d);
        Double.isNaN(d2);
        double d3 = d - d2;
        double cos = Math.cos(Math.toRadians(d3));
        Double.isNaN(width3);
        Double.isNaN(width2);
        double d4 = width2 + (width3 * cos);
        double height3 = (double) (((float) getHeight()) / 2.0f);
        double height4 = (double) ((((float) getHeight()) / 2.0f) - f);
        double sin = Math.sin(Math.toRadians(d3));
        Double.isNaN(height4);
        Double.isNaN(height3);
        double d5 = height3 + (height4 * sin);
        this.oval.set(((float) this.progressSize) + 0.0f, ((float) this.progressSize) + 0.0f, ((float) getHeight()) - ((float) this.progressSize), ((float) getWidth()) - ((float) this.progressSize));
        RectF rectF5 = this.oval;
        float f5 = (float) 2;
        float f6 = 90.0f - (f4 / f5);
        Paint paint2 = this.secondProgressPaint;
        if (paint2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("secondProgressPaint");
        }
        canvas.drawArc(rectF5, f6, f4, false, paint2);
        RectF rectF6 = this.ovalProgress;
        if (rectF6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("ovalProgress");
        }
        Paint paint3 = this.progressPaint;
        if (paint3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("progressPaint");
        }
        canvas.drawArc(rectF6, -90.0f, f3, false, paint3);
        float f7 = (float) d4;
        float f8 = (float) d5;
        Paint paint4 = this.circlePaint;
        if (paint4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("circlePaint");
        }
        canvas.drawCircle(f7, f8, f, paint4);
        float width4 = ((float) getWidth()) / 2.0f;
        Paint paint5 = this.circlePaint;
        if (paint5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("circlePaint");
        }
        canvas.drawCircle(width4, f, f, paint5);
        StringBuilder sb = new StringBuilder();
        Object[] objArr = {Float.valueOf(this.progress * ((float) 100))};
        String format = String.format("%.0f", Arrays.copyOf(objArr, objArr.length));
        Intrinsics.checkExpressionValueIsNotNull(format, "java.lang.String.format(this, *args)");
        sb.append(format);
        sb.append("%");
        String sb2 = sb.toString();
        float width5 = ((float) getWidth()) / 2.0f;
        float height5 = (float) getHeight();
        Paint paint6 = this.textPaint;
        if (paint6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("textPaint");
        }
        float ascent = (height5 - paint6.ascent()) / f5;
        Paint paint7 = this.textPaint;
        if (paint7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("textPaint");
        }
        canvas.drawText(sb2, width5, ascent, paint7);
    }
}
