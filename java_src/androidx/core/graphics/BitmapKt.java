package androidx.core.graphics;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorSpace;
import android.support.annotation.ColorInt;
import android.support.annotation.RequiresApi;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 2}, d1 = {"\u00008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u001a#\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006H\b\u001a7\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\nH\b\u001a&\u0010\u000b\u001a\u00020\u0001*\u00020\u00012\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010H\b\u001a\u001d\u0010\u0011\u001a\u00020\u0003*\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0003H\n\u001a'\u0010\u0014\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0015\u001a\u00020\bH\b\u001a'\u0010\u0016\u001a\u00020\u000f*\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00032\b\b\u0001\u0010\u0017\u001a\u00020\u0003H\n¨\u0006\u0018"}, d2 = {"createBitmap", "Landroid/graphics/Bitmap;", SettingsJsonConstants.ICON_WIDTH_KEY, "", SettingsJsonConstants.ICON_HEIGHT_KEY, "config", "Landroid/graphics/Bitmap$Config;", "hasAlpha", "", "colorSpace", "Landroid/graphics/ColorSpace;", "applyCanvas", "block", "Lkotlin/Function1;", "Landroid/graphics/Canvas;", "", "Lkotlin/ExtensionFunctionType;", "get", "x", "y", "scale", "filter", "set", TtmlNode.ATTR_TTS_COLOR, "core-ktx_release"}, k = 2, mv = {1, 1, 9})
/* compiled from: Bitmap.kt */
public final class BitmapKt {
    @NotNull
    public static final Bitmap applyCanvas(@NotNull Bitmap bitmap, @NotNull Function1<? super Canvas, Unit> function1) {
        function1.invoke(new Canvas(bitmap));
        return bitmap;
    }

    public static final int get(@NotNull Bitmap bitmap, int i, int i2) {
        return bitmap.getPixel(i, i2);
    }

    public static final void set(@NotNull Bitmap bitmap, int i, int i2, @ColorInt int i3) {
        bitmap.setPixel(i, i2, i3);
    }

    @NotNull
    public static final Bitmap scale(@NotNull Bitmap bitmap, int i, int i2, boolean z) {
        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, i, i2, z);
        Intrinsics.checkExpressionValueIsNotNull(createScaledBitmap, "Bitmap.createScaledBitma…s, width, height, filter)");
        return createScaledBitmap;
    }

    @NotNull
    public static /* bridge */ /* synthetic */ Bitmap createBitmap$default(int i, int i2, Bitmap.Config config, int i3, Object obj) {
        if ((i3 & 4) != 0) {
            config = Bitmap.Config.ARGB_8888;
        }
        Bitmap createBitmap = Bitmap.createBitmap(i, i2, config);
        Intrinsics.checkExpressionValueIsNotNull(createBitmap, "Bitmap.createBitmap(width, height, config)");
        return createBitmap;
    }

    @NotNull
    public static final Bitmap createBitmap(int i, int i2, @NotNull Bitmap.Config config) {
        Bitmap createBitmap = Bitmap.createBitmap(i, i2, config);
        Intrinsics.checkExpressionValueIsNotNull(createBitmap, "Bitmap.createBitmap(width, height, config)");
        return createBitmap;
    }

    @RequiresApi(26)
    @NotNull
    public static /* bridge */ /* synthetic */ Bitmap createBitmap$default(int i, int i2, Bitmap.Config config, boolean z, ColorSpace colorSpace, int i3, Object obj) {
        if ((i3 & 4) != 0) {
            config = Bitmap.Config.ARGB_8888;
        }
        if ((i3 & 8) != 0) {
            z = true;
        }
        if ((i3 & 16) != 0) {
            colorSpace = ColorSpace.get(ColorSpace.Named.SRGB);
            Intrinsics.checkExpressionValueIsNotNull(colorSpace, "ColorSpace.get(ColorSpace.Named.SRGB)");
        }
        Bitmap createBitmap = Bitmap.createBitmap(i, i2, config, z, colorSpace);
        Intrinsics.checkExpressionValueIsNotNull(createBitmap, "Bitmap.createBitmap(widt…ig, hasAlpha, colorSpace)");
        return createBitmap;
    }

    @RequiresApi(26)
    @NotNull
    public static final Bitmap createBitmap(int i, int i2, @NotNull Bitmap.Config config, boolean z, @NotNull ColorSpace colorSpace) {
        Bitmap createBitmap = Bitmap.createBitmap(i, i2, config, z, colorSpace);
        Intrinsics.checkExpressionValueIsNotNull(createBitmap, "Bitmap.createBitmap(widt…ig, hasAlpha, colorSpace)");
        return createBitmap;
    }

    @NotNull
    public static /* bridge */ /* synthetic */ Bitmap scale$default(Bitmap bitmap, int i, int i2, boolean z, int i3, Object obj) {
        if ((i3 & 4) != 0) {
            z = true;
        }
        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, i, i2, z);
        Intrinsics.checkExpressionValueIsNotNull(createScaledBitmap, "Bitmap.createScaledBitma…s, width, height, filter)");
        return createScaledBitmap;
    }
}
