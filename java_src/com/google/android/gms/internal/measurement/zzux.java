package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.nio.charset.Charset;

/* access modifiers changed from: package-private */
public class zzux extends zzuw {
    protected final byte[] zzbvb;

    zzux(byte[] bArr) {
        if (bArr != null) {
            this.zzbvb = bArr;
            return;
        }
        throw new NullPointerException();
    }

    /* access modifiers changed from: protected */
    public int zzun() {
        return 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzun
    public byte zzal(int i) {
        return this.zzbvb[i];
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzun
    public byte zzam(int i) {
        return this.zzbvb[i];
    }

    @Override // com.google.android.gms.internal.measurement.zzun
    public int size() {
        return this.zzbvb.length;
    }

    @Override // com.google.android.gms.internal.measurement.zzun
    public final zzun zzb(int i, int i2) {
        int zzb = zzb(0, i2, size());
        if (zzb == 0) {
            return zzun.zzbuu;
        }
        return new zzus(this.zzbvb, zzun(), zzb);
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzun
    public final void zza(zzum zzum) throws IOException {
        zzum.zza(this.zzbvb, zzun(), size());
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzun
    public final String zza(Charset charset) {
        return new String(this.zzbvb, zzun(), size(), charset);
    }

    @Override // com.google.android.gms.internal.measurement.zzun
    public final boolean zzul() {
        int zzun = zzun();
        return zzyu.zzf(this.zzbvb, zzun, size() + zzun);
    }

    @Override // com.google.android.gms.internal.measurement.zzun
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzun) || size() != ((zzun) obj).size()) {
            return false;
        }
        if (size() == 0) {
            return true;
        }
        if (!(obj instanceof zzux)) {
            return obj.equals(this);
        }
        zzux zzux = (zzux) obj;
        int zzum = zzum();
        int zzum2 = zzux.zzum();
        if (zzum == 0 || zzum2 == 0 || zzum == zzum2) {
            return zza(zzux, 0, size());
        }
        return false;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzuw
    public final boolean zza(zzun zzun, int i, int i2) {
        if (i2 > zzun.size()) {
            int size = size();
            StringBuilder sb = new StringBuilder(40);
            sb.append("Length too large: ");
            sb.append(i2);
            sb.append(size);
            throw new IllegalArgumentException(sb.toString());
        } else if (i2 > zzun.size()) {
            int size2 = zzun.size();
            StringBuilder sb2 = new StringBuilder(59);
            sb2.append("Ran off end of other: 0, ");
            sb2.append(i2);
            sb2.append(", ");
            sb2.append(size2);
            throw new IllegalArgumentException(sb2.toString());
        } else if (!(zzun instanceof zzux)) {
            return zzun.zzb(0, i2).equals(zzb(0, i2));
        } else {
            zzux zzux = (zzux) zzun;
            byte[] bArr = this.zzbvb;
            byte[] bArr2 = zzux.zzbvb;
            int zzun2 = zzun() + i2;
            int zzun3 = zzun();
            int zzun4 = zzux.zzun();
            while (zzun3 < zzun2) {
                if (bArr[zzun3] != bArr2[zzun4]) {
                    return false;
                }
                zzun3++;
                zzun4++;
            }
            return true;
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzun
    public final int zza(int i, int i2, int i3) {
        return zzvz.zza(i, this.zzbvb, zzun(), i3);
    }
}
