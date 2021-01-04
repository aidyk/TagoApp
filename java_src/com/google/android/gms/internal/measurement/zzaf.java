package com.google.android.gms.internal.measurement;

import android.text.TextUtils;
import com.google.android.gms.analytics.zzi;
import com.google.android.gms.common.internal.ShowFirstParty;
import java.util.HashMap;

@ShowFirstParty
public final class zzaf extends zzi<zzaf> {
    public String zzum;
    public boolean zzun;

    public final String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put("description", this.zzum);
        hashMap.put("fatal", Boolean.valueOf(this.zzun));
        return zza((Object) hashMap);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.google.android.gms.analytics.zzi] */
    @Override // com.google.android.gms.analytics.zzi
    public final /* synthetic */ void zzb(zzaf zzaf) {
        zzaf zzaf2 = zzaf;
        if (!TextUtils.isEmpty(this.zzum)) {
            zzaf2.zzum = this.zzum;
        }
        if (this.zzun) {
            zzaf2.zzun = this.zzun;
        }
    }
}
