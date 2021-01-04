package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.pm.PackageManager;
import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzp;
import java.util.Map;

/* access modifiers changed from: package-private */
public final class zzj extends zzbq {
    private static final String ID = zza.APP_NAME.toString();
    private final Context zzri;

    public zzj(Context context) {
        super(ID, new String[0]);
        this.zzri = context;
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final boolean zznk() {
        return true;
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final zzp zze(Map<String, zzp> map) {
        try {
            PackageManager packageManager = this.zzri.getPackageManager();
            return zzgj.zzj(packageManager.getApplicationLabel(packageManager.getApplicationInfo(this.zzri.getPackageName(), 0)).toString());
        } catch (PackageManager.NameNotFoundException e) {
            zzdi.zza("App name is not found.", e);
            return zzgj.zzqq();
        }
    }
}
