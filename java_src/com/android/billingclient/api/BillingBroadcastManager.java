package com.android.billingclient.api;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.annotation.NonNull;
import com.android.billingclient.util.BillingHelper;

/* access modifiers changed from: package-private */
public class BillingBroadcastManager {
    private static final String ACTION = "com.android.vending.billing.PURCHASES_UPDATED";
    private static final String TAG = "BillingBroadcastManager";
    private final Context mContext;
    private final BillingBroadcastReceiver mReceiver;

    BillingBroadcastManager(Context context, @NonNull PurchasesUpdatedListener purchasesUpdatedListener) {
        this.mContext = context;
        this.mReceiver = new BillingBroadcastReceiver(purchasesUpdatedListener);
    }

    /* access modifiers changed from: package-private */
    public void registerReceiver() {
        this.mContext.registerReceiver(this.mReceiver, new IntentFilter(ACTION));
    }

    /* access modifiers changed from: package-private */
    public PurchasesUpdatedListener getListener() {
        return this.mReceiver.mListener;
    }

    /* access modifiers changed from: package-private */
    public void destroy() {
        try {
            this.mContext.unregisterReceiver(this.mReceiver);
        } catch (IllegalArgumentException e) {
            BillingHelper.logWarn(TAG, "Receiver was already unregistered: " + e);
        }
    }

    private class BillingBroadcastReceiver extends BroadcastReceiver {
        private final PurchasesUpdatedListener mListener;

        private BillingBroadcastReceiver(@NonNull PurchasesUpdatedListener purchasesUpdatedListener) {
            this.mListener = purchasesUpdatedListener;
        }

        public void onReceive(Context context, Intent intent) {
            this.mListener.onPurchasesUpdated(BillingHelper.getResponseCodeFromIntent(intent, BillingBroadcastManager.TAG), BillingHelper.extractPurchases(intent.getExtras()));
        }
    }
}
