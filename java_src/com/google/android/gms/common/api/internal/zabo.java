package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import java.util.Collections;

final class zabo implements Runnable {
    private final /* synthetic */ ConnectionResult zaiy;
    private final /* synthetic */ GoogleApiManager.zac zajf;

    zabo(GoogleApiManager.zac zac, ConnectionResult connectionResult) {
        this.zajf = zac;
        this.zaiy = connectionResult;
    }

    public final void run() {
        if (this.zaiy.isSuccess()) {
            this.zajf.zaje = true;
            if (this.zajf.zain.requiresSignIn()) {
                this.zajf.zabr();
                return;
            }
            try {
                this.zajf.zain.getRemoteService(null, Collections.emptySet());
            } catch (SecurityException unused) {
                ((GoogleApiManager.zaa) GoogleApiManager.this.zaih.get(this.zajf.zafp)).onConnectionFailed(new ConnectionResult(10));
            }
        } else {
            ((GoogleApiManager.zaa) GoogleApiManager.this.zaih.get(this.zajf.zafp)).onConnectionFailed(this.zaiy);
        }
    }
}
