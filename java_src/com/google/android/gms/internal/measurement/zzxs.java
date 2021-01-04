package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzvx;

final class zzxs implements zzxc {
    private final int flags;
    private final String info;
    private final Object[] zzcbv;
    private final zzxe zzcby;

    zzxs(zzxe zzxe, String str, Object[] objArr) {
        this.zzcby = zzxe;
        this.info = str;
        this.zzcbv = objArr;
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
    public final String zzyc() {
        return this.info;
    }

    /* access modifiers changed from: package-private */
    public final Object[] zzyd() {
        return this.zzcbv;
    }

    @Override // com.google.android.gms.internal.measurement.zzxc
    public final zzxe zzxv() {
        return this.zzcby;
    }

    @Override // com.google.android.gms.internal.measurement.zzxc
    public final int zzxt() {
        return (this.flags & 1) == 1 ? zzvx.zze.zzbzw : zzvx.zze.zzbzx;
    }

    @Override // com.google.android.gms.internal.measurement.zzxc
    public final boolean zzxu() {
        return (this.flags & 2) == 2;
    }
}
