package com.google.android.gms.tagmanager;

import android.content.Context;
import android.net.Uri;
import com.facebook.internal.ServerProtocol;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzb;
import com.google.android.gms.internal.measurement.zzp;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* access modifiers changed from: package-private */
public class zzm extends zzgh {
    private static final String ID = com.google.android.gms.internal.measurement.zza.ARBITRARY_PIXEL.toString();
    private static final String URL = zzb.URL.toString();
    private static final String zzazu = zzb.ADDITIONAL_PARAMS.toString();
    private static final String zzazv = zzb.UNREPEATABLE.toString();
    private static final String zzazw;
    private static final Set<String> zzazx = new HashSet();
    private final zza zzazy;
    private final Context zzri;

    public interface zza {
        zzbx zznl();
    }

    public zzm(Context context) {
        this(context, new zzn(context));
    }

    @VisibleForTesting
    private zzm(Context context, zza zza2) {
        super(ID, URL);
        this.zzazy = zza2;
        this.zzri = context;
    }

    @Override // com.google.android.gms.tagmanager.zzgh
    public final void zzg(Map<String, zzp> map) {
        String zzc = map.get(zzazv) != null ? zzgj.zzc(map.get(zzazv)) : null;
        if (zzc == null || !zzdd(zzc)) {
            Uri.Builder buildUpon = Uri.parse(zzgj.zzc(map.get(URL))).buildUpon();
            zzp zzp = map.get(zzazu);
            if (zzp != null) {
                Object zzh = zzgj.zzh(zzp);
                if (!(zzh instanceof List)) {
                    String valueOf = String.valueOf(buildUpon.build().toString());
                    zzdi.e(valueOf.length() != 0 ? "ArbitraryPixel: additional params not a list: not sending partial hit: ".concat(valueOf) : new String("ArbitraryPixel: additional params not a list: not sending partial hit: "));
                    return;
                }
                for (Object obj : (List) zzh) {
                    if (!(obj instanceof Map)) {
                        String valueOf2 = String.valueOf(buildUpon.build().toString());
                        zzdi.e(valueOf2.length() != 0 ? "ArbitraryPixel: additional params contains non-map: not sending partial hit: ".concat(valueOf2) : new String("ArbitraryPixel: additional params contains non-map: not sending partial hit: "));
                        return;
                    }
                    for (Map.Entry entry : ((Map) obj).entrySet()) {
                        buildUpon.appendQueryParameter(entry.getKey().toString(), entry.getValue().toString());
                    }
                }
            }
            String uri = buildUpon.build().toString();
            this.zzazy.zznl().zzdq(uri);
            String valueOf3 = String.valueOf(uri);
            zzdi.v(valueOf3.length() != 0 ? "ArbitraryPixel: url = ".concat(valueOf3) : new String("ArbitraryPixel: url = "));
            if (zzc != null) {
                synchronized (zzm.class) {
                    zzazx.add(zzc);
                    zzft.zza(this.zzri, zzazw, zzc, ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
                }
            }
        }
    }

    private final synchronized boolean zzdd(String str) {
        if (zzazx.contains(str)) {
            return true;
        }
        if (!this.zzri.getSharedPreferences(zzazw, 0).contains(str)) {
            return false;
        }
        zzazx.add(str);
        return true;
    }

    static {
        String str = ID;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 17);
        sb.append("gtm_");
        sb.append(str);
        sb.append("_unrepeatable");
        zzazw = sb.toString();
    }
}
