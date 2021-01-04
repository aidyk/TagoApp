package com.google.android.gms.internal.vision;

import org.jetbrains.anko.DimensionsKt;

final class zzjb extends zziy {
    zzjb() {
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x0065, code lost:
        return -1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:57:0x00bb, code lost:
        return -1;
     */
    @Override // com.google.android.gms.internal.vision.zziy
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final int zzb(int r18, byte[] r19, int r20, int r21) {
        /*
        // Method dump skipped, instructions count: 222
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.zzjb.zzb(int, byte[], int, int):int");
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.vision.zziy
    public final String zzi(byte[] bArr, int i, int i2) throws zzgf {
        if ((i | i2 | ((bArr.length - i) - i2)) >= 0) {
            int i3 = i + i2;
            char[] cArr = new char[i2];
            int i4 = 0;
            while (i < i3) {
                byte zza = zziu.zza(bArr, (long) i);
                if (!(zzix.zzd(zza))) {
                    break;
                }
                i++;
                zzix.zza(zza, cArr, i4);
                i4++;
            }
            int i5 = i4;
            while (i < i3) {
                int i6 = i + 1;
                byte zza2 = zziu.zza(bArr, (long) i);
                if (zzix.zzd(zza2)) {
                    int i7 = i5 + 1;
                    zzix.zza(zza2, cArr, i5);
                    while (i6 < i3) {
                        byte zza3 = zziu.zza(bArr, (long) i6);
                        if (!(zzix.zzd(zza3))) {
                            break;
                        }
                        i6++;
                        zzix.zza(zza3, cArr, i7);
                        i7++;
                    }
                    i = i6;
                    i5 = i7;
                } else if (zzix.zze(zza2)) {
                    if (i6 < i3) {
                        int i8 = i6 + 1;
                        zzix.zza(zza2, zziu.zza(bArr, (long) i6), cArr, i5);
                        i = i8;
                        i5++;
                    } else {
                        throw zzgf.zzfp();
                    }
                } else if (zzix.zzf(zza2)) {
                    if (i6 < i3 - 1) {
                        int i9 = i6 + 1;
                        int i10 = i9 + 1;
                        zzix.zza(zza2, zziu.zza(bArr, (long) i6), zziu.zza(bArr, (long) i9), cArr, i5);
                        i = i10;
                        i5++;
                    } else {
                        throw zzgf.zzfp();
                    }
                } else if (i6 < i3 - 2) {
                    int i11 = i6 + 1;
                    int i12 = i11 + 1;
                    zzix.zza(zza2, zziu.zza(bArr, (long) i6), zziu.zza(bArr, (long) i11), zziu.zza(bArr, (long) i12), cArr, i5);
                    i = i12 + 1;
                    i5 = i5 + 1 + 1;
                } else {
                    throw zzgf.zzfp();
                }
            }
            return new String(cArr, 0, i5);
        }
        throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.vision.zziy
    public final int zzb(CharSequence charSequence, byte[] bArr, int i, int i2) {
        int i3;
        long j;
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
            zziu.zza(bArr, j2, (byte) charAt);
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
                zziu.zza(bArr, j2, (byte) charAt3);
            } else if (charAt3 < 2048 && j2 <= j3 - 2) {
                long j4 = j2 + 1;
                zziu.zza(bArr, j2, (byte) ((charAt3 >>> 6) | 960));
                j2 = j4 + 1;
                zziu.zza(bArr, j4, (byte) ((charAt3 & '?') | 128));
                i4++;
            } else if ((charAt3 < 55296 || 57343 < charAt3) && j2 <= j3 - 3) {
                long j5 = j2 + 1;
                zziu.zza(bArr, j2, (byte) ((charAt3 >>> '\f') | DimensionsKt.XXHDPI));
                long j6 = j5 + 1;
                zziu.zza(bArr, j5, (byte) (((charAt3 >>> 6) & 63) | 128));
                j = j6 + 1;
                zziu.zza(bArr, j6, (byte) ((charAt3 & '?') | 128));
            } else if (j2 <= j3 - 4) {
                int i5 = i4 + 1;
                if (i5 != length) {
                    char charAt4 = charSequence.charAt(i5);
                    if (Character.isSurrogatePair(charAt3, charAt4)) {
                        int codePoint = Character.toCodePoint(charAt3, charAt4);
                        long j7 = j2 + 1;
                        zziu.zza(bArr, j2, (byte) ((codePoint >>> 18) | 240));
                        long j8 = j7 + 1;
                        zziu.zza(bArr, j7, (byte) (((codePoint >>> 12) & 63) | 128));
                        long j9 = j8 + 1;
                        zziu.zza(bArr, j8, (byte) (((codePoint >>> 6) & 63) | 128));
                        j2 = j9 + 1;
                        zziu.zza(bArr, j9, (byte) ((codePoint & 63) | 128));
                        i4 = i5;
                        i4++;
                    }
                } else {
                    i5 = i4;
                }
                throw new zzja(i5 - 1, length);
            } else if (55296 > charAt3 || charAt3 > 57343 || ((i3 = i4 + 1) != length && Character.isSurrogatePair(charAt3, charSequence.charAt(i3)))) {
                StringBuilder sb2 = new StringBuilder(46);
                sb2.append("Failed writing ");
                sb2.append(charAt3);
                sb2.append(" at index ");
                sb2.append(j2);
                throw new ArrayIndexOutOfBoundsException(sb2.toString());
            } else {
                throw new zzja(i4, length);
            }
            j2 = j;
            i4++;
        }
        return (int) j2;
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Removed duplicated region for block: B:11:0x003d A[LOOP:1: B:11:0x003d->B:37:0x00fe, LOOP_START, PHI: r4 r9 r10 r11 
      PHI: (r4v5 long) = (r4v4 long), (r4v8 long) binds: [B:8:0x0035, B:37:0x00fe] A[DONT_GENERATE, DONT_INLINE]
      PHI: (r9v3 int) = (r9v2 int), (r9v5 int) binds: [B:8:0x0035, B:37:0x00fe] A[DONT_GENERATE, DONT_INLINE]
      PHI: (r10v1 char) = (r10v0 char), (r10v2 char) binds: [B:8:0x0035, B:37:0x00fe] A[DONT_GENERATE, DONT_INLINE]
      PHI: (r11v2 long) = (r11v1 long), (r11v3 long) binds: [B:8:0x0035, B:37:0x00fe] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARNING: Removed duplicated region for block: B:9:0x0037  */
    @Override // com.google.android.gms.internal.vision.zziy
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zzb(java.lang.CharSequence r21, java.nio.ByteBuffer r22) {
        /*
        // Method dump skipped, instructions count: 378
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.zzjb.zzb(java.lang.CharSequence, java.nio.ByteBuffer):void");
    }

    private static int zza(byte[] bArr, int i, long j, int i2) {
        switch (i2) {
            case 0:
                return zziw.zzbr(i);
            case 1:
                return zziw.zzt(i, zziu.zza(bArr, j));
            case 2:
                return zziw.zzc(i, zziu.zza(bArr, j), zziu.zza(bArr, j + 1));
            default:
                throw new AssertionError();
        }
    }
}
