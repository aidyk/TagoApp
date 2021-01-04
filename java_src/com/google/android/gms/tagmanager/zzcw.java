package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.HashMap;
import java.util.Map;

@ShowFirstParty
@VisibleForTesting
public class zzcw {
    private static String zzbdf;
    @VisibleForTesting
    static Map<String, String> zzbdg = new HashMap();

    public static void zzdw(String str) {
        synchronized (zzcw.class) {
            zzbdf = str;
        }
    }

    static void zzf(Context context, String str) {
        zzft.zza(context, "gtm_install_referrer", "referrer", str);
        zzh(context, str);
    }

    public static String zzg(Context context, String str) {
        if (zzbdf == null) {
            synchronized (zzcw.class) {
                if (zzbdf == null) {
                    SharedPreferences sharedPreferences = context.getSharedPreferences("gtm_install_referrer", 0);
                    if (sharedPreferences != null) {
                        zzbdf = sharedPreferences.getString("referrer", "");
                    } else {
                        zzbdf = "";
                    }
                }
            }
        }
        return zzw(zzbdf, str);
    }

    public static void zzh(Context context, String str) {
        String zzw = zzw(str, "conv");
        if (zzw != null && zzw.length() > 0) {
            zzbdg.put(zzw, str);
            zzft.zza(context, "gtm_click_referrers", zzw, str);
        }
    }

    public static String zzw(String str, String str2) {
        if (str2 != null) {
            String valueOf = String.valueOf(str);
            return Uri.parse(valueOf.length() != 0 ? "http://hostname/?".concat(valueOf) : new String("http://hostname/?")).getQueryParameter(str2);
        } else if (str.length() > 0) {
            return str;
        } else {
            return null;
        }
    }
}
