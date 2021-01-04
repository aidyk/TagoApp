package com.google.zxing.common;

import com.google.zxing.Binarizer;
import com.google.zxing.LuminanceSource;
import com.google.zxing.NotFoundException;
import java.lang.reflect.Array;
import kotlin.UByte;

public final class HybridBinarizer extends GlobalHistogramBinarizer {
    private static final int BLOCK_SIZE = 8;
    private static final int BLOCK_SIZE_MASK = 7;
    private static final int BLOCK_SIZE_POWER = 3;
    private static final int MINIMUM_DIMENSION = 40;
    private static final int MIN_DYNAMIC_RANGE = 24;
    private BitMatrix matrix;

    private static int cap(int i, int i2, int i3) {
        return i < i2 ? i2 : i > i3 ? i3 : i;
    }

    public HybridBinarizer(LuminanceSource luminanceSource) {
        super(luminanceSource);
    }

    @Override // com.google.zxing.common.GlobalHistogramBinarizer, com.google.zxing.Binarizer
    public BitMatrix getBlackMatrix() throws NotFoundException {
        if (this.matrix != null) {
            return this.matrix;
        }
        LuminanceSource luminanceSource = getLuminanceSource();
        int width = luminanceSource.getWidth();
        int height = luminanceSource.getHeight();
        if (width < 40 || height < 40) {
            this.matrix = super.getBlackMatrix();
        } else {
            byte[] matrix2 = luminanceSource.getMatrix();
            int i = width >> 3;
            if ((width & 7) != 0) {
                i++;
            }
            int i2 = height >> 3;
            if ((height & 7) != 0) {
                i2++;
            }
            int[][] calculateBlackPoints = calculateBlackPoints(matrix2, i, i2, width, height);
            BitMatrix bitMatrix = new BitMatrix(width, height);
            calculateThresholdForBlock(matrix2, i, i2, width, height, calculateBlackPoints, bitMatrix);
            this.matrix = bitMatrix;
        }
        return this.matrix;
    }

    @Override // com.google.zxing.common.GlobalHistogramBinarizer, com.google.zxing.Binarizer
    public Binarizer createBinarizer(LuminanceSource luminanceSource) {
        return new HybridBinarizer(luminanceSource);
    }

    private static void calculateThresholdForBlock(byte[] bArr, int i, int i2, int i3, int i4, int[][] iArr, BitMatrix bitMatrix) {
        for (int i5 = 0; i5 < i2; i5++) {
            int i6 = i5 << 3;
            int i7 = i4 - 8;
            if (i6 > i7) {
                i6 = i7;
            }
            for (int i8 = 0; i8 < i; i8++) {
                int i9 = i8 << 3;
                int i10 = i3 - 8;
                if (i9 <= i10) {
                    i10 = i9;
                }
                int cap = cap(i8, 2, i - 3);
                int cap2 = cap(i5, 2, i2 - 3);
                int i11 = 0;
                for (int i12 = -2; i12 <= 2; i12++) {
                    int[] iArr2 = iArr[cap2 + i12];
                    i11 += iArr2[cap - 2] + iArr2[cap - 1] + iArr2[cap] + iArr2[cap + 1] + iArr2[cap + 2];
                }
                thresholdBlock(bArr, i10, i6, i11 / 25, i3, bitMatrix);
            }
        }
    }

    private static void thresholdBlock(byte[] bArr, int i, int i2, int i3, int i4, BitMatrix bitMatrix) {
        int i5 = (i2 * i4) + i;
        int i6 = 0;
        while (i6 < 8) {
            for (int i7 = 0; i7 < 8; i7++) {
                if ((bArr[i5 + i7] & UByte.MAX_VALUE) <= i3) {
                    bitMatrix.set(i + i7, i2 + i6);
                }
            }
            i6++;
            i5 += i4;
        }
    }

    private static int[][] calculateBlackPoints(byte[] bArr, int i, int i2, int i3, int i4) {
        int[][] iArr = (int[][]) Array.newInstance(int.class, i2, i);
        for (int i5 = 0; i5 < i2; i5++) {
            int i6 = i5 << 3;
            int i7 = 8;
            int i8 = i4 - 8;
            if (i6 > i8) {
                i6 = i8;
            }
            int i9 = 0;
            while (i9 < i) {
                int i10 = i9 << 3;
                int i11 = i3 - 8;
                if (i10 > i11) {
                    i10 = i11;
                }
                int i12 = (i6 * i3) + i10;
                int i13 = 0;
                int i14 = 0;
                int i15 = 0;
                int i16 = 255;
                while (i13 < i7) {
                    int i17 = i15;
                    int i18 = i14;
                    int i19 = 0;
                    while (i19 < i7) {
                        int i20 = bArr[i12 + i19] & UByte.MAX_VALUE;
                        i18 += i20;
                        if (i20 < i16) {
                            i16 = i20;
                        }
                        if (i20 > i17) {
                            i17 = i20;
                        }
                        i19++;
                        i7 = 8;
                    }
                    if (i17 - i16 <= 24) {
                        i14 = i18;
                        i13++;
                        i12 += i3;
                        i15 = i17;
                        i7 = 8;
                    }
                    while (true) {
                        i13++;
                        i12 += i3;
                        if (i13 >= 8) {
                            break;
                        }
                        int i21 = 0;
                        for (int i22 = 8; i21 < i22; i22 = 8) {
                            i18 += bArr[i12 + i21] & UByte.MAX_VALUE;
                            i21++;
                        }
                    }
                    i14 = i18;
                    i13++;
                    i12 += i3;
                    i15 = i17;
                    i7 = 8;
                }
                int i23 = i14 >> 6;
                if (i15 - i16 <= 24) {
                    i23 = i16 / 2;
                    if (i5 > 0 && i9 > 0) {
                        int i24 = i5 - 1;
                        int i25 = i9 - 1;
                        int i26 = ((iArr[i24][i9] + (iArr[i5][i25] * 2)) + iArr[i24][i25]) / 4;
                        if (i16 < i26) {
                            i23 = i26;
                        }
                    }
                }
                iArr[i5][i9] = i23;
                i9++;
                i7 = 8;
            }
        }
        return iArr;
    }
}
