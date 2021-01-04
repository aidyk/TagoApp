package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.pm.PackageManager;
import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzp;
import java.util.Map;

/* access modifiers changed from: package-private */
public final class zzk extends zzbq {
    private static final String ID = zza.APP_VERSION.toString();
    private final Context zzri;

    public zzk(Context context) {
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
            return zzgj.zzj(Integer.valueOf(this.zzri.getPackageManager().getPackageInfo(this.zzri.getPackageName(), 0).versionCode));
        } catch (PackageManager.NameNotFoundException e) {
            String packageName = this.zzri.getPackageName();
            String message = e.getMessage();
            StringBuilder sb = new StringBuilder(String.valueOf(packageName).length() + 25 + String.valueOf(message).length());
            sb.append("Package name ");
            sb.append(packageName);
            sb.append(" not found. ");
            sb.append(message);
            zzdi.e(sb.toString());
            return zzgj.zzqq();
        }
    }
}
