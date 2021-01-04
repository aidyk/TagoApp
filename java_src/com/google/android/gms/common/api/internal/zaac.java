package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;

/* access modifiers changed from: package-private */
public final class zaac implements PendingResult.StatusListener {
    private final /* synthetic */ BasePendingResult zafl;
    private final /* synthetic */ zaab zafm;

    zaac(zaab zaab, BasePendingResult basePendingResult) {
        this.zafm = zaab;
        this.zafl = basePendingResult;
    }

    @Override // com.google.android.gms.common.api.PendingResult.StatusListener
    public final void onComplete(Status status) {
        this.zafm.zafj.remove(this.zafl);
    }
}
