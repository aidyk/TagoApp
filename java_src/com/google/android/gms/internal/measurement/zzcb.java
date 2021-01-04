package com.google.android.gms.internal.measurement;

import com.google.android.gms.common.util.VisibleForTesting;

@VisibleForTesting
public final class zzcb extends zzau {
    @VisibleForTesting
    zzcb(zzaw zzaw) {
        super(zzaw);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzau
    public final void zzag() {
    }

    public final zzac zzek() {
        zzcl();
        return zzca().zzae();
    }

    public final String zzel() {
        zzcl();
        zzac zzek = zzek();
        int i = zzek.zzuh;
        int i2 = zzek.zzui;
        StringBuilder sb = new StringBuilder(23);
        sb.append(i);
        sb.append("x");
        sb.append(i2);
        return sb.toString();
    }
}
