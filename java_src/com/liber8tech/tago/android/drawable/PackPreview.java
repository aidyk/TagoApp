package com.liber8tech.tago.android.drawable;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import timber.log.Timber;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\nH\u0016J\b\u0010\u0014\u001a\u00020\nH\u0016J\b\u0010\u0015\u001a\u00020\nH\u0016J\u0010\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\nH\u0016J\u0010\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u001aH\u0016R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\bX\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\nX\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/liber8tech/tago/android/drawable/PackPreview;", "Landroid/graphics/drawable/Drawable;", "original", "Landroid/graphics/Bitmap;", "activity", "Landroid/app/Activity;", "(Landroid/graphics/Bitmap;Landroid/app/Activity;)V", "parts", "", "patternHeight", "", "scaledPatternHeight", "scaledPatternWidth", "scaledRatio", "", "draw", "", "canvas", "Landroid/graphics/Canvas;", "getIntrinsicHeight", "getIntrinsicWidth", "getOpacity", "setAlpha", "alpha", "setColorFilter", "colorFilter", "Landroid/graphics/ColorFilter;", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: PackPreview.kt */
public final class PackPreview extends Drawable {
    private final List<Bitmap> parts = new ArrayList();
    private final int patternHeight;
    private final int scaledPatternHeight;
    private final int scaledPatternWidth;
    private final float scaledRatio;

    public int getOpacity() {
        return -2;
    }

    public void setAlpha(int i) {
    }

    public void setColorFilter(@NotNull ColorFilter colorFilter) {
        Intrinsics.checkParameterIsNotNull(colorFilter, "colorFilter");
    }

    public PackPreview(@NotNull Bitmap bitmap, @NotNull Activity activity) {
        Intrinsics.checkParameterIsNotNull(bitmap, "original");
        Intrinsics.checkParameterIsNotNull(activity, "activity");
        Timber.d("original image height::" + bitmap.getHeight(), new Object[0]);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        WindowManager windowManager = activity.getWindowManager();
        Intrinsics.checkExpressionValueIsNotNull(windowManager, "activity.windowManager");
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        this.scaledRatio = ((float) displayMetrics.widthPixels) / ((float) bitmap.getWidth());
        this.scaledPatternWidth = displayMetrics.widthPixels;
        this.scaledPatternHeight = (int) (((float) 310) * this.scaledRatio);
        int i = 0;
        while (i < bitmap.getHeight() / 310) {
            Bitmap createScaledBitmap = Bitmap.createScaledBitmap(Bitmap.createBitmap(bitmap, 0, i * 310, bitmap.getWidth(), 310), this.scaledPatternWidth, this.scaledPatternHeight, false);
            List<Bitmap> list = this.parts;
            Intrinsics.checkExpressionValueIsNotNull(createScaledBitmap, "scaledBitmap");
            list.add(createScaledBitmap);
            i++;
            Timber.i('p' + i + ": " + this.parts.get(0).getWidth() + " / " + this.parts.get(0).getHeight(), new Object[0]);
        }
        this.patternHeight = this.parts.size() * this.scaledPatternHeight;
    }

    public void draw(@NotNull Canvas canvas) {
        Intrinsics.checkParameterIsNotNull(canvas, "canvas");
        Timber.i("canvas: " + canvas.getWidth() + " x " + canvas.getHeight(), new Object[0]);
        int i = 0;
        for (T t : this.parts) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            canvas.drawBitmap(t, (Rect) null, new Rect(0, i * this.scaledPatternHeight, this.scaledPatternWidth, this.scaledPatternHeight * i2), new Paint(1));
            i = i2;
        }
    }

    public int getIntrinsicWidth() {
        return this.scaledPatternWidth;
    }

    public int getIntrinsicHeight() {
        return this.patternHeight;
    }
}
