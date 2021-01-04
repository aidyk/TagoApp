package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzb;
import com.google.android.gms.internal.measurement.zzp;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

/* access modifiers changed from: package-private */
public final class zzek extends zzbq {
    private static final String ID = zza.REGEX_GROUP.toString();
    private static final String zzbev = zzb.ARG0.toString();
    private static final String zzbew = zzb.ARG1.toString();
    private static final String zzbex = zzb.IGNORE_CASE.toString();
    private static final String zzbey = zzb.GROUP.toString();

    public zzek() {
        super(ID, zzbev, zzbew);
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final boolean zznk() {
        return true;
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final zzp zze(Map<String, zzp> map) {
        zzp zzp = map.get(zzbev);
        zzp zzp2 = map.get(zzbew);
        if (zzp == null || zzp == zzgj.zzqq() || zzp2 == null || zzp2 == zzgj.zzqq()) {
            return zzgj.zzqq();
        }
        int i = 64;
        if (zzgj.zzg(map.get(zzbex)).booleanValue()) {
            i = 66;
        }
        int i2 = 1;
        zzp zzp3 = map.get(zzbey);
        if (zzp3 != null) {
            Long zze = zzgj.zze(zzp3);
            if (zze == zzgj.zzql()) {
                return zzgj.zzqq();
            }
            i2 = zze.intValue();
            if (i2 < 0) {
                return zzgj.zzqq();
            }
        }
        try {
            String zzc = zzgj.zzc(zzp);
            String zzc2 = zzgj.zzc(zzp2);
            String str = null;
            Matcher matcher = Pattern.compile(zzc2, i).matcher(zzc);
            if (matcher.find() && matcher.groupCount() >= i2) {
                str = matcher.group(i2);
            }
            return str == null ? zzgj.zzqq() : zzgj.zzj(str);
        } catch (PatternSyntaxException unused) {
            return zzgj.zzqq();
        }
    }
}
