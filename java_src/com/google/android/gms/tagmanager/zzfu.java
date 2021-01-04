package com.google.android.gms.tagmanager;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import com.google.android.gms.common.util.VisibleForTesting;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Locale;

final class zzfu implements zzbe {
    private final String zzabl;
    private final zzfx zzbgw;
    private final zzfw zzbgx;
    private final Context zzri;

    @VisibleForTesting
    private zzfu(zzfx zzfx, Context context, zzfw zzfw) {
        this.zzbgw = zzfx;
        this.zzri = context.getApplicationContext();
        this.zzbgx = zzfw;
        String str = Build.VERSION.RELEASE;
        Locale locale = Locale.getDefault();
        String str2 = null;
        if (!(locale == null || locale.getLanguage() == null || locale.getLanguage().length() == 0)) {
            StringBuilder sb = new StringBuilder();
            sb.append(locale.getLanguage().toLowerCase());
            if (!(locale.getCountry() == null || locale.getCountry().length() == 0)) {
                sb.append("-");
                sb.append(locale.getCountry().toLowerCase());
            }
            str2 = sb.toString();
        }
        this.zzabl = String.format("%s/%s (Linux; U; Android %s; %s; %s Build/%s)", "GoogleTagManager", "4.00", str, str2, Build.MODEL, Build.ID);
    }

    @VisibleForTesting
    zzfu(Context context, zzfw zzfw) {
        this(new zzfv(), context, zzfw);
    }

    @Override // com.google.android.gms.tagmanager.zzbe
    public final boolean zzom() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.zzri.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
            return true;
        }
        zzdi.v("...no network connectivity");
        return false;
    }

    /* JADX WARNING: Removed duplicated region for block: B:26:0x007c  */
    @Override // com.google.android.gms.tagmanager.zzbe
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zze(java.util.List<com.google.android.gms.tagmanager.zzbw> r11) {
        /*
        // Method dump skipped, instructions count: 183
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzfu.zze(java.util.List):void");
    }

    @VisibleForTesting
    private static URL zzd(zzbw zzbw) {
        try {
            return new URL(zzbw.zzox());
        } catch (MalformedURLException unused) {
            zzdi.e("Error trying to parse the GTM url.");
            return null;
        }
    }
}
