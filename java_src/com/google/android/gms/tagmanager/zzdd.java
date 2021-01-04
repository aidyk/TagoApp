package com.google.android.gms.tagmanager;

import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzp;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

@ShowFirstParty
@VisibleForTesting
public final class zzdd extends zzbq {
    private static final String ID = zza.LANGUAGE.toString();

    public zzdd() {
        super(ID, new String[0]);
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final boolean zznk() {
        return false;
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final zzp zze(Map<String, zzp> map) {
        Locale locale = Locale.getDefault();
        if (locale == null) {
            return zzgj.zzqq();
        }
        String language = locale.getLanguage();
        if (language == null) {
            return zzgj.zzqq();
        }
        return zzgj.zzj(language.toLowerCase());
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final /* bridge */ /* synthetic */ Set zzou() {
        return super.zzou();
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final /* bridge */ /* synthetic */ String zzot() {
        return super.zzot();
    }
}
