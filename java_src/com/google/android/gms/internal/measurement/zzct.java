package com.google.android.gms.internal.measurement;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.analytics.zzk;

public final class zzct extends zzau {
    private SharedPreferences zzabr;
    private long zzabs;
    private long zzabt = -1;
    private final zzcv zzabu = new zzcv(this, "monitoring", zzcf.zzaak.get().longValue());

    protected zzct(zzaw zzaw) {
        super(zzaw);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzau
    public final void zzag() {
        this.zzabr = getContext().getSharedPreferences("com.google.android.gms.analytics.prefs", 0);
    }

    public final long zzff() {
        zzk.zzaf();
        zzcl();
        if (this.zzabs == 0) {
            long j = this.zzabr.getLong("first_run", 0);
            if (j != 0) {
                this.zzabs = j;
            } else {
                long currentTimeMillis = zzbx().currentTimeMillis();
                SharedPreferences.Editor edit = this.zzabr.edit();
                edit.putLong("first_run", currentTimeMillis);
                if (!edit.commit()) {
                    zzt("Failed to commit first run time");
                }
                this.zzabs = currentTimeMillis;
            }
        }
        return this.zzabs;
    }

    public final zzdc zzfg() {
        return new zzdc(zzbx(), zzff());
    }

    public final long zzfh() {
        zzk.zzaf();
        zzcl();
        if (this.zzabt == -1) {
            this.zzabt = this.zzabr.getLong("last_dispatch", 0);
        }
        return this.zzabt;
    }

    public final void zzfi() {
        zzk.zzaf();
        zzcl();
        long currentTimeMillis = zzbx().currentTimeMillis();
        SharedPreferences.Editor edit = this.zzabr.edit();
        edit.putLong("last_dispatch", currentTimeMillis);
        edit.apply();
        this.zzabt = currentTimeMillis;
    }

    public final String zzfj() {
        zzk.zzaf();
        zzcl();
        String string = this.zzabr.getString("installation_campaign", null);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        return string;
    }

    public final void zzac(String str) {
        zzk.zzaf();
        zzcl();
        SharedPreferences.Editor edit = this.zzabr.edit();
        if (TextUtils.isEmpty(str)) {
            edit.remove("installation_campaign");
        } else {
            edit.putString("installation_campaign", str);
        }
        if (!edit.commit()) {
            zzt("Failed to commit campaign data");
        }
    }

    public final zzcv zzfk() {
        return this.zzabu;
    }
}
