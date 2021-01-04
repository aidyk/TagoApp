package com.google.android.gms.internal.measurement;

import android.text.TextUtils;
import com.facebook.internal.AnalyticsEvents;
import com.google.android.gms.analytics.zzi;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.HashMap;

@ShowFirstParty
@VisibleForTesting
public final class zzah extends zzi<zzah> {
    private String zzuw;
    private int zzux;
    private int zzuy;
    private String zzuz;
    private String zzva;
    private boolean zzvb;
    private boolean zzvc;

    public zzah() {
        this(false);
    }

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private zzah(boolean r5) {
        /*
            r4 = this;
            java.util.UUID r5 = java.util.UUID.randomUUID()
            long r0 = r5.getLeastSignificantBits()
            r2 = 2147483647(0x7fffffff, double:1.060997895E-314)
            long r0 = r0 & r2
            int r0 = (int) r0
            if (r0 == 0) goto L_0x0010
            goto L_0x0023
        L_0x0010:
            long r0 = r5.getMostSignificantBits()
            long r0 = r0 & r2
            int r0 = (int) r0
            if (r0 == 0) goto L_0x0019
            goto L_0x0023
        L_0x0019:
            java.lang.String r5 = "GAv4"
            java.lang.String r0 = "UUID.randomUUID() returned 0."
            android.util.Log.e(r5, r0)
            r0 = 2147483647(0x7fffffff, float:NaN)
        L_0x0023:
            r5 = 0
            r4.<init>(r5, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzah.<init>(boolean):void");
    }

    @ShowFirstParty
    @VisibleForTesting
    private zzah(boolean z, int i) {
        Preconditions.checkNotZero(i);
        this.zzux = i;
        this.zzvc = false;
    }

    public final String zzbk() {
        return this.zzuw;
    }

    public final int zzbl() {
        return this.zzux;
    }

    public final String zzbm() {
        return this.zzva;
    }

    public final String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put("screenName", this.zzuw);
        hashMap.put("interstitial", Boolean.valueOf(this.zzvb));
        hashMap.put(AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_AUTOMATIC, Boolean.valueOf(this.zzvc));
        hashMap.put("screenId", Integer.valueOf(this.zzux));
        hashMap.put("referrerScreenId", Integer.valueOf(this.zzuy));
        hashMap.put("referrerScreenName", this.zzuz);
        hashMap.put("referrerUri", this.zzva);
        return zza((Object) hashMap);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.google.android.gms.analytics.zzi] */
    @Override // com.google.android.gms.analytics.zzi
    public final /* synthetic */ void zzb(zzah zzah) {
        zzah zzah2 = zzah;
        if (!TextUtils.isEmpty(this.zzuw)) {
            zzah2.zzuw = this.zzuw;
        }
        if (this.zzux != 0) {
            zzah2.zzux = this.zzux;
        }
        if (this.zzuy != 0) {
            zzah2.zzuy = this.zzuy;
        }
        if (!TextUtils.isEmpty(this.zzuz)) {
            zzah2.zzuz = this.zzuz;
        }
        if (!TextUtils.isEmpty(this.zzva)) {
            String str = this.zzva;
            if (TextUtils.isEmpty(str)) {
                zzah2.zzva = null;
            } else {
                zzah2.zzva = str;
            }
        }
        if (this.zzvb) {
            zzah2.zzvb = this.zzvb;
        }
        if (this.zzvc) {
            zzah2.zzvc = this.zzvc;
        }
    }
}
