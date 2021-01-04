package com.google.android.gms.analytics;

import android.text.TextUtils;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzak;
import com.google.android.gms.internal.measurement.zzav;
import com.google.android.gms.internal.measurement.zzaz;
import com.google.android.gms.internal.measurement.zzck;
import com.google.android.gms.internal.measurement.zzdg;
import com.google.android.gms.internal.measurement.zzx;
import java.util.HashMap;
import java.util.Map;

/* access modifiers changed from: package-private */
public final class zzp implements Runnable {
    private final /* synthetic */ Map zzte;
    private final /* synthetic */ boolean zztf;
    private final /* synthetic */ String zztg;
    private final /* synthetic */ long zzth;
    private final /* synthetic */ boolean zzti;
    private final /* synthetic */ boolean zztj;
    private final /* synthetic */ String zztk;
    private final /* synthetic */ Tracker zztl;

    zzp(Tracker tracker, Map map, boolean z, String str, long j, boolean z2, boolean z3, String str2) {
        this.zztl = tracker;
        this.zzte = map;
        this.zztf = z;
        this.zztg = str;
        this.zzth = j;
        this.zzti = z2;
        this.zztj = z3;
        this.zztk = str2;
    }

    public final void run() {
        if (this.zztl.zztb.zzah()) {
            this.zzte.put("sc", TtmlNode.START);
        }
        Map map = this.zzte;
        GoogleAnalytics zzcb = this.zztl.zzcb();
        Preconditions.checkNotMainThread("getClientId can not be called from the main thread");
        zzdg.zzc(map, "cid", zzcb.zzl().zzcr().zzdr());
        String str = (String) this.zzte.get("sf");
        if (str != null) {
            double zza = zzdg.zza(str, 100.0d);
            if (zzdg.zza(zza, (String) this.zzte.get("cid"))) {
                this.zztl.zzb("Sampling enabled. Hit sampled out. sample rate", Double.valueOf(zza));
                return;
            }
        }
        zzak zzak = this.zztl.zzch();
        if (this.zztf) {
            zzdg.zzb(this.zzte, "ate", zzak.zzbg());
            zzdg.zzb(this.zzte, "adid", zzak.zzbn());
        } else {
            this.zzte.remove("ate");
            this.zzte.remove("adid");
        }
        zzx zzdf = this.zztl.zzci().zzdf();
        zzdg.zzb(this.zzte, "an", zzdf.zzaj());
        zzdg.zzb(this.zzte, "av", zzdf.zzak());
        zzdg.zzb(this.zzte, "aid", zzdf.zzal());
        zzdg.zzb(this.zzte, "aiid", zzdf.zzam());
        this.zzte.put("v", AppEventsConstants.EVENT_PARAM_VALUE_YES);
        this.zzte.put("_v", zzav.zzwa);
        zzdg.zzb(this.zzte, "ul", this.zztl.zzcj().zzek().getLanguage());
        zzdg.zzb(this.zzte, "sr", this.zztl.zzcj().zzel());
        if ((this.zztg.equals("transaction") || this.zztg.equals("item")) || this.zztl.zzta.zzew()) {
            long zzaf = zzdg.zzaf((String) this.zzte.get("ht"));
            if (zzaf == 0) {
                zzaf = this.zzth;
            }
            if (this.zzti) {
                this.zztl.zzby().zzc("Dry run enabled. Would have sent hit", new zzck(this.zztl, this.zzte, zzaf, this.zztj));
                return;
            }
            String str2 = (String) this.zzte.get("cid");
            HashMap hashMap = new HashMap();
            zzdg.zza(hashMap, "uid", this.zzte);
            zzdg.zza(hashMap, "an", this.zzte);
            zzdg.zza(hashMap, "aid", this.zzte);
            zzdg.zza(hashMap, "av", this.zzte);
            zzdg.zza(hashMap, "aiid", this.zzte);
            this.zzte.put("_s", String.valueOf(this.zztl.zzcc().zza(new zzaz(0, str2, this.zztk, !TextUtils.isEmpty((CharSequence) this.zzte.get("adid")), 0, hashMap))));
            this.zztl.zzcc().zza(new zzck(this.zztl, this.zzte, zzaf, this.zztj));
            return;
        }
        this.zztl.zzby().zza(this.zzte, "Too many hits sent too quickly, rate limiting invoked");
    }
}
