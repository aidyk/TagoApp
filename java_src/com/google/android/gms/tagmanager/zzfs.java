package com.google.android.gms.tagmanager;

import android.os.Handler;
import android.os.Message;

/* access modifiers changed from: package-private */
public final class zzfs implements Handler.Callback {
    private final /* synthetic */ zzfr zzbgv;

    zzfs(zzfr zzfr) {
        this.zzbgv = zzfr;
    }

    public final boolean handleMessage(Message message) {
        if (1 == message.what && zzfn.zzbgi.equals(message.obj)) {
            this.zzbgv.zzbgu.dispatch();
            if (!(this.zzbgv.zzbgu.isPowerSaveMode())) {
                this.zzbgv.zzh((long) this.zzbgv.zzbgu.zzbgm);
            }
        }
        return true;
    }
}
