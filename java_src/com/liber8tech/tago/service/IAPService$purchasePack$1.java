package com.liber8tech.tago.service;

import android.app.Activity;
import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.BillingFlowParams;
import io.reactivex.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "Lcom/android/billingclient/api/BillingClient;", "apply"}, k = 3, mv = {1, 1, 13})
/* compiled from: IAPService.kt */
public final class IAPService$purchasePack$1<T, R> implements Function<T, R> {
    final /* synthetic */ Activity $activity;
    final /* synthetic */ BillingFlowParams.Builder $params;

    IAPService$purchasePack$1(Activity activity, BillingFlowParams.Builder builder) {
        this.$activity = activity;
        this.$params = builder;
    }

    @Override // io.reactivex.functions.Function
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return Integer.valueOf(apply((BillingClient) obj));
    }

    public final int apply(@NotNull BillingClient billingClient) {
        Intrinsics.checkParameterIsNotNull(billingClient, "it");
        return billingClient.launchBillingFlow(this.$activity, this.$params.build());
    }
}
