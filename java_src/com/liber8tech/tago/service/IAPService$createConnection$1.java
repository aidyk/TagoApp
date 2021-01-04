package com.liber8tech.tago.service;

import com.android.billingclient.api.BillingClient;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u0014\u0010\u0002\u001a\u0010\u0012\f\u0012\n \u0005*\u0004\u0018\u00010\u00040\u00040\u0003H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "", "emitter", "Lio/reactivex/ObservableEmitter;", "Lcom/android/billingclient/api/BillingClient;", "kotlin.jvm.PlatformType", "subscribe"}, k = 3, mv = {1, 1, 13})
/* compiled from: IAPService.kt */
public final class IAPService$createConnection$1<T> implements ObservableOnSubscribe<T> {
    final /* synthetic */ BillingClient $billingClient;
    final /* synthetic */ IAPService this$0;

    IAPService$createConnection$1(IAPService iAPService, BillingClient billingClient) {
        this.this$0 = iAPService;
        this.$billingClient = billingClient;
    }

    @Override // io.reactivex.ObservableOnSubscribe
    public final void subscribe(@NotNull ObservableEmitter<BillingClient> observableEmitter) {
        Intrinsics.checkParameterIsNotNull(observableEmitter, "emitter");
        BillingClient billingClient = this.$billingClient;
        Intrinsics.checkExpressionValueIsNotNull(billingClient, "billingClient");
        if (billingClient.isReady()) {
            observableEmitter.onNext(this.$billingClient);
            observableEmitter.onComplete();
            return;
        }
        IAPService iAPService = this.this$0;
        BillingClient billingClient2 = this.$billingClient;
        Intrinsics.checkExpressionValueIsNotNull(billingClient2, "billingClient");
        iAPService.connect(observableEmitter, billingClient2);
    }
}
