package com.google.android.gms.internal.measurement;

final class zzus extends zzux {
    private final int zzbuy;
    private final int zzbuz;

    zzus(byte[] bArr, int i, int i2) {
        super(bArr);
        zzb(i, i + i2, bArr.length);
        this.zzbuy = i;
        this.zzbuz = i2;
    }

    @Override // com.google.android.gms.internal.measurement.zzux, com.google.android.gms.internal.measurement.zzun
    public final byte zzal(int i) {
        int size = size();
        if (((size - (i + 1)) | i) >= 0) {
            return this.zzbvb[this.zzbuy + i];
        }
        if (i < 0) {
            StringBuilder sb = new StringBuilder(22);
            sb.append("Index < 0: ");
            sb.append(i);
            throw new ArrayIndexOutOfBoundsException(sb.toString());
        }
        StringBuilder sb2 = new StringBuilder(40);
        sb2.append("Index > length: ");
        sb2.append(i);
        sb2.append(", ");
        sb2.append(size);
        throw new ArrayIndexOutOfBoundsException(sb2.toString());
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzux, com.google.android.gms.internal.measurement.zzun
    public final byte zzam(int i) {
        return this.zzbvb[this.zzbuy + i];
    }

    @Override // com.google.android.gms.internal.measurement.zzux, com.google.android.gms.internal.measurement.zzun
    public final int size() {
        return this.zzbuz;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzux
    public final int zzun() {
        return this.zzbuy;
    }
}
