package com.liber8tech.tago.service;

import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.PurchaseHistoryResponseListener;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012 \u0010\u0002\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0005 \u0006*\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00040\u00040\u0003H\n¢\u0006\u0002\b\u0007"}, d2 = {"<anonymous>", "", "emitter", "Lio/reactivex/ObservableEmitter;", "", "Lcom/android/billingclient/api/Purchase;", "kotlin.jvm.PlatformType", "subscribe"}, k = 3, mv = {1, 1, 13})
/* compiled from: IAPService.kt */
public final class IAPService$queryPurchases$1<T> implements ObservableOnSubscribe<T> {
    final /* synthetic */ BillingClient $billingClient;
    final /* synthetic */ IAPService this$0;

    IAPService$queryPurchases$1(IAPService iAPService, BillingClient billingClient) {
        this.this$0 = iAPService;
        this.$billingClient = billingClient;
    }

    @Override // io.reactivex.ObservableOnSubscribe
    public final void subscribe(@NotNull final ObservableEmitter<List<Purchase>> observableEmitter) {
        Intrinsics.checkParameterIsNotNull(observableEmitter, "emitter");
        this.$billingClient.queryPurchaseHistoryAsync(BillingClient.SkuType.INAPP, new PurchaseHistoryResponseListener(this) {
            /* class com.liber8tech.tago.service.IAPService$queryPurchases$1.AnonymousClass1 */
            final /* synthetic */ IAPService$queryPurchases$1 this$0;

            {
                this.this$0 = r1;
            }

            @Override // com.android.billingclient.api.PurchaseHistoryResponseListener
            public final void onPurchaseHistoryResponse(int i, List<Purchase> list) {
                if (i != 0) {
                    IAPService iAPService = this.this$0.this$0;
                    ObservableEmitter observableEmitter = observableEmitter;
                    Intrinsics.checkExpressionValueIsNotNull(observableEmitter, "emitter");
                    iAPService.handlePurchaseResponseIncomplete(i, observableEmitter);
                } else if (list != null) {
                    observableEmitter.onNext(list);
                    observableEmitter.onComplete();
                } else {
                    observableEmitter.onError(new NullPointerException("The purchase list is null"));
                }
            }
        });
    }
}
