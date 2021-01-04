package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.zzfy;

final class zzhu implements zzhd {
    private final int flags;
    private final String info;
    private final Object[] zzze;
    private final zzhf zzzh;

    zzhu(zzhf zzhf, String str, Object[] objArr) {
        this.zzzh = zzhf;
        this.info = str;
        this.zzze = objArr;
        char charAt = str.charAt(0);
        if (charAt < 55296) {
            this.flags = charAt;
            return;
        }
        int i = charAt & 8191;
        int i2 = 13;
        int i3 = 1;
        while (true) {
            int i4 = i3 + 1;
            char charAt2 = str.charAt(i3);
            if (charAt2 >= 55296) {
                i |= (charAt2 & 8191) << i2;
                i2 += 13;
                i3 = i4;
            } else {
                this.flags = i | (charAt2 << i2);
                return;
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final String zzgn() {
        return this.info;
    }

    /* access modifiers changed from: package-private */
    public final Object[] zzgo() {
        return this.zzze;
    }

    @Override // com.google.android.gms.internal.vision.zzhd
    public final zzhf zzgg() {
        return this.zzzh;
    }

    @Override // com.google.android.gms.internal.vision.zzhd
    public final int zzge() {
        return (this.flags & 1) == 1 ? zzfy.zzg.zzxf : zzfy.zzg.zzxg;
    }

    @Override // com.google.android.gms.internal.vision.zzhd
    public final boolean zzgf() {
        return (this.flags & 2) == 2;
    }
}
