package com.google.android.gms.internal.measurement;

import android.text.TextUtils;
import com.google.android.gms.analytics.zzi;
import com.google.android.gms.common.internal.ShowFirstParty;
import java.util.HashMap;

@ShowFirstParty
public final class zzaj extends zzi<zzaj> {
    public String mCategory;
    public String zzvg;
    public long zzvh;
    public String zzvi;

    public final String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put("variableName", this.zzvg);
        hashMap.put("timeInMillis", Long.valueOf(this.zzvh));
        hashMap.put("category", this.mCategory);
        hashMap.put("label", this.zzvi);
        return zza((Object) hashMap);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.google.android.gms.analytics.zzi] */
    @Override // com.google.android.gms.analytics.zzi
    public final /* synthetic */ void zzb(zzaj zzaj) {
        zzaj zzaj2 = zzaj;
        if (!TextUtils.isEmpty(this.zzvg)) {
            zzaj2.zzvg = this.zzvg;
        }
        if (this.zzvh != 0) {
            zzaj2.zzvh = this.zzvh;
        }
        if (!TextUtils.isEmpty(this.mCategory)) {
            zzaj2.mCategory = this.mCategory;
        }
        if (!TextUtils.isEmpty(this.zzvi)) {
            zzaj2.zzvi = this.zzvi;
        }
    }
}
