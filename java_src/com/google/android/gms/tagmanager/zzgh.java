package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.measurement.zzp;
import java.util.Map;

abstract class zzgh extends zzbq {
    public zzgh(String str, String... strArr) {
        super(str, strArr);
    }

    public abstract void zzg(Map<String, zzp> map);

    @Override // com.google.android.gms.tagmanager.zzbq
    public boolean zznk() {
        return false;
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public zzp zze(Map<String, zzp> map) {
        zzg(map);
        return zzgj.zzqq();
    }
}
