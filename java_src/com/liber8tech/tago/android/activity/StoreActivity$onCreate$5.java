package com.liber8tech.tago.android.activity;

import com.android.billingclient.api.BillingClient;
import io.reactivex.Single;
import io.reactivex.SingleSource;
import io.reactivex.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a>\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0003 \u0004*\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00020\u0002 \u0004*\u001e\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0003 \u0004*\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00020\u0002\u0018\u00010\u00010\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\n¢\u0006\u0002\b\u0007"}, d2 = {"<anonymous>", "Lio/reactivex/Single;", "", "", "kotlin.jvm.PlatformType", "it", "Lcom/android/billingclient/api/BillingClient;", "apply"}, k = 3, mv = {1, 1, 13})
/* compiled from: StoreActivity.kt */
final class StoreActivity$onCreate$5<T, R> implements Function<T, SingleSource<? extends R>> {
    final /* synthetic */ StoreActivity this$0;

    StoreActivity$onCreate$5(StoreActivity storeActivity) {
        this.this$0 = storeActivity;
    }

    public final Single<List<String>> apply(@NotNull BillingClient billingClient) {
        Intrinsics.checkParameterIsNotNull(billingClient, "it");
        return this.this$0.getIapService().queryPurchases(billingClient).zipWith(this.this$0.getImageService().getLocalPurchasePatternId(), AnonymousClass1.INSTANCE).singleOrError();
    }
}
