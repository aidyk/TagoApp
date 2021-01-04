package com.google.android.gms.internal.clearcut;

import org.jetbrains.anko.DimensionsKt;

final class zzfj extends zzfg {
    zzfj() {
    }

    private static int zza(byte[] bArr, int i, long j, int i2) {
        switch (i2) {
            case 0:
                return zzff.zzam(i);
            case 1:
                return zzff.zzp(i, zzfd.zza(bArr, j));
            case 2:
                return zzff.zzd(i, zzfd.zza(bArr, j), zzfd.zza(bArr, j + 1));
            default:
                throw new AssertionError();
        }
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x0065, code lost:
        return -1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:57:0x00bb, code lost:
        return -1;
     */
    @Override // com.google.android.gms.internal.clearcut.zzfg
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final int zzb(int r18, byte[] r19, int r20, int r21) {
        /*
        // Method dump skipped, instructions count: 222
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.zzfj.zzb(int, byte[], int, int):int");
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.clearcut.zzfg
    public final int zzb(CharSequence charSequence, byte[] bArr, int i, int i2) {
        int i3;
        long j;
        char c;
        char charAt;
        long j2 = (long) i;
        long j3 = ((long) i2) + j2;
        int length = charSequence.length();
        if (length > i2 || bArr.length - i2 < i) {
            char charAt2 = charSequence.charAt(length - 1);
            StringBuilder sb = new StringBuilder(37);
            sb.append("Failed writing ");
            sb.append(charAt2);
            sb.append(" at index ");
            sb.append(i + i2);
            throw new ArrayIndexOutOfBoundsException(sb.toString());
        }
        int i4 = 0;
        while (i4 < length && (charAt = charSequence.charAt(i4)) < 128) {
            zzfd.zza(bArr, j2, (byte) charAt);
            i4++;
            j2 = 1 + j2;
        }
        if (i4 == length) {
            return (int) j2;
        }
        while (i4 < length) {
            char charAt3 = charSequence.charAt(i4);
            if (charAt3 < 128 && j2 < j3) {
                j = j2 + 1;
                c = charAt3;
            } else if (charAt3 < 2048 && j2 <= j3 - 2) {
                long j4 = j2 + 1;
                zzfd.zza(bArr, j2, (byte) ((charAt3 >>> 6) | 960));
                j2 = j4 + 1;
                zzfd.zza(bArr, j4, (byte) ((charAt3 & '?') | 128));
                i4++;
            } else if ((charAt3 < 55296 || 57343 < charAt3) && j2 <= j3 - 3) {
                long j5 = j2 + 1;
                zzfd.zza(bArr, j2, (byte) ((charAt3 >>> '\f') | DimensionsKt.XXHDPI));
                j2 = j5 + 1;
                zzfd.zza(bArr, j5, (byte) (((charAt3 >>> 6) & 63) | 128));
                j = j2 + 1;
                c = (charAt3 & '?') | 128;
            } else if (j2 <= j3 - 4) {
                int i5 = i4 + 1;
                if (i5 != length) {
                    char charAt4 = charSequence.charAt(i5);
                    if (Character.isSurrogatePair(charAt3, charAt4)) {
                        int codePoint = Character.toCodePoint(charAt3, charAt4);
                        long j6 = j2 + 1;
                        zzfd.zza(bArr, j2, (byte) ((codePoint >>> 18) | 240));
                        long j7 = j6 + 1;
                        zzfd.zza(bArr, j6, (byte) (((codePoint >>> 12) & 63) | 128));
                        long j8 = j7 + 1;
                        zzfd.zza(bArr, j7, (byte) (((codePoint >>> 6) & 63) | 128));
                        j2 = j8 + 1;
                        zzfd.zza(bArr, j8, (byte) ((codePoint & 63) | 128));
                        i4 = i5;
                        i4++;
                    }
                } else {
                    i5 = i4;
                }
                throw new zzfi(i5 - 1, length);
            } else if (55296 > charAt3 || charAt3 > 57343 || ((i3 = i4 + 1) != length && Character.isSurrogatePair(charAt3, charSequence.charAt(i3)))) {
                StringBuilder sb2 = new StringBuilder(46);
                sb2.append("Failed writing ");
                sb2.append(charAt3);
                sb2.append(" at index ");
                sb2.append(j2);
                throw new ArrayIndexOutOfBoundsException(sb2.toString());
            } else {
                throw new zzfi(i4, length);
            }
            zzfd.zza(bArr, j2, c == 1 ? (byte) 1 : 0);
            j2 = j;
            i4++;
        }
        return (int) j2;
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Removed duplicated region for block: B:11:0x003d A[LOOP:1: B:11:0x003d->B:37:0x00fe, LOOP_START, PHI: r4 r9 r10 r11 
      PHI: (r4v5 long) = (r4v4 long), (r4v7 long) binds: [B:8:0x0035, B:37:0x00fe] A[DONT_GENERATE, DONT_INLINE]
      PHI: (r9v3 int) = (r9v2 int), (r9v5 int) binds: [B:8:0x0035, B:37:0x00fe] A[DONT_GENERATE, DONT_INLINE]
      PHI: (r10v1 char) = (r10v0 char), (r10v2 char) binds: [B:8:0x0035, B:37:0x00fe] A[DONT_GENERATE, DONT_INLINE]
      PHI: (r11v2 long) = (r11v1 long), (r11v3 long) binds: [B:8:0x0035, B:37:0x00fe] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.android.gms.internal.clearcut.zzfg
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zzb(java.lang.CharSequence r21, java.nio.ByteBuffer r22) {
        /*
        // Method dump skipped, instructions count: 374
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.zzfj.zzb(java.lang.CharSequence, java.nio.ByteBuffer):void");
    }
}
