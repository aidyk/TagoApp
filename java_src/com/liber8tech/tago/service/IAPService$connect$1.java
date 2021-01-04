package com.liber8tech.tago.service;

import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.BillingClientStateListener;
import io.reactivex.ObservableEmitter;
import kotlin.Metadata;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\u0007"}, d2 = {"com/liber8tech/tago/service/IAPService$connect$1", "Lcom/android/billingclient/api/BillingClientStateListener;", "onBillingServiceDisconnected", "", "onBillingSetupFinished", "responseCode", "", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: IAPService.kt */
public final class IAPService$connect$1 implements BillingClientStateListener {
    final /* synthetic */ BillingClient $billingClient;
    final /* synthetic */ ObservableEmitter $emitter;
    final /* synthetic */ IAPService this$0;

    IAPService$connect$1(IAPService iAPService, ObservableEmitter observableEmitter, BillingClient billingClient) {
        this.this$0 = iAPService;
        this.$emitter = observableEmitter;
        this.$billingClient = billingClient;
    }

    @Override // com.android.billingclient.api.BillingClientStateListener
    public void onBillingSetupFinished(int i) {
        if (i == 0) {
            this.$emitter.onNext(this.$billingClient);
            this.$emitter.onComplete();
            return;
        }
        this.this$0.handlePurchaseResponseIncomplete(i, this.$emitter);
    }

    @Override // com.android.billingclient.api.BillingClientStateListener
    public void onBillingServiceDisconnected() {
        this.this$0.connect(this.$emitter, this.$billingClient);
    }
}
