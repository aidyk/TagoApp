package com.google.android.gms.tagmanager;

import com.google.android.gms.tagmanager.DataLayer;
import java.util.Map;

/* access modifiers changed from: package-private */
public final class zzga implements DataLayer.zzb {
    private final /* synthetic */ TagManager zzbhc;

    zzga(TagManager tagManager) {
        this.zzbhc = tagManager;
    }

    @Override // com.google.android.gms.tagmanager.DataLayer.zzb
    public final void zzf(Map<String, Object> map) {
        Object obj = map.get("event");
        if (obj != null) {
            this.zzbhc.zzed(obj.toString());
        }
    }
}
