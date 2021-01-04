package defpackage;

import android.graphics.Bitmap;
import android.support.v4.view.MotionEventCompat;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t¨\u0006\n"}, d2 = {"LFastBlur;", "", "()V", "doBlur", "Landroid/graphics/Bitmap;", "sentBitmap", "radius", "", "canReuseInBitmap", "", "app_release"}, k = 1, mv = {1, 1, 13})
/* renamed from: FastBlur  reason: default package */
/* compiled from: FastBlur.kt */
public final class FastBlur {
    public static final FastBlur INSTANCE = new FastBlur();

    private FastBlur() {
    }

    @Nullable
    public final Bitmap doBlur(@NotNull Bitmap bitmap, int i, boolean z) {
        int[] iArr;
        Bitmap bitmap2 = bitmap;
        Intrinsics.checkParameterIsNotNull(bitmap2, "sentBitmap");
        if (!z) {
            bitmap2 = bitmap2.copy(bitmap.getConfig(), true);
            Intrinsics.checkExpressionValueIsNotNull(bitmap2, "sentBitmap.copy(sentBitmap.config, true)");
        }
        if (i < 1) {
            return null;
        }
        int width = bitmap2.getWidth();
        int height = bitmap2.getHeight();
        int i2 = width * height;
        int[] iArr2 = new int[i2];
        bitmap2.getPixels(iArr2, 0, width, 0, 0, width, height);
        int i3 = width - 1;
        int i4 = height - 1;
        int i5 = i + i + 1;
        int[] iArr3 = new int[i2];
        int[] iArr4 = new int[i2];
        int[] iArr5 = new int[i2];
        int[] iArr6 = new int[Math.max(width, height)];
        int i6 = (i5 + 1) >> 1;
        int i7 = i6 * i6;
        int i8 = i7 * 256;
        int[] iArr7 = new int[i8];
        for (int i9 = 0; i9 < i8; i9++) {
            iArr7[i9] = i9 / i7;
        }
        int[][] iArr8 = new int[i5][];
        int i10 = 0;
        for (int length = iArr8.length; i10 < length; length = length) {
            iArr8[i10] = new int[3];
            i10++;
        }
        int[][] iArr9 = iArr8;
        int i11 = i + 1;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        while (i12 < height) {
            int i15 = -i;
            int i16 = 0;
            int i17 = 0;
            int i18 = 0;
            int i19 = 0;
            int i20 = 0;
            int i21 = 0;
            int i22 = 0;
            int i23 = 0;
            int i24 = 0;
            while (i15 <= i) {
                int i25 = iArr2[i13 + Math.min(i3, Math.max(i15, 0))];
                int[] iArr10 = iArr9[i15 + i];
                iArr10[0] = (i25 & 16711680) >> 16;
                iArr10[1] = (i25 & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
                iArr10[2] = i25 & 255;
                int abs = i11 - Math.abs(i15);
                i16 += iArr10[0] * abs;
                i17 += iArr10[1] * abs;
                i18 += iArr10[2] * abs;
                if (i15 > 0) {
                    i19 += iArr10[0];
                    i20 += iArr10[1];
                    i21 += iArr10[2];
                } else {
                    i22 += iArr10[0];
                    i23 += iArr10[1];
                    i24 += iArr10[2];
                }
                i15++;
                height = height;
                i4 = i4;
            }
            int i26 = i;
            int i27 = 0;
            while (i27 < width) {
                iArr3[i13] = iArr7[i16];
                iArr4[i13] = iArr7[i17];
                iArr5[i13] = iArr7[i18];
                int i28 = i16 - i22;
                int i29 = i17 - i23;
                int i30 = i18 - i24;
                int[] iArr11 = iArr9[((i26 - i) + i5) % i5];
                int i31 = i22 - iArr11[0];
                int i32 = i23 - iArr11[1];
                int i33 = i24 - iArr11[2];
                if (i12 == 0) {
                    iArr = iArr7;
                    iArr6[i27] = Math.min(i27 + i + 1, i3);
                } else {
                    iArr = iArr7;
                }
                int i34 = iArr2[i14 + iArr6[i27]];
                iArr11[0] = (i34 & 16711680) >> 16;
                iArr11[1] = (i34 & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
                iArr11[2] = i34 & 255;
                int i35 = i19 + iArr11[0];
                int i36 = i20 + iArr11[1];
                int i37 = i21 + iArr11[2];
                i16 = i28 + i35;
                i17 = i29 + i36;
                i18 = i30 + i37;
                i26 = (i26 + 1) % i5;
                int[] iArr12 = iArr9[i26 % i5];
                i22 = i31 + iArr12[0];
                i23 = i32 + iArr12[1];
                i24 = i33 + iArr12[2];
                i19 = i35 - iArr12[0];
                i20 = i36 - iArr12[1];
                i21 = i37 - iArr12[2];
                i13++;
                i27++;
                iArr7 = iArr;
            }
            i14 += width;
            i12++;
            bitmap2 = bitmap2;
            height = height;
            i4 = i4;
        }
        int i38 = i4;
        int i39 = height;
        int i40 = 0;
        while (i40 < width) {
            int i41 = -i;
            int i42 = i41 * width;
            int i43 = 0;
            int i44 = 0;
            int i45 = 0;
            int i46 = 0;
            int i47 = 0;
            int i48 = 0;
            int i49 = 0;
            int i50 = 0;
            int i51 = 0;
            while (i41 <= i) {
                int max = Math.max(0, i42) + i40;
                int[] iArr13 = iArr9[i41 + i];
                iArr13[0] = iArr3[max];
                iArr13[1] = iArr4[max];
                iArr13[2] = iArr5[max];
                int abs2 = i11 - Math.abs(i41);
                i43 += iArr3[max] * abs2;
                i44 += iArr4[max] * abs2;
                i45 += iArr5[max] * abs2;
                if (i41 > 0) {
                    i46 += iArr13[0];
                    i47 += iArr13[1];
                    i48 += iArr13[2];
                } else {
                    i49 += iArr13[0];
                    i50 += iArr13[1];
                    i51 += iArr13[2];
                }
                if (i41 < i38) {
                    i42 += width;
                }
                i41++;
                i38 = i38;
                iArr6 = iArr6;
            }
            int i52 = i40;
            int i53 = i47;
            int i54 = i48;
            int i55 = 0;
            int i56 = i;
            int i57 = i46;
            int i58 = i45;
            int i59 = i44;
            int i60 = i43;
            while (i55 < i39) {
                iArr2[i52] = (((int) 4278190080L) & iArr2[i52]) | (iArr7[i60] << 16) | (iArr7[i59] << 8) | iArr7[i58];
                int i61 = i60 - i49;
                int i62 = i59 - i50;
                int i63 = i58 - i51;
                int[] iArr14 = iArr9[((i56 - i) + i5) % i5];
                int i64 = i49 - iArr14[0];
                int i65 = i50 - iArr14[1];
                int i66 = i51 - iArr14[2];
                if (i40 == 0) {
                    iArr6[i55] = Math.min(i55 + i11, i38) * width;
                }
                int i67 = iArr6[i55] + i40;
                iArr14[0] = iArr3[i67];
                iArr14[1] = iArr4[i67];
                iArr14[2] = iArr5[i67];
                int i68 = i57 + iArr14[0];
                int i69 = i53 + iArr14[1];
                int i70 = i54 + iArr14[2];
                i60 = i61 + i68;
                i59 = i62 + i69;
                i58 = i63 + i70;
                i56 = (i56 + 1) % i5;
                int[] iArr15 = iArr9[i56];
                i49 = i64 + iArr15[0];
                i50 = i65 + iArr15[1];
                i51 = i66 + iArr15[2];
                i57 = i68 - iArr15[0];
                i53 = i69 - iArr15[1];
                i54 = i70 - iArr15[2];
                i52 += width;
                i55++;
                iArr4 = iArr4;
                iArr5 = iArr5;
            }
            i40++;
            i38 = i38;
            i39 = i39;
            iArr6 = iArr6;
            iArr5 = iArr5;
        }
        bitmap2.setPixels(iArr2, 0, width, 0, 0, width, i39);
        return bitmap2;
    }
}
