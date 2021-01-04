package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzb;
import com.google.android.gms.internal.measurement.zzp;
import java.util.Map;

/* access modifiers changed from: package-private */
public final class zzh extends zzbq {
    private static final String ID = zza.ADWORDS_CLICK_REFERRER.toString();
    private static final String zzazs = zzb.COMPONENT.toString();
    private static final String zzazt = zzb.CONVERSION_ID.toString();
    private final Context zzri;

    public zzh(Context context) {
        super(ID, zzazt);
        this.zzri = context;
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final boolean zznk() {
        return true;
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final zzp zze(Map<String, zzp> map) {
        zzp zzp = map.get(zzazt);
        if (zzp == null) {
            return zzgj.zzqq();
        }
        String zzc = zzgj.zzc(zzp);
        zzp zzp2 = map.get(zzazs);
        String zzc2 = zzp2 != null ? zzgj.zzc(zzp2) : null;
        Context context = this.zzri;
        String str = zzcw.zzbdg.get(zzc);
        if (str == null) {
            SharedPreferences sharedPreferences = context.getSharedPreferences("gtm_click_referrers", 0);
            str = sharedPreferences != null ? sharedPreferences.getString(zzc, "") : "";
            zzcw.zzbdg.put(zzc, str);
        }
        String zzw = zzcw.zzw(str, zzc2);
        return zzw != null ? zzgj.zzj(zzw) : zzgj.zzqq();
    }
}
