package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.measurement.zzp;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

/* access modifiers changed from: package-private */
public final class zzgn {
    static zzdz<zzp> zza(zzdz<zzp> zzdz, int... iArr) {
        for (int i : iArr) {
            if (!(zzgj.zzh(zzdz.getObject()) instanceof String)) {
                zzdi.e("Escaping can only be applied to strings.");
            } else if (i != 12) {
                StringBuilder sb = new StringBuilder(39);
                sb.append("Unsupported Value Escaping: ");
                sb.append(i);
                zzdi.e(sb.toString());
            } else {
                zzdz = zza(zzdz);
            }
        }
        return zzdz;
    }

    static String zzek(String str) throws UnsupportedEncodingException {
        return URLEncoder.encode(str, "UTF-8").replaceAll("\\+", "%20");
    }

    private static zzdz<zzp> zza(zzdz<zzp> zzdz) {
        try {
            return new zzdz<>(zzgj.zzj(zzek(zzgj.zzc(zzdz.getObject()))), zzdz.zzpi());
        } catch (UnsupportedEncodingException e) {
            zzdi.zza("Escape URI: unsupported encoding", e);
            return zzdz;
        }
    }
}
