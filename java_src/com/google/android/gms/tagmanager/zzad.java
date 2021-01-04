package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.measurement.zzl;
import com.google.android.gms.internal.measurement.zzo;
import com.google.android.gms.internal.measurement.zzrt;

/* access modifiers changed from: package-private */
public final class zzad implements zzdh<zzrt> {
    private final /* synthetic */ zzy zzbbd;

    private zzad(zzy zzy) {
        this.zzbbd = zzy;
    }

    @Override // com.google.android.gms.tagmanager.zzdh
    public final void zznx() {
    }

    @Override // com.google.android.gms.tagmanager.zzdh
    public final void zzt(int i) {
        if (!(this.zzbbd.zzbay)) {
            this.zzbbd.zzas(0);
        }
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.tagmanager.zzdh
    public final /* synthetic */ void onSuccess(zzrt zzrt) {
        zzo zzo;
        zzrt zzrt2 = zzrt;
        if (zzrt2.zzbqo != null) {
            zzo = zzrt2.zzbqo;
        } else {
            zzl zzl = zzrt2.zzqg;
            zzo zzo2 = new zzo();
            zzo2.zzqg = zzl;
            zzo2.zzqf = null;
            zzo2.zzqh = zzl.version;
            zzo = zzo2;
        }
        this.zzbbd.zza(zzo, zzrt2.zzbqn, true);
    }

    /* synthetic */ zzad(zzy zzy, zzz zzz) {
        this(zzy);
    }
}
