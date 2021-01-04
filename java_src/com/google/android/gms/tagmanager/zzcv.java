package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzb;
import com.google.android.gms.internal.measurement.zzp;
import java.util.Map;

/* access modifiers changed from: package-private */
public final class zzcv extends zzbq {
    private static final String ID = zza.INSTALL_REFERRER.toString();
    private static final String zzazs = zzb.COMPONENT.toString();
    private final Context zzri;

    public zzcv(Context context) {
        super(ID, new String[0]);
        this.zzri = context;
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final boolean zznk() {
        return true;
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final zzp zze(Map<String, zzp> map) {
        String zzg = zzcw.zzg(this.zzri, map.get(zzazs) != null ? zzgj.zzc(map.get(zzazs)) : null);
        return zzg != null ? zzgj.zzj(zzg) : zzgj.zzqq();
    }
}
