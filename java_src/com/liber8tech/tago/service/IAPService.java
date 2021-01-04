package com.liber8tech.tago.service;

import android.app.Activity;
import android.content.Context;
import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.BillingFlowParams;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.PurchasesUpdatedListener;
import com.android.billingclient.api.SkuDetails;
import com.liber8tech.tago.android.TagoApplication;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.subjects.PublishSubject;
import java.util.List;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Singleton
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007\b\u0007¢\u0006\u0002\u0010\u0002J\u001e\u0010\u0007\u001a\u00020\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000b0\u000e2\u0006\u0010\u000f\u001a\u00020\u0010J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u001c\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00160\u000e2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u0012J(\u0010\u0018\u001a\u00020\b\"\b\b\u0000\u0010\u0019*\u00020\u001a2\u0006\u0010\u0013\u001a\u00020\u00142\f\u0010\t\u001a\b\u0012\u0004\u0012\u0002H\u00190\nH\u0002J \u0010\u001b\u001a\u00020\b2\u0006\u0010\u001c\u001a\u00020\u00142\u000e\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u001eH\u0016J\"\u0010\u001f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u000e2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u0012J\u001a\u0010#\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u000e2\u0006\u0010\f\u001a\u00020\u000bR\u001c\u0010\u0003\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0005\u0018\u00010\u0004X\u000e¢\u0006\u0002\n\u0000¨\u0006$"}, d2 = {"Lcom/liber8tech/tago/service/IAPService;", "Lcom/android/billingclient/api/PurchasesUpdatedListener;", "()V", "purchaseUpdateSubject", "Lio/reactivex/subjects/PublishSubject;", "", "Lcom/android/billingclient/api/Purchase;", "connect", "", "emitter", "Lio/reactivex/ObservableEmitter;", "Lcom/android/billingclient/api/BillingClient;", "billingClient", "createConnection", "Lio/reactivex/Observable;", "ctx", "Landroid/content/Context;", "getIAPErrorType", "", "code", "", "getPackDetails", "Lcom/android/billingclient/api/SkuDetails;", "sku", "handlePurchaseResponseIncomplete", "T", "", "onPurchasesUpdated", "responseCode", "purchases", "", "purchasePack", "activity", "Landroid/app/Activity;", "skuID", "queryPurchases", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: IAPService.kt */
public final class IAPService implements PurchasesUpdatedListener {
    private PublishSubject<List<Purchase>> purchaseUpdateSubject;

    @Override // com.android.billingclient.api.PurchasesUpdatedListener
    public void onPurchasesUpdated(int i, @Nullable List<Purchase> list) {
        if (i == 0 && list != null) {
            PublishSubject<List<Purchase>> publishSubject = this.purchaseUpdateSubject;
            if (publishSubject != null) {
                publishSubject.onNext(list);
            }
            PublishSubject<List<Purchase>> publishSubject2 = this.purchaseUpdateSubject;
            if (publishSubject2 != null) {
                publishSubject2.onComplete();
            }
            this.purchaseUpdateSubject = null;
        }
    }

    /* access modifiers changed from: private */
    public final <T> void handlePurchaseResponseIncomplete(int i, ObservableEmitter<T> observableEmitter) {
        observableEmitter.onError(new Exception(getIAPErrorType(i)));
    }

    /* access modifiers changed from: private */
    public final String getIAPErrorType(int i) {
        switch (i) {
            case -2:
                return IAPError.FEATURE_NOT_SUPPORTED.getMessage();
            case -1:
                return IAPError.SERVICE_DISCONNECTED.getMessage();
            case 0:
            default:
                return IAPError.ERROR.getMessage();
            case 1:
                return IAPError.USER_CANCELED.getMessage();
            case 2:
                return IAPError.SERVICE_UNAVAILABLE.getMessage();
            case 3:
                return IAPError.BILLING_UNAVAILABLE.getMessage();
            case 4:
                return IAPError.ITEM_UNAVAILABLE.getMessage();
            case 5:
                return IAPError.DEVELOPER_ERROR.getMessage();
            case 6:
                return IAPError.ERROR.getMessage();
            case 7:
                return IAPError.ITEM_ALREADY_OWNED.getMessage();
            case 8:
                return IAPError.ITEM_NOT_OWNED.getMessage();
        }
    }

    @NotNull
    public final Observable<BillingClient> createConnection(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "ctx");
        Observable<BillingClient> create = Observable.create(new IAPService$createConnection$1(this, BillingClient.newBuilder(context).setListener(this).build()));
        Intrinsics.checkExpressionValueIsNotNull(create, "Observable.create({ emit…ingClient)\n      }\n    })");
        return create;
    }

    /* access modifiers changed from: private */
    public final void connect(ObservableEmitter<BillingClient> observableEmitter, BillingClient billingClient) {
        billingClient.startConnection(new IAPService$connect$1(this, observableEmitter, billingClient));
    }

    @NotNull
    public final Observable<List<Purchase>> purchasePack(@NotNull Activity activity, @NotNull String str) {
        Intrinsics.checkParameterIsNotNull(activity, "activity");
        Intrinsics.checkParameterIsNotNull(str, "skuID");
        Observable<R> flatMap = createConnection(activity).map(new IAPService$purchasePack$1(activity, BillingFlowParams.newBuilder().setSku(str).setType(BillingClient.SkuType.INAPP))).flatMap(new IAPService$purchasePack$2(this));
        Intrinsics.checkExpressionValueIsNotNull(flatMap, "createConnection(activit…e(it)))\n        }\n      }");
        return flatMap;
    }

    @NotNull
    public final Observable<List<Purchase>> queryPurchases(@NotNull BillingClient billingClient) {
        Intrinsics.checkParameterIsNotNull(billingClient, "billingClient");
        if (TagoApplication.Companion.getMock()) {
            Observable<List<Purchase>> just = Observable.just(CollectionsKt.listOf((Object[]) new Purchase[]{new Purchase("{\"packageName\":\"com.liber8tech.tago\",\"orderId\":\"transactionId.android.test.purchased\",\"productId\":\"temples.tago.liber8tech.com\",\"developerPayload\":\"\",\"purchaseTime\":0,\"purchaseState\":0,\"purchaseToken\":\"inapp:com.liber8tech.tago:android.test.purchased\"}", ""), new Purchase("{\"packageName\":\"com.liber8tech.tago\",\"orderId\":\"transactionId.android.test.purchased\",\"productId\":\"assassins.tago.liber8tech.com\",\"developerPayload\":\"\",\"purchaseTime\":0,\"purchaseState\":0,\"purchaseToken\":\"inapp:com.liber8tech.tago:android.test.purchased\"}", ""), new Purchase("{\"packageName\":\"com.liber8tech.tago\",\"orderId\":\"transactionId.android.test.purchased\",\"productId\":\"car.tago.liber8tech.com\",\"developerPayload\":\"\",\"purchaseTime\":0,\"purchaseState\":0,\"purchaseToken\":\"inapp:com.liber8tech.tago:android.test.purchased\"}", "")}));
            Intrinsics.checkExpressionValueIsNotNull(just, "Observable.just(listOf(\n…test.purchased\\\"}\", \"\")))");
            return just;
        }
        Observable<List<Purchase>> create = Observable.create(new IAPService$queryPurchases$1(this, billingClient));
        Intrinsics.checkExpressionValueIsNotNull(create, "Observable.create({ emit…    }\n        })\n      })");
        return create;
    }

    @NotNull
    public final Observable<SkuDetails> getPackDetails(@NotNull BillingClient billingClient, @NotNull String str) {
        Intrinsics.checkParameterIsNotNull(billingClient, "billingClient");
        Intrinsics.checkParameterIsNotNull(str, "sku");
        if (TagoApplication.Companion.getMock()) {
            Observable<SkuDetails> just = Observable.just(new SkuDetails("{\"productId\":\"temples.tago.liber8tech.com\",\"type\":\"inapp\",\"price\":\"€7.99\",\"price_currency_code\":\"EUR\",\"title\":\"Temples pack\",\"description\":\"Pattern of temples\"}"));
            Intrinsics.checkExpressionValueIsNotNull(just, "Observable.just(SkuDetai…\"Pattern of temples\\\"}\"))");
            return just;
        }
        Observable<SkuDetails> create = Observable.create(new IAPService$getPackDetails$1(this, str, billingClient));
        Intrinsics.checkExpressionValueIsNotNull(create, "Observable.create({ emit…    }\n        })\n      })");
        return create;
    }
}
