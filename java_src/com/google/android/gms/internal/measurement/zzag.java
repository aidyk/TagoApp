package com.google.android.gms.internal.measurement;

import android.text.TextUtils;
import com.google.android.gms.analytics.zzi;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import java.util.HashMap;

@ShowFirstParty
public final class zzag extends zzi<zzag> {
    private String zzuo;
    private String zzup;
    private String zzuq;
    private String zzur;
    private boolean zzus;
    private String zzut;
    private boolean zzuu;
    private double zzuv;

    public final String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put("hitType", this.zzuo);
        hashMap.put("clientId", this.zzup);
        hashMap.put("userId", this.zzuq);
        hashMap.put("androidAdId", this.zzur);
        hashMap.put("AdTargetingEnabled", Boolean.valueOf(this.zzus));
        hashMap.put("sessionControl", this.zzut);
        hashMap.put("nonInteraction", Boolean.valueOf(this.zzuu));
        hashMap.put("sampleRate", Double.valueOf(this.zzuv));
        return zza((Object) hashMap);
    }

    public final String zzbc() {
        return this.zzuo;
    }

    public final void zzl(String str) {
        this.zzuo = str;
    }

    public final String zzbd() {
        return this.zzup;
    }

    public final void setClientId(String str) {
        this.zzup = str;
    }

    public final String zzbe() {
        return this.zzuq;
    }

    public final void setUserId(String str) {
        this.zzuq = str;
    }

    public final String zzbf() {
        return this.zzur;
    }

    public final void zzm(String str) {
        this.zzur = str;
    }

    public final boolean zzbg() {
        return this.zzus;
    }

    public final void zza(boolean z) {
        this.zzus = z;
    }

    public final String zzbh() {
        return this.zzut;
    }

    public final boolean zzbi() {
        return this.zzuu;
    }

    public final void zzb(boolean z) {
        this.zzuu = true;
    }

    public final double zzbj() {
        return this.zzuv;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.google.android.gms.analytics.zzi] */
    @Override // com.google.android.gms.analytics.zzi
    public final /* synthetic */ void zzb(zzag zzag) {
        zzag zzag2 = zzag;
        if (!TextUtils.isEmpty(this.zzuo)) {
            zzag2.zzuo = this.zzuo;
        }
        if (!TextUtils.isEmpty(this.zzup)) {
            zzag2.zzup = this.zzup;
        }
        if (!TextUtils.isEmpty(this.zzuq)) {
            zzag2.zzuq = this.zzuq;
        }
        if (!TextUtils.isEmpty(this.zzur)) {
            zzag2.zzur = this.zzur;
        }
        boolean z = true;
        if (this.zzus) {
            zzag2.zzus = true;
        }
        if (!TextUtils.isEmpty(this.zzut)) {
            zzag2.zzut = this.zzut;
        }
        if (this.zzuu) {
            zzag2.zzuu = this.zzuu;
        }
        if (this.zzuv != 0.0d) {
            double d = this.zzuv;
            if (d < 0.0d || d > 100.0d) {
                z = false;
            }
            Preconditions.checkArgument(z, "Sample rate must be between 0% and 100%");
            zzag2.zzuv = d;
        }
    }
}
