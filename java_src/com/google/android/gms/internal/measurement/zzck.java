package com.google.android.gms.internal.measurement;

import android.text.TextUtils;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public final class zzck {
    private final List<zzbr> zzaav;
    private final long zzaaw;
    private final long zzaax;
    private final int zzaay;
    private final boolean zzaaz;
    private final String zzaba;
    private final Map<String, String> zzsy;

    public zzck(zzat zzat, Map<String, String> map, long j, boolean z) {
        this(zzat, map, j, z, 0, 0, null);
    }

    public zzck(zzat zzat, Map<String, String> map, long j, boolean z, long j2, int i) {
        this(zzat, map, j, z, j2, i, null);
    }

    /* JADX WARNING: Removed duplicated region for block: B:15:0x0047  */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x005d  */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0091  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00bf  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public zzck(com.google.android.gms.internal.measurement.zzat r1, java.util.Map<java.lang.String, java.lang.String> r2, long r3, boolean r5, long r6, int r8, java.util.List<com.google.android.gms.internal.measurement.zzbr> r9) {
        /*
        // Method dump skipped, instructions count: 230
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzck.<init>(com.google.android.gms.internal.measurement.zzat, java.util.Map, long, boolean, long, int, java.util.List):void");
    }

    private static boolean zzc(Object obj) {
        if (obj == null) {
            return false;
        }
        return obj.toString().startsWith("&");
    }

    private static String zza(zzat zzat, Object obj) {
        if (obj == null) {
            return null;
        }
        String obj2 = obj.toString();
        if (obj2.startsWith("&")) {
            obj2 = obj2.substring(1);
        }
        int length = obj2.length();
        if (length > 256) {
            obj2 = obj2.substring(0, 256);
            zzat.zzc("Hit param name is too long and will be trimmed", Integer.valueOf(length), obj2);
        }
        if (TextUtils.isEmpty(obj2)) {
            return null;
        }
        return obj2;
    }

    private static String zzb(zzat zzat, Object obj) {
        String obj2 = obj == null ? "" : obj.toString();
        int length = obj2.length();
        if (length <= 8192) {
            return obj2;
        }
        String substring = obj2.substring(0, 8192);
        zzat.zzc("Hit param value is too long and will be trimmed", Integer.valueOf(length), substring);
        return substring;
    }

    public final int zzep() {
        return this.zzaay;
    }

    public final Map<String, String> zzcw() {
        return this.zzsy;
    }

    public final long zzeq() {
        return this.zzaaw;
    }

    public final long zzer() {
        return this.zzaax;
    }

    public final List<zzbr> zzes() {
        return this.zzaav;
    }

    public final boolean zzet() {
        return this.zzaaz;
    }

    public final long zzeu() {
        return zzdg.zzaf(zzd("_s", AppEventsConstants.EVENT_PARAM_VALUE_NO));
    }

    public final String zzev() {
        return zzd("_m", "");
    }

    private final String zzd(String str, String str2) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkArgument(!str.startsWith("&"), "Short param name required");
        String str3 = this.zzsy.get(str);
        return str3 != null ? str3 : str2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ht=");
        sb.append(this.zzaax);
        if (this.zzaaw != 0) {
            sb.append(", dbId=");
            sb.append(this.zzaaw);
        }
        if (this.zzaay != 0) {
            sb.append(", appUID=");
            sb.append(this.zzaay);
        }
        ArrayList arrayList = new ArrayList(this.zzsy.keySet());
        Collections.sort(arrayList);
        ArrayList arrayList2 = arrayList;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList2.get(i);
            i++;
            String str = (String) obj;
            sb.append(", ");
            sb.append(str);
            sb.append("=");
            sb.append(this.zzsy.get(str));
        }
        return sb.toString();
    }
}
