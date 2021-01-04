package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.common.util.VisibleForTesting;

public final class zzbb implements zzbx {
    private static final Object zzazo = new Object();
    private static zzbb zzbcf;
    private zzej zzbas;
    private zzby zzbcg;

    private zzbb(Context context) {
        this(zzbz.zzv(context), new zzfl());
    }

    @VisibleForTesting
    private zzbb(zzby zzby, zzej zzej) {
        this.zzbcg = zzby;
        this.zzbas = zzej;
    }

    public static zzbx zzp(Context context) {
        zzbb zzbb;
        synchronized (zzazo) {
            if (zzbcf == null) {
                zzbcf = new zzbb(context);
            }
            zzbb = zzbcf;
        }
        return zzbb;
    }

    @Override // com.google.android.gms.tagmanager.zzbx
    public final boolean zzdq(String str) {
        if (!this.zzbas.zzew()) {
            zzdi.zzab("Too many urls sent too quickly with the TagManagerSender, rate limiting invoked.");
            return false;
        }
        this.zzbcg.zzdv(str);
        return true;
    }
}
