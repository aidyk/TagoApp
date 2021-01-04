package com.google.android.gms.tagmanager;

import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzb;
import com.google.android.gms.internal.measurement.zzp;
import com.google.android.gms.internal.measurement.zzrx;
import com.google.android.gms.internal.measurement.zzrz;
import com.google.android.gms.internal.measurement.zzsa;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

final class zzda {
    public static zzrz zzdx(String str) throws JSONException {
        zzp zzj = zzgj.zzj(zzh(new JSONObject(str)));
        zzsa zztb = zzrz.zztb();
        for (int i = 0; i < zzj.zzqk.length; i++) {
            zztb.zzc(zzrx.zzsz().zzb(zzb.INSTANCE_NAME.toString(), zzj.zzqk[i]).zzb(zzb.FUNCTION.toString(), zzgj.zzeh(zzt.zznm())).zzb(zzt.zznn(), zzj.zzql[i]).zzta());
        }
        return zztb.zztd();
    }

    @VisibleForTesting
    private static Object zzh(Object obj) throws JSONException {
        if (obj instanceof JSONArray) {
            throw new RuntimeException("JSONArrays are not supported");
        } else if (JSONObject.NULL.equals(obj)) {
            throw new RuntimeException("JSON nulls are not supported");
        } else if (!(obj instanceof JSONObject)) {
            return obj;
        } else {
            JSONObject jSONObject = (JSONObject) obj;
            HashMap hashMap = new HashMap();
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                hashMap.put(next, zzh(jSONObject.get(next)));
            }
            return hashMap;
        }
    }
}
