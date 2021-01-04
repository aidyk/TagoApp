package com.google.android.gms.tagmanager;

import android.content.Context;
import android.net.Uri;
import com.google.android.gms.tagmanager.DataLayer;
import java.util.Map;

/* access modifiers changed from: package-private */
public final class zzg implements DataLayer.zzb {
    private final Context zzri;

    public zzg(Context context) {
        this.zzri = context;
    }

    @Override // com.google.android.gms.tagmanager.DataLayer.zzb
    public final void zzf(Map<String, Object> map) {
        String queryParameter;
        Object obj;
        Object obj2 = map.get("gtm.url");
        if (obj2 == null && (obj = map.get("gtm")) != null && (obj instanceof Map)) {
            obj2 = ((Map) obj).get("url");
        }
        if (obj2 != null && (obj2 instanceof String) && (queryParameter = Uri.parse((String) obj2).getQueryParameter("referrer")) != null) {
            zzcw.zzh(this.zzri, queryParameter);
        }
    }
}
