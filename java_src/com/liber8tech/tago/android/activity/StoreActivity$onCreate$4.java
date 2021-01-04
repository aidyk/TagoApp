package com.liber8tech.tago.android.activity;

import com.android.billingclient.api.BillingClient;
import io.reactivex.Single;
import io.reactivex.SingleSource;
import io.reactivex.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a&\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002 \u0003*\u0012\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002\u0018\u00010\u00010\u00012\u0006\u0010\u0004\u001a\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "Lio/reactivex/Single;", "Lcom/android/billingclient/api/BillingClient;", "kotlin.jvm.PlatformType", "it", "Lcom/liber8tech/tago/android/activity/StoreAdapterData;", "apply"}, k = 3, mv = {1, 1, 13})
/* compiled from: StoreActivity.kt */
final class StoreActivity$onCreate$4<T, R> implements Function<T, SingleSource<? extends R>> {
    final /* synthetic */ StoreActivity this$0;

    StoreActivity$onCreate$4(StoreActivity storeActivity) {
        this.this$0 = storeActivity;
    }

    public final Single<BillingClient> apply(@NotNull StoreAdapterData storeAdapterData) {
        Intrinsics.checkParameterIsNotNull(storeAdapterData, "it");
        return this.this$0.getIapService().createConnection(this.this$0).singleOrError();
    }
}
