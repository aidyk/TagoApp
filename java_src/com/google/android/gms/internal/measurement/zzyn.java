package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzvx;
import java.io.IOException;
import java.util.Arrays;

public final class zzyn {
    private static final zzyn zzcdj = new zzyn(0, new int[0], new Object[0], false);
    private int count;
    private boolean zzbup;
    private int zzbzi;
    private Object[] zzcbv;
    private int[] zzcdk;

    public static zzyn zzys() {
        return zzcdj;
    }

    static zzyn zzyt() {
        return new zzyn();
    }

    static zzyn zza(zzyn zzyn, zzyn zzyn2) {
        int i = zzyn.count + zzyn2.count;
        int[] copyOf = Arrays.copyOf(zzyn.zzcdk, i);
        System.arraycopy(zzyn2.zzcdk, 0, copyOf, zzyn.count, zzyn2.count);
        Object[] copyOf2 = Arrays.copyOf(zzyn.zzcbv, i);
        System.arraycopy(zzyn2.zzcbv, 0, copyOf2, zzyn.count, zzyn2.count);
        return new zzyn(i, copyOf, copyOf2, true);
    }

    private zzyn() {
        this(0, new int[8], new Object[8], true);
    }

    private zzyn(int i, int[] iArr, Object[] objArr, boolean z) {
        this.zzbzi = -1;
        this.count = i;
        this.zzcdk = iArr;
        this.zzcbv = objArr;
        this.zzbup = z;
    }

    public final void zzsw() {
        this.zzbup = false;
    }

    /* access modifiers changed from: package-private */
    public final void zza(zzzh zzzh) throws IOException {
        if (zzzh.zzvt() == zzvx.zze.zzcaa) {
            for (int i = this.count - 1; i >= 0; i--) {
                zzzh.zza(this.zzcdk[i] >>> 3, this.zzcbv[i]);
            }
            return;
        }
        for (int i2 = 0; i2 < this.count; i2++) {
            zzzh.zza(this.zzcdk[i2] >>> 3, this.zzcbv[i2]);
        }
    }

    public final void zzb(zzzh zzzh) throws IOException {
        if (this.count != 0) {
            if (zzzh.zzvt() == zzvx.zze.zzbzz) {
                for (int i = 0; i < this.count; i++) {
                    zzb(this.zzcdk[i], this.zzcbv[i], zzzh);
                }
                return;
            }
            for (int i2 = this.count - 1; i2 >= 0; i2--) {
                zzb(this.zzcdk[i2], this.zzcbv[i2], zzzh);
            }
        }
    }

    private static void zzb(int i, Object obj, zzzh zzzh) throws IOException {
        int i2 = i >>> 3;
        int i3 = i & 7;
        if (i3 != 5) {
            switch (i3) {
                case 0:
                    zzzh.zzi(i2, ((Long) obj).longValue());
                    return;
                case 1:
                    zzzh.zzc(i2, ((Long) obj).longValue());
                    return;
                case 2:
                    zzzh.zza(i2, (zzun) obj);
                    return;
                case 3:
                    if (zzzh.zzvt() == zzvx.zze.zzbzz) {
                        zzzh.zzbl(i2);
                        ((zzyn) obj).zzb(zzzh);
                        zzzh.zzbm(i2);
                        return;
                    }
                    zzzh.zzbm(i2);
                    ((zzyn) obj).zzb(zzzh);
                    zzzh.zzbl(i2);
                    return;
                default:
                    throw new RuntimeException(zzwe.zzxb());
            }
        } else {
            zzzh.zzg(i2, ((Integer) obj).intValue());
        }
    }

    public final int zzyu() {
        int i = this.zzbzi;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.count; i3++) {
            i2 += zzve.zzd(this.zzcdk[i3] >>> 3, (zzun) this.zzcbv[i3]);
        }
        this.zzbzi = i2;
        return i2;
    }

    public final int zzwe() {
        int i;
        int i2 = this.zzbzi;
        if (i2 != -1) {
            return i2;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < this.count; i4++) {
            int i5 = this.zzcdk[i4];
            int i6 = i5 >>> 3;
            int i7 = i5 & 7;
            if (i7 != 5) {
                switch (i7) {
                    case 0:
                        i = zzve.zze(i6, ((Long) this.zzcbv[i4]).longValue());
                        continue;
                    case 1:
                        i = zzve.zzg(i6, ((Long) this.zzcbv[i4]).longValue());
                        continue;
                    case 2:
                        i = zzve.zzc(i6, (zzun) this.zzcbv[i4]);
                        continue;
                    case 3:
                        i = (zzve.zzbc(i6) << 1) + ((zzyn) this.zzcbv[i4]).zzwe();
                        continue;
                    default:
                        throw new IllegalStateException(zzwe.zzxb());
                }
            } else {
                i = zzve.zzk(i6, ((Integer) this.zzcbv[i4]).intValue());
            }
            i3 += i;
        }
        this.zzbzi = i3;
        return i3;
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzyn)) {
            return false;
        }
        zzyn zzyn = (zzyn) obj;
        if (this.count == zzyn.count) {
            int[] iArr = this.zzcdk;
            int[] iArr2 = zzyn.zzcdk;
            int i = this.count;
            int i2 = 0;
            while (true) {
                if (i2 >= i) {
                    z = true;
                    break;
                } else if (iArr[i2] != iArr2[i2]) {
                    z = false;
                    break;
                } else {
                    i2++;
                }
            }
            if (z) {
                Object[] objArr = this.zzcbv;
                Object[] objArr2 = zzyn.zzcbv;
                int i3 = this.count;
                int i4 = 0;
                while (true) {
                    if (i4 >= i3) {
                        z2 = true;
                        break;
                    } else if (!objArr[i4].equals(objArr2[i4])) {
                        z2 = false;
                        break;
                    } else {
                        i4++;
                    }
                }
                return z2;
            }
        }
    }

    public final int hashCode() {
        int i = (this.count + 527) * 31;
        int[] iArr = this.zzcdk;
        int i2 = this.count;
        int i3 = 17;
        int i4 = 17;
        for (int i5 = 0; i5 < i2; i5++) {
            i4 = (i4 * 31) + iArr[i5];
        }
        int i6 = (i + i4) * 31;
        Object[] objArr = this.zzcbv;
        int i7 = this.count;
        for (int i8 = 0; i8 < i7; i8++) {
            i3 = (i3 * 31) + objArr[i8].hashCode();
        }
        return i6 + i3;
    }

    /* access modifiers changed from: package-private */
    public final void zzb(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.count; i2++) {
            zzxh.zzb(sb, i, String.valueOf(this.zzcdk[i2] >>> 3), this.zzcbv[i2]);
        }
    }

    /* access modifiers changed from: package-private */
    public final void zzb(int i, Object obj) {
        if (this.zzbup) {
            if (this.count == this.zzcdk.length) {
                int i2 = this.count + (this.count < 4 ? 8 : this.count >> 1);
                this.zzcdk = Arrays.copyOf(this.zzcdk, i2);
                this.zzcbv = Arrays.copyOf(this.zzcbv, i2);
            }
            this.zzcdk[this.count] = i;
            this.zzcbv[this.count] = obj;
            this.count++;
            return;
        }
        throw new UnsupportedOperationException();
    }
}
