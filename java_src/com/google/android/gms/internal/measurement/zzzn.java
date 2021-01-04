package com.google.android.gms.internal.measurement;

public final class zzzn implements Cloneable {
    private static final zzzo zzcga = new zzzo();
    private int mSize;
    private boolean zzcgb;
    private int[] zzcgc;
    private zzzo[] zzcgd;

    zzzn() {
        this(10);
    }

    private zzzn(int i) {
        this.zzcgb = false;
        int idealIntArraySize = idealIntArraySize(i);
        this.zzcgc = new int[idealIntArraySize];
        this.zzcgd = new zzzo[idealIntArraySize];
        this.mSize = 0;
    }

    /* access modifiers changed from: package-private */
    public final zzzo zzcd(int i) {
        int zzcf = zzcf(i);
        if (zzcf < 0 || this.zzcgd[zzcf] == zzcga) {
            return null;
        }
        return this.zzcgd[zzcf];
    }

    /* access modifiers changed from: package-private */
    public final void zza(int i, zzzo zzzo) {
        int zzcf = zzcf(i);
        if (zzcf >= 0) {
            this.zzcgd[zzcf] = zzzo;
            return;
        }
        int i2 = zzcf ^ -1;
        if (i2 >= this.mSize || this.zzcgd[i2] != zzcga) {
            if (this.mSize >= this.zzcgc.length) {
                int idealIntArraySize = idealIntArraySize(this.mSize + 1);
                int[] iArr = new int[idealIntArraySize];
                zzzo[] zzzoArr = new zzzo[idealIntArraySize];
                System.arraycopy(this.zzcgc, 0, iArr, 0, this.zzcgc.length);
                System.arraycopy(this.zzcgd, 0, zzzoArr, 0, this.zzcgd.length);
                this.zzcgc = iArr;
                this.zzcgd = zzzoArr;
            }
            if (this.mSize - i2 != 0) {
                int i3 = i2 + 1;
                System.arraycopy(this.zzcgc, i2, this.zzcgc, i3, this.mSize - i2);
                System.arraycopy(this.zzcgd, i2, this.zzcgd, i3, this.mSize - i2);
            }
            this.zzcgc[i2] = i;
            this.zzcgd[i2] = zzzo;
            this.mSize++;
            return;
        }
        this.zzcgc[i2] = i;
        this.zzcgd[i2] = zzzo;
    }

    /* access modifiers changed from: package-private */
    public final int size() {
        return this.mSize;
    }

    public final boolean isEmpty() {
        return this.mSize == 0;
    }

    /* access modifiers changed from: package-private */
    public final zzzo zzce(int i) {
        return this.zzcgd[i];
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzzn)) {
            return false;
        }
        zzzn zzzn = (zzzn) obj;
        if (this.mSize != zzzn.mSize) {
            return false;
        }
        int[] iArr = this.zzcgc;
        int[] iArr2 = zzzn.zzcgc;
        int i = this.mSize;
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
            zzzo[] zzzoArr = this.zzcgd;
            zzzo[] zzzoArr2 = zzzn.zzcgd;
            int i3 = this.mSize;
            int i4 = 0;
            while (true) {
                if (i4 >= i3) {
                    z2 = true;
                    break;
                } else if (!zzzoArr[i4].equals(zzzoArr2[i4])) {
                    z2 = false;
                    break;
                } else {
                    i4++;
                }
            }
            if (z2) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = 17;
        for (int i2 = 0; i2 < this.mSize; i2++) {
            i = (((i * 31) + this.zzcgc[i2]) * 31) + this.zzcgd[i2].hashCode();
        }
        return i;
    }

    private static int idealIntArraySize(int i) {
        int i2 = i << 2;
        int i3 = 4;
        while (true) {
            if (i3 >= 32) {
                break;
            }
            int i4 = (1 << i3) - 12;
            if (i2 <= i4) {
                i2 = i4;
                break;
            }
            i3++;
        }
        return i2 / 4;
    }

    private final int zzcf(int i) {
        int i2 = this.mSize - 1;
        int i3 = 0;
        while (i3 <= i2) {
            int i4 = (i3 + i2) >>> 1;
            int i5 = this.zzcgc[i4];
            if (i5 < i) {
                i3 = i4 + 1;
            } else if (i5 <= i) {
                return i4;
            } else {
                i2 = i4 - 1;
            }
        }
        return i3 ^ -1;
    }

    @Override // java.lang.Object
    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        int i = this.mSize;
        zzzn zzzn = new zzzn(i);
        System.arraycopy(this.zzcgc, 0, zzzn.zzcgc, 0, i);
        for (int i2 = 0; i2 < i; i2++) {
            if (this.zzcgd[i2] != null) {
                zzzn.zzcgd[i2] = (zzzo) this.zzcgd[i2].clone();
            }
        }
        zzzn.mSize = i;
        return zzzn;
    }
}
