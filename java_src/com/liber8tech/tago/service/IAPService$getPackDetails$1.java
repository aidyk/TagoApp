package com.liber8tech.tago.service;

import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.SkuDetails;
import com.android.billingclient.api.SkuDetailsParams;
import com.android.billingclient.api.SkuDetailsResponseListener;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u0014\u0010\u0002\u001a\u0010\u0012\f\u0012\n \u0005*\u0004\u0018\u00010\u00040\u00040\u0003H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "", "emitter", "Lio/reactivex/ObservableEmitter;", "Lcom/android/billingclient/api/SkuDetails;", "kotlin.jvm.PlatformType", "subscribe"}, k = 3, mv = {1, 1, 13})
/* compiled from: IAPService.kt */
public final class IAPService$getPackDetails$1<T> implements ObservableOnSubscribe<T> {
    final /* synthetic */ BillingClient $billingClient;
    final /* synthetic */ String $sku;
    final /* synthetic */ IAPService this$0;

    IAPService$getPackDetails$1(IAPService iAPService, String str, BillingClient billingClient) {
        this.this$0 = iAPService;
        this.$sku = str;
        this.$billingClient = billingClient;
    }

    @Override // io.reactivex.ObservableOnSubscribe
    public final void subscribe(@NotNull final ObservableEmitter<SkuDetails> observableEmitter) {
        Intrinsics.checkParameterIsNotNull(observableEmitter, "emitter");
        this.$billingClient.querySkuDetailsAsync(SkuDetailsParams.newBuilder().setSkusList(CollectionsKt.listOf(this.$sku)).setType(BillingClient.SkuType.INAPP).build(), new SkuDetailsResponseListener(this) {
            /* class com.liber8tech.tago.service.IAPService$getPackDetails$1.AnonymousClass1 */
            final /* synthetic */ IAPService$getPackDetails$1 this$0;

            {
                this.this$0 = r1;
            }

            /* JADX DEBUG: Multi-variable search result rejected for r3v7, resolved type: io.reactivex.ObservableEmitter */
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.android.billingclient.api.SkuDetailsResponseListener
            public final void onSkuDetailsResponse(int i, List<SkuDetails> list) {
                if (i == 0) {
                    Intrinsics.checkExpressionValueIsNotNull(list, "skuDetailsList");
                    if (!list.isEmpty()) {
                        observableEmitter.onNext(list.get(0));
                        observableEmitter.onComplete();
                        return;
                    }
                    new Exception("The purchased list is empty");
                    return;
                }
                IAPService iAPService = this.this$0.this$0;
                ObservableEmitter observableEmitter = observableEmitter;
                Intrinsics.checkExpressionValueIsNotNull(observableEmitter, "emitter");
                iAPService.handlePurchaseResponseIncomplete(i, observableEmitter);
            }
        });
    }
}
