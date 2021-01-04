package com.google.android.gms.tagmanager;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.measurement.zzo;

/* access modifiers changed from: package-private */
public final class zzae implements zzdh<zzo> {
    private final /* synthetic */ zzy zzbbd;

    private zzae(zzy zzy) {
        this.zzbbd = zzy;
    }

    @Override // com.google.android.gms.tagmanager.zzdh
    public final void zznx() {
    }

    @Override // com.google.android.gms.tagmanager.zzdh
    public final void zzt(int i) {
        if (i == zzcz.zzbds) {
            this.zzbbd.zzbau.zzob();
        }
        synchronized (this.zzbbd) {
            if (!this.zzbbd.isReady()) {
                if (this.zzbbd.zzbax != null) {
                    this.zzbbd.setResult(this.zzbbd.zzbax);
                } else {
                    this.zzbbd.setResult(this.zzbbd.createFailedResult(Status.RESULT_TIMEOUT));
                }
            }
        }
        this.zzbbd.zzas(this.zzbbd.zzbau.zzoa());
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.tagmanager.zzdh
    public final /* synthetic */ void onSuccess(zzo zzo) {
        zzo zzo2 = zzo;
        this.zzbbd.zzbau.zzoc();
        synchronized (this.zzbbd) {
            if (zzo2.zzqg == null) {
                if (this.zzbbd.zzbaz.zzqg == null) {
                    zzdi.e("Current resource is null; network resource is also null");
                    this.zzbbd.zzas(this.zzbbd.zzbau.zzoa());
                    return;
                }
                zzo2.zzqg = this.zzbbd.zzbaz.zzqg;
            }
            this.zzbbd.zza(zzo2, this.zzbbd.zzrz.currentTimeMillis(), false);
            long j = this.zzbbd.zzbaf;
            StringBuilder sb = new StringBuilder(58);
            sb.append("setting refresh time to current time: ");
            sb.append(j);
            zzdi.v(sb.toString());
            if (!(this.zzbbd.zznw())) {
                this.zzbbd.zza((zzy) zzo2);
            }
        }
    }

    /* synthetic */ zzae(zzy zzy, zzz zzz) {
        this(zzy);
    }
}
