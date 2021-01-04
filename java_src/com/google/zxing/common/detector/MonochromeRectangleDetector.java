package com.google.zxing.common.detector;

import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;

@Deprecated
public final class MonochromeRectangleDetector {
    private static final int MAX_MODULES = 32;
    private final BitMatrix image;

    public MonochromeRectangleDetector(BitMatrix bitMatrix) {
        this.image = bitMatrix;
    }

    public ResultPoint[] detect() throws NotFoundException {
        int height = this.image.getHeight();
        int width = this.image.getWidth();
        int i = height / 2;
        int i2 = width / 2;
        int max = Math.max(1, height / 256);
        int max2 = Math.max(1, width / 256);
        int i3 = -max;
        int i4 = i2 / 2;
        int y = ((int) findCornerFromCenter(i2, 0, 0, width, i, i3, 0, height, i4).getY()) - 1;
        int i5 = i / 2;
        ResultPoint findCornerFromCenter = findCornerFromCenter(i2, -max2, 0, width, i, 0, y, height, i5);
        int x = ((int) findCornerFromCenter.getX()) - 1;
        ResultPoint findCornerFromCenter2 = findCornerFromCenter(i2, max2, x, width, i, 0, y, height, i5);
        int x2 = ((int) findCornerFromCenter2.getX()) + 1;
        ResultPoint findCornerFromCenter3 = findCornerFromCenter(i2, 0, x, x2, i, max, y, height, i4);
        return new ResultPoint[]{findCornerFromCenter(i2, 0, x, x2, i, i3, y, ((int) findCornerFromCenter3.getY()) + 1, i2 / 4), findCornerFromCenter, findCornerFromCenter2, findCornerFromCenter3};
    }

    private ResultPoint findCornerFromCenter(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) throws NotFoundException {
        int[] iArr;
        int i10 = i;
        int i11 = i5;
        int[] iArr2 = null;
        while (i11 < i8 && i11 >= i7 && i10 < i4 && i10 >= i3) {
            if (i2 == 0) {
                iArr = blackWhiteRange(i11, i9, i3, i4, true);
            } else {
                iArr = blackWhiteRange(i10, i9, i7, i8, false);
            }
            if (iArr != null) {
                i11 += i6;
                i10 += i2;
                iArr2 = iArr;
            } else if (iArr2 != null) {
                char c = 1;
                if (i2 == 0) {
                    int i12 = i11 - i6;
                    if (iArr2[0] >= i) {
                        return new ResultPoint((float) iArr2[1], (float) i12);
                    }
                    if (iArr2[1] <= i) {
                        return new ResultPoint((float) iArr2[0], (float) i12);
                    }
                    if (i6 > 0) {
                        c = 0;
                    }
                    return new ResultPoint((float) iArr2[c], (float) i12);
                }
                int i13 = i10 - i2;
                if (iArr2[0] >= i5) {
                    return new ResultPoint((float) i13, (float) iArr2[1]);
                }
                if (iArr2[1] <= i5) {
                    return new ResultPoint((float) i13, (float) iArr2[0]);
                }
                float f = (float) i13;
                if (i2 < 0) {
                    c = 0;
                }
                return new ResultPoint(f, (float) iArr2[c]);
            } else {
                throw NotFoundException.getNotFoundInstance();
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x0022  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x005c  */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x0035 A[EDGE_INSN: B:52:0x0035->B:16:0x0035 ?: BREAK  , SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:65:0x006f A[EDGE_INSN: B:65:0x006f->B:36:0x006f ?: BREAK  , SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private int[] blackWhiteRange(int r6, int r7, int r8, int r9, boolean r10) {
        /*
        // Method dump skipped, instructions count: 134
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.common.detector.MonochromeRectangleDetector.blackWhiteRange(int, int, int, int, boolean):int[]");
    }
}
