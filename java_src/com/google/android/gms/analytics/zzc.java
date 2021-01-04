package com.google.android.gms.analytics;

import android.content.BroadcastReceiver;

final class zzc implements Runnable {
    private final /* synthetic */ BroadcastReceiver.PendingResult zzrf;

    zzc(CampaignTrackingReceiver campaignTrackingReceiver, BroadcastReceiver.PendingResult pendingResult) {
        this.zzrf = pendingResult;
    }

    public final void run() {
        if (this.zzrf != null) {
            this.zzrf.finish();
        }
    }
}
