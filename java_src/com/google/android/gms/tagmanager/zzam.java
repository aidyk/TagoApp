package com.google.android.gms.tagmanager;

import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzb;
import com.google.android.gms.internal.measurement.zzp;
import java.util.HashMap;
import java.util.Map;

/* access modifiers changed from: package-private */
@VisibleForTesting
public final class zzam extends zzbq {
    private static final String ID = zza.FUNCTION_CALL.toString();
    private static final String zzazu = zzb.ADDITIONAL_PARAMS.toString();
    private static final String zzbbi = zzb.FUNCTION_CALL_NAME.toString();
    private final zzan zzbbj;

    public zzam(zzan zzan) {
        super(ID, zzbbi);
        this.zzbbj = zzan;
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final boolean zznk() {
        return false;
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final zzp zze(Map<String, zzp> map) {
        String zzc = zzgj.zzc(map.get(zzbbi));
        HashMap hashMap = new HashMap();
        zzp zzp = map.get(zzazu);
        if (zzp != null) {
            Object zzh = zzgj.zzh(zzp);
            if (!(zzh instanceof Map)) {
                zzdi.zzab("FunctionCallMacro: expected ADDITIONAL_PARAMS to be a map.");
                return zzgj.zzqq();
            }
            for (Map.Entry entry : ((Map) zzh).entrySet()) {
                hashMap.put(entry.getKey().toString(), entry.getValue());
            }
        }
        try {
            return zzgj.zzj(this.zzbbj.zza(zzc, hashMap));
        } catch (Exception e) {
            String message = e.getMessage();
            StringBuilder sb = new StringBuilder(String.valueOf(zzc).length() + 34 + String.valueOf(message).length());
            sb.append("Custom macro/tag ");
            sb.append(zzc);
            sb.append(" threw exception ");
            sb.append(message);
            zzdi.zzab(sb.toString());
            return zzgj.zzqq();
        }
    }
}
