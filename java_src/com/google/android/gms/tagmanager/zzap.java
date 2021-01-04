package com.google.android.gms.tagmanager;

import com.google.android.gms.tagmanager.DataLayer;
import java.util.List;

final class zzap implements zzaq {
    private final /* synthetic */ DataLayer zzbbs;

    zzap(DataLayer dataLayer) {
        this.zzbbs = dataLayer;
    }

    @Override // com.google.android.gms.tagmanager.zzaq
    public final void zzd(List<DataLayer.zza> list) {
        for (DataLayer.zza zza : list) {
            this.zzbbs.zzh(DataLayer.zzk(zza.mKey, zza.mValue));
        }
        this.zzbbs.zzbbr.countDown();
    }
}
