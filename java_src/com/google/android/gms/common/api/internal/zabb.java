package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.internal.base.zal;

/* access modifiers changed from: package-private */
public final class zabb extends zal {
    private final /* synthetic */ zaaw zahg;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    zabb(zaaw zaaw, Looper looper) {
        super(looper);
        this.zahg = zaaw;
    }

    public final void handleMessage(Message message) {
        switch (message.what) {
            case 1:
                this.zahg.zaav();
                return;
            case 2:
                this.zahg.resume();
                return;
            default:
                int i = message.what;
                StringBuilder sb = new StringBuilder(31);
                sb.append("Unknown message id: ");
                sb.append(i);
                Log.w("GoogleApiClientImpl", sb.toString());
                return;
        }
    }
}
