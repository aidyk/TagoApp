package com.google.android.gms.tagmanager;

import android.content.Context;
import android.provider.Settings;
import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzp;
import java.util.Map;

/* access modifiers changed from: package-private */
public final class zzdm extends zzbq {
    private static final String ID = zza.MOBILE_ADWORDS_UNIQUE_ID.toString();
    private final Context zzri;

    public zzdm(Context context) {
        super(ID, new String[0]);
        this.zzri = context;
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final boolean zznk() {
        return true;
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final zzp zze(Map<String, zzp> map) {
        String string = Settings.Secure.getString(this.zzri.getContentResolver(), "android_id");
        return string == null ? zzgj.zzqq() : zzgj.zzj(string);
    }
}
