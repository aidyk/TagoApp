package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import java.util.Locale;

public final class zzdh extends zzau {
    private String zzaaq;
    private String zzaar;
    protected int zzaat;
    private int zzacq;
    protected boolean zzacr;
    private boolean zzacs;
    private boolean zzact;

    public zzdh(zzaw zzaw) {
        super(zzaw);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzau
    public final void zzag() {
        ApplicationInfo applicationInfo;
        int i;
        zzcj zzcj;
        int i2;
        Context context = getContext();
        try {
            applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
        } catch (PackageManager.NameNotFoundException e) {
            zzd("PackageManager doesn't know about the app package", e);
            applicationInfo = null;
        }
        if (applicationInfo == null) {
            zzt("Couldn't get ApplicationInfo to load global config");
            return;
        }
        Bundle bundle = applicationInfo.metaData;
        if (bundle != null && (i = bundle.getInt("com.google.android.gms.analytics.globalConfigResource")) > 0 && (zzcj = (zzcj) new zzch(zzbw()).zzq(i)) != null) {
            zzq("Loading global XML config values");
            boolean z = false;
            if (zzcj.zzaaq != null) {
                String str = zzcj.zzaaq;
                this.zzaaq = str;
                zzb("XML config - app name", str);
            }
            if (zzcj.zzaar != null) {
                String str2 = zzcj.zzaar;
                this.zzaar = str2;
                zzb("XML config - app version", str2);
            }
            if (zzcj.zzaas != null) {
                String lowerCase = zzcj.zzaas.toLowerCase(Locale.US);
                if ("verbose".equals(lowerCase)) {
                    i2 = 0;
                } else if ("info".equals(lowerCase)) {
                    i2 = 1;
                } else if ("warning".equals(lowerCase)) {
                    i2 = 2;
                } else {
                    i2 = "error".equals(lowerCase) ? 3 : -1;
                }
                if (i2 >= 0) {
                    this.zzacq = i2;
                    zza("XML config - log level", Integer.valueOf(i2));
                }
            }
            if (zzcj.zzaat >= 0) {
                int i3 = zzcj.zzaat;
                this.zzaat = i3;
                this.zzacr = true;
                zzb("XML config - dispatch period (sec)", Integer.valueOf(i3));
            }
            if (zzcj.zzaau != -1) {
                if (zzcj.zzaau == 1) {
                    z = true;
                }
                this.zzact = z;
                this.zzacs = true;
                zzb("XML config - dry run", Boolean.valueOf(z));
            }
        }
    }

    public final String zzak() {
        zzcl();
        return this.zzaar;
    }

    public final String zzaj() {
        zzcl();
        return this.zzaaq;
    }

    public final boolean zzfr() {
        zzcl();
        return false;
    }

    public final boolean zzfs() {
        zzcl();
        return this.zzacs;
    }

    public final boolean zzft() {
        zzcl();
        return this.zzact;
    }
}
