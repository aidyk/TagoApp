package androidx.core.graphics;

import android.graphics.Color;
import android.graphics.ColorSpace;
import android.support.annotation.ColorInt;
import android.support.annotation.RequiresApi;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 2}, d1 = {"\u00006\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0002\u001a\r\u0010\u0018\u001a\u00020\u0001*\u00020\u0001H\n\u001a\r\u0010\u0018\u001a\u00020\u0004*\u00020\u0005H\n\u001a\r\u0010\u0018\u001a\u00020\u0004*\u00020\u0019H\n\u001a\r\u0010\u001a\u001a\u00020\u0001*\u00020\u0001H\n\u001a\r\u0010\u001a\u001a\u00020\u0004*\u00020\u0005H\n\u001a\r\u0010\u001a\u001a\u00020\u0004*\u00020\u0019H\n\u001a\r\u0010\u001b\u001a\u00020\u0001*\u00020\u0001H\n\u001a\r\u0010\u001b\u001a\u00020\u0004*\u00020\u0005H\n\u001a\r\u0010\u001b\u001a\u00020\u0004*\u00020\u0019H\n\u001a\r\u0010\u001c\u001a\u00020\u0001*\u00020\u0001H\n\u001a\r\u0010\u001c\u001a\u00020\u0004*\u00020\u0005H\n\u001a\r\u0010\u001c\u001a\u00020\u0004*\u00020\u0019H\n\u001a\u0015\u0010\u001d\u001a\u00020\u0019*\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u0019H\u0002\u001a\r\u0010\u001f\u001a\u00020\u0019*\u00020\u0001H\b\u001a\r\u0010\u001f\u001a\u00020\u0019*\u00020\u0005H\b\u001a\r\u0010 \u001a\u00020\u0001*\u00020\u0005H\b\u001a\r\u0010 \u001a\u00020\u0001*\u00020!H\b\u001a\r\u0010\"\u001a\u00020\u0005*\u00020\u0001H\b\"\u0016\u0010\u0000\u001a\u00020\u0001*\u00020\u00018Æ\u0002¢\u0006\u0006\u001a\u0004\b\u0002\u0010\u0003\"\u0016\u0010\u0000\u001a\u00020\u0004*\u00020\u00058Ç\u0002¢\u0006\u0006\u001a\u0004\b\u0002\u0010\u0006\"\u0016\u0010\u0007\u001a\u00020\u0001*\u00020\u00018Æ\u0002¢\u0006\u0006\u001a\u0004\b\b\u0010\u0003\"\u0016\u0010\u0007\u001a\u00020\u0004*\u00020\u00058Ç\u0002¢\u0006\u0006\u001a\u0004\b\b\u0010\u0006\"\u0016\u0010\t\u001a\u00020\n*\u00020\u00058Ç\u0002¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f\"\u0016\u0010\r\u001a\u00020\u0001*\u00020\u00018Æ\u0002¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u0003\"\u0016\u0010\r\u001a\u00020\u0004*\u00020\u00058Ç\u0002¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u0006\"\u0016\u0010\u000f\u001a\u00020\u0010*\u00020\u00058Ç\u0002¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0011\"\u0016\u0010\u0012\u001a\u00020\u0010*\u00020\u00058Ç\u0002¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0011\"\u0016\u0010\u0013\u001a\u00020\u0004*\u00020\u00018Ç\u0002¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015\"\u0016\u0010\u0013\u001a\u00020\u0004*\u00020\u00058Ç\u0002¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0006\"\u0016\u0010\u0016\u001a\u00020\u0001*\u00020\u00018Æ\u0002¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0003\"\u0016\u0010\u0016\u001a\u00020\u0004*\u00020\u00058Ç\u0002¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0006¨\u0006#"}, d2 = {"alpha", "", "getAlpha", "(I)I", "", "", "(J)F", "blue", "getBlue", "colorSpace", "Landroid/graphics/ColorSpace;", "getColorSpace", "(J)Landroid/graphics/ColorSpace;", "green", "getGreen", "isSrgb", "", "(J)Z", "isWideGamut", "luminance", "getLuminance", "(I)F", "red", "getRed", "component1", "Landroid/graphics/Color;", "component2", "component3", "component4", "plus", "c", "toColor", "toColorInt", "", "toColorLong", "core-ktx_release"}, k = 2, mv = {1, 1, 9})
/* compiled from: Color.kt */
public final class ColorKt {
    public static final int component1(@ColorInt int i) {
        return (i >> 24) & 255;
    }

    public static final int component2(@ColorInt int i) {
        return (i >> 16) & 255;
    }

    public static final int component3(@ColorInt int i) {
        return (i >> 8) & 255;
    }

    public static final int component4(@ColorInt int i) {
        return i & 255;
    }

    public static final int getAlpha(@ColorInt int i) {
        return (i >> 24) & 255;
    }

    public static final int getBlue(@ColorInt int i) {
        return i & 255;
    }

    public static final int getGreen(@ColorInt int i) {
        return (i >> 8) & 255;
    }

    public static final int getRed(@ColorInt int i) {
        return (i >> 16) & 255;
    }

    @RequiresApi(26)
    public static final float component1(@NotNull Color color) {
        return color.getComponent(0);
    }

    @RequiresApi(26)
    public static final float component2(@NotNull Color color) {
        return color.getComponent(1);
    }

    @RequiresApi(26)
    public static final float component3(@NotNull Color color) {
        return color.getComponent(2);
    }

    @RequiresApi(26)
    public static final float component4(@NotNull Color color) {
        return color.getComponent(3);
    }

    @RequiresApi(26)
    @NotNull
    public static final Color plus(@NotNull Color color, @NotNull Color color2) {
        if (!(!Intrinsics.areEqual(color.getModel(), color2.getModel()))) {
            if (!Intrinsics.areEqual(color.getColorSpace(), color2.getColorSpace())) {
                color2 = color2.convert(color.getColorSpace());
            }
            Intrinsics.checkExpressionValueIsNotNull(color2, "s");
            float[] components = color2.getComponents();
            float[] components2 = color.getComponents();
            float alpha = color2.alpha();
            float alpha2 = color.alpha() * (1.0f - alpha);
            int componentCount = color.getComponentCount() - 1;
            components2[componentCount] = alpha + alpha2;
            if (components2[componentCount] > ((float) 0)) {
                alpha /= components2[componentCount];
                alpha2 /= components2[componentCount];
            }
            for (int i = 0; i < componentCount; i++) {
                components2[i] = (components[i] * alpha) + (components2[i] * alpha2);
            }
            Color valueOf = Color.valueOf(components2, color.getColorSpace());
            Intrinsics.checkExpressionValueIsNotNull(valueOf, "Color.valueOf(dst, colorSpace)");
            return valueOf;
        }
        throw new IllegalArgumentException("Color models must match (" + color.getModel() + " vs " + color2.getModel());
    }

    @RequiresApi(26)
    public static final float getLuminance(@ColorInt int i) {
        return Color.luminance(i);
    }

    @RequiresApi(26)
    @NotNull
    public static final Color toColor(@ColorInt int i) {
        Color valueOf = Color.valueOf(i);
        Intrinsics.checkExpressionValueIsNotNull(valueOf, "Color.valueOf(this)");
        return valueOf;
    }

    @RequiresApi(26)
    public static final long toColorLong(@ColorInt int i) {
        return Color.pack(i);
    }

    @RequiresApi(26)
    public static final float component1(long j) {
        return Color.red(j);
    }

    @RequiresApi(26)
    public static final float component2(long j) {
        return Color.green(j);
    }

    @RequiresApi(26)
    public static final float component3(long j) {
        return Color.blue(j);
    }

    @RequiresApi(26)
    public static final float component4(long j) {
        return Color.alpha(j);
    }

    @RequiresApi(26)
    public static final float getAlpha(long j) {
        return Color.alpha(j);
    }

    @RequiresApi(26)
    public static final float getRed(long j) {
        return Color.red(j);
    }

    @RequiresApi(26)
    public static final float getGreen(long j) {
        return Color.green(j);
    }

    @RequiresApi(26)
    public static final float getBlue(long j) {
        return Color.blue(j);
    }

    @RequiresApi(26)
    public static final float getLuminance(long j) {
        return Color.luminance(j);
    }

    @RequiresApi(26)
    @NotNull
    public static final Color toColor(long j) {
        Color valueOf = Color.valueOf(j);
        Intrinsics.checkExpressionValueIsNotNull(valueOf, "Color.valueOf(this)");
        return valueOf;
    }

    @RequiresApi(26)
    @ColorInt
    public static final int toColorInt(long j) {
        return Color.toArgb(j);
    }

    @RequiresApi(26)
    public static final boolean isSrgb(long j) {
        return Color.isSrgb(j);
    }

    @RequiresApi(26)
    public static final boolean isWideGamut(long j) {
        return Color.isWideGamut(j);
    }

    @RequiresApi(26)
    @NotNull
    public static final ColorSpace getColorSpace(long j) {
        ColorSpace colorSpace = Color.colorSpace(j);
        Intrinsics.checkExpressionValueIsNotNull(colorSpace, "Color.colorSpace(this)");
        return colorSpace;
    }

    @ColorInt
    public static final int toColorInt(@NotNull String str) {
        return Color.parseColor(str);
    }
}
