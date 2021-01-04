package com.google.android.gms.tagmanager;

import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.util.VisibleForTesting;

@ShowFirstParty
public final class zzdi {
    @VisibleForTesting
    private static zzdj zzbdx = new zzba();
    static int zzyn;

    public static void setLogLevel(int i) {
        zzyn = i;
        zzbdx.setLogLevel(i);
    }

    public static void e(String str) {
        zzbdx.e(str);
    }

    public static void zza(String str, Throwable th) {
        zzbdx.zza(str, th);
    }

    public static void zzab(String str) {
        zzbdx.zzab(str);
    }

    public static void zzb(String str, Throwable th) {
        zzbdx.zzb(str, th);
    }

    public static void zzdo(String str) {
        zzbdx.zzdo(str);
    }

    public static void zzdp(String str) {
        zzbdx.zzdp(str);
    }

    public static void v(String str) {
        zzbdx.v(str);
    }
}
