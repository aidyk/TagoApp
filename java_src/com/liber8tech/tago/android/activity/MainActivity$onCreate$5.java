package com.liber8tech.tago.android.activity;

import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.Purchase;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "Lio/reactivex/Observable;", "", "Lcom/android/billingclient/api/Purchase;", "it", "Lcom/android/billingclient/api/BillingClient;", "apply"}, k = 3, mv = {1, 1, 13})
/* compiled from: MainActivity.kt */
final class MainActivity$onCreate$5<T, R> implements Function<T, ObservableSource<? extends R>> {
    final /* synthetic */ MainActivity this$0;

    MainActivity$onCreate$5(MainActivity mainActivity) {
        this.this$0 = mainActivity;
    }

    @NotNull
    public final Observable<List<Purchase>> apply(@NotNull BillingClient billingClient) {
        Intrinsics.checkParameterIsNotNull(billingClient, "it");
        return this.this$0.getIapService().queryPurchases(billingClient);
    }
}
