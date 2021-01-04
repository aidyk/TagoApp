package com.liber8tech.tago.android.activity;

import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.SkuDetails;
import com.liber8tech.tago.model.Pack;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "Lio/reactivex/Observable;", "Lcom/android/billingclient/api/SkuDetails;", "it", "Lcom/android/billingclient/api/BillingClient;", "apply"}, k = 3, mv = {1, 1, 13})
/* compiled from: PackActivity.kt */
final class PackActivity$onCreate$1<T, R> implements Function<T, ObservableSource<? extends R>> {
    final /* synthetic */ Pack $currentPack;
    final /* synthetic */ PackActivity this$0;

    PackActivity$onCreate$1(PackActivity packActivity, Pack pack) {
        this.this$0 = packActivity;
        this.$currentPack = pack;
    }

    @NotNull
    public final Observable<SkuDetails> apply(@NotNull BillingClient billingClient) {
        Intrinsics.checkParameterIsNotNull(billingClient, "it");
        return this.this$0.getIapService().getPackDetails(billingClient, this.$currentPack.getProductId());
    }
}
