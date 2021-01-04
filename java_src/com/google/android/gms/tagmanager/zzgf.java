package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.analytics.Tracker;
import com.google.android.gms.common.internal.ShowFirstParty;

@ShowFirstParty
public final class zzgf {
    private Tracker zzrh;
    private Context zzri;
    private GoogleAnalytics zzrk;

    public zzgf(Context context) {
        this.zzri = context;
    }

    public final Tracker zzee(String str) {
        zzef(str);
        return this.zzrh;
    }

    private final synchronized void zzef(String str) {
        if (this.zzrk == null) {
            this.zzrk = GoogleAnalytics.getInstance(this.zzri);
            this.zzrk.setLogger(new zzgg());
            this.zzrh = this.zzrk.newTracker(str);
        }
    }
}
