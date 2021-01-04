package com.google.android.gms.internal.measurement;

import android.text.TextUtils;
import com.facebook.internal.NativeProtocol;
import com.google.android.gms.analytics.zzi;
import com.google.android.gms.common.internal.ShowFirstParty;
import java.util.HashMap;

@ShowFirstParty
public final class zzai extends zzi<zzai> {
    public String zzvd;
    public String zzve;
    public String zzvf;

    public final String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put("network", this.zzvd);
        hashMap.put(NativeProtocol.WEB_DIALOG_ACTION, this.zzve);
        hashMap.put("target", this.zzvf);
        return zza((Object) hashMap);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.google.android.gms.analytics.zzi] */
    @Override // com.google.android.gms.analytics.zzi
    public final /* synthetic */ void zzb(zzai zzai) {
        zzai zzai2 = zzai;
        if (!TextUtils.isEmpty(this.zzvd)) {
            zzai2.zzvd = this.zzvd;
        }
        if (!TextUtils.isEmpty(this.zzve)) {
            zzai2.zzve = this.zzve;
        }
        if (!TextUtils.isEmpty(this.zzvf)) {
            zzai2.zzvf = this.zzvf;
        }
    }
}
