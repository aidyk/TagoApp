package com.google.android.gms.common.api.internal;

import android.support.annotation.NonNull;
import com.google.android.gms.auth.api.signin.internal.Storage;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;

/* access modifiers changed from: package-private */
public final class zaba implements ResultCallback<Status> {
    private final /* synthetic */ zaaw zahg;
    private final /* synthetic */ StatusPendingResult zahi;
    private final /* synthetic */ boolean zahj;
    private final /* synthetic */ GoogleApiClient zahk;

    zaba(zaaw zaaw, StatusPendingResult statusPendingResult, boolean z, GoogleApiClient googleApiClient) {
        this.zahg = zaaw;
        this.zahi = statusPendingResult;
        this.zahj = z;
        this.zahk = googleApiClient;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.google.android.gms.common.api.Result] */
    @Override // com.google.android.gms.common.api.ResultCallback
    public final /* synthetic */ void onResult(@NonNull Status status) {
        Status status2 = status;
        Storage.getInstance(this.zahg.mContext).zaf();
        if (status2.isSuccess() && this.zahg.isConnected()) {
            this.zahg.reconnect();
        }
        this.zahi.setResult(status2);
        if (this.zahj) {
            this.zahk.disconnect();
        }
    }
}
