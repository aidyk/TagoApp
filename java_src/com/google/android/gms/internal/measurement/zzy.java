package com.google.android.gms.internal.measurement;

import android.text.TextUtils;
import com.facebook.share.internal.ShareConstants;
import com.google.android.gms.analytics.zzi;
import com.google.android.gms.common.internal.ShowFirstParty;
import java.util.HashMap;

@ShowFirstParty
public final class zzy extends zzi<zzy> {
    private String name;
    private String zzno;
    private String zztv;
    private String zztw;
    private String zztx;
    private String zzty;
    private String zztz;
    private String zzua;
    private String zzub;
    private String zzuc;

    public final String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put("name", this.name);
        hashMap.put(ShareConstants.FEED_SOURCE_PARAM, this.zztv);
        hashMap.put("medium", this.zztw);
        hashMap.put("keyword", this.zztx);
        hashMap.put("content", this.zzty);
        hashMap.put("id", this.zzno);
        hashMap.put("adNetworkId", this.zztz);
        hashMap.put("gclid", this.zzua);
        hashMap.put("dclid", this.zzub);
        hashMap.put("aclid", this.zzuc);
        return zza((Object) hashMap);
    }

    public final String getName() {
        return this.name;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final String getSource() {
        return this.zztv;
    }

    public final void zzc(String str) {
        this.zztv = str;
    }

    public final String zzan() {
        return this.zztw;
    }

    public final void zzd(String str) {
        this.zztw = str;
    }

    public final String zzao() {
        return this.zztx;
    }

    public final void zze(String str) {
        this.zztx = str;
    }

    public final String zzap() {
        return this.zzty;
    }

    public final void zzf(String str) {
        this.zzty = str;
    }

    public final String getId() {
        return this.zzno;
    }

    public final void zzg(String str) {
        this.zzno = str;
    }

    public final String zzaq() {
        return this.zztz;
    }

    public final void zzh(String str) {
        this.zztz = str;
    }

    public final String zzar() {
        return this.zzua;
    }

    public final void zzi(String str) {
        this.zzua = str;
    }

    public final String zzas() {
        return this.zzub;
    }

    public final void zzj(String str) {
        this.zzub = str;
    }

    public final String zzat() {
        return this.zzuc;
    }

    public final void zzk(String str) {
        this.zzuc = str;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.google.android.gms.analytics.zzi] */
    @Override // com.google.android.gms.analytics.zzi
    public final /* synthetic */ void zzb(zzy zzy) {
        zzy zzy2 = zzy;
        if (!TextUtils.isEmpty(this.name)) {
            zzy2.name = this.name;
        }
        if (!TextUtils.isEmpty(this.zztv)) {
            zzy2.zztv = this.zztv;
        }
        if (!TextUtils.isEmpty(this.zztw)) {
            zzy2.zztw = this.zztw;
        }
        if (!TextUtils.isEmpty(this.zztx)) {
            zzy2.zztx = this.zztx;
        }
        if (!TextUtils.isEmpty(this.zzty)) {
            zzy2.zzty = this.zzty;
        }
        if (!TextUtils.isEmpty(this.zzno)) {
            zzy2.zzno = this.zzno;
        }
        if (!TextUtils.isEmpty(this.zztz)) {
            zzy2.zztz = this.zztz;
        }
        if (!TextUtils.isEmpty(this.zzua)) {
            zzy2.zzua = this.zzua;
        }
        if (!TextUtils.isEmpty(this.zzub)) {
            zzy2.zzub = this.zzub;
        }
        if (!TextUtils.isEmpty(this.zzuc)) {
            zzy2.zzuc = this.zzuc;
        }
    }
}
