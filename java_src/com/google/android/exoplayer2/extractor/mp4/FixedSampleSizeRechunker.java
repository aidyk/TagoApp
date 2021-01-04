package com.google.android.exoplayer2.extractor.mp4;

import com.google.android.exoplayer2.util.Util;

/* access modifiers changed from: package-private */
public final class FixedSampleSizeRechunker {
    private static final int MAX_SAMPLE_SIZE = 8192;

    FixedSampleSizeRechunker() {
    }

    public static final class Results {
        public final int[] flags;
        public final int maximumSize;
        public final long[] offsets;
        public final int[] sizes;
        public final long[] timestamps;

        private Results(long[] jArr, int[] iArr, int i, long[] jArr2, int[] iArr2) {
            this.offsets = jArr;
            this.sizes = iArr;
            this.maximumSize = i;
            this.timestamps = jArr2;
            this.flags = iArr2;
        }
    }

    public static Results rechunk(int i, long[] jArr, int[] iArr, long j) {
        int[] iArr2 = iArr;
        int i2 = 8192 / i;
        int i3 = 0;
        int i4 = 0;
        for (int i5 : iArr2) {
            i4 += Util.ceilDivide(i5, i2);
        }
        long[] jArr2 = new long[i4];
        int[] iArr3 = new int[i4];
        long[] jArr3 = new long[i4];
        int[] iArr4 = new int[i4];
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        while (i3 < iArr2.length) {
            int i9 = iArr2[i3];
            long j2 = jArr[i3];
            while (i9 > 0) {
                int min = Math.min(i2, i9);
                jArr2[i6] = j2;
                iArr3[i6] = i * min;
                i8 = Math.max(i8, iArr3[i6]);
                jArr3[i6] = ((long) i7) * j;
                iArr4[i6] = 1;
                j2 += (long) iArr3[i6];
                i7 += min;
                i9 -= min;
                i6++;
            }
            i3++;
            iArr2 = iArr;
        }
        return new Results(jArr2, iArr3, i8, jArr3, iArr4);
    }
}
