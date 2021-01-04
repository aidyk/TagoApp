package com.liber8tech.tago.android.activity;

import android.view.View;
import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.Purchase;
import com.liber8tech.tago.analytics.AnalyticsApi;
import com.liber8tech.tago.android.analytics.Action;
import com.liber8tech.tago.android.analytics.Category;
import com.liber8tech.tago.android.analytics.Screens;
import com.liber8tech.tago.model.Pack;
import com.liber8tech.tago.util.AuthValidationKt;
import com.trello.rxlifecycle2.android.ActivityEvent;
import com.trello.rxlifecycle2.kotlin.RxlifecycleKt;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.schedulers.Schedulers;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
import timber.log.Timber;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "Landroid/view/View;", "invoke"}, k = 3, mv = {1, 1, 13})
/* compiled from: PackActivity.kt */
public final class PackActivity$onCreate$4 extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ Pack $currentPack;
    final /* synthetic */ PackActivity this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    PackActivity$onCreate$4(PackActivity packActivity, Pack pack) {
        super(1);
        this.this$0 = packActivity;
        this.$currentPack = pack;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(View view) {
        invoke(view);
        return Unit.INSTANCE;
    }

    public final void invoke(@NotNull View view) {
        Intrinsics.checkParameterIsNotNull(view, "it");
        if (this.$currentPack.getProductId() != null) {
            Observable<R> subscribeOn = this.this$0.getIapService().createConnection(this.this$0).flatMap(new Function<T, ObservableSource<? extends R>>(this) {
                /* class com.liber8tech.tago.android.activity.PackActivity$onCreate$4.AnonymousClass1 */
                final /* synthetic */ PackActivity$onCreate$4 this$0;

                {
                    this.this$0 = r1;
                }

                @NotNull
                public final Observable<List<Purchase>> apply(@NotNull BillingClient billingClient) {
                    Intrinsics.checkParameterIsNotNull(billingClient, "it");
                    return this.this$0.this$0.getIapService().purchasePack(this.this$0.this$0, this.this$0.$currentPack.getProductId());
                }
            }).subscribeOn(Schedulers.io());
            Intrinsics.checkExpressionValueIsNotNull(subscribeOn, "iapService.createConnect…scribeOn(Schedulers.io())");
            RxlifecycleKt.bindUntilEvent(subscribeOn, this.this$0, ActivityEvent.DESTROY).flatMap(new Function<T, ObservableSource<? extends R>>(this) {
                /* class com.liber8tech.tago.android.activity.PackActivity$onCreate$4.AnonymousClass2 */
                final /* synthetic */ PackActivity$onCreate$4 this$0;

                {
                    this.this$0 = r1;
                }

                public final Observable<Unit> apply(@NotNull List<? extends Purchase> list) {
                    Intrinsics.checkParameterIsNotNull(list, "it");
                    if (!list.isEmpty()) {
                        return this.this$0.this$0.getImageService().downloadPackZip(this.this$0.$currentPack).subscribeOn(Schedulers.io());
                    }
                    return Observable.just(Unit.INSTANCE);
                }
            }).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer<Unit>(this) {
                /* class com.liber8tech.tago.android.activity.PackActivity$onCreate$4.AnonymousClass3 */
                final /* synthetic */ PackActivity$onCreate$4 this$0;

                {
                    this.this$0 = r1;
                }

                public final void accept(Unit unit) {
                    AnalyticsApi.DefaultImpls.trackEvent$default(this.this$0.this$0.getAnalytics(), Screens.pack, Category.store, Action.purchase, this.this$0.$currentPack.getName(), null, null, null, null, null, 496, null);
                    PackActivity.access$showPurchasedMain(this.this$0.this$0);
                    Timber.d("Pack purchase successful", new Object[0]);
                }
            }, new Consumer<Throwable>(this) {
                /* class com.liber8tech.tago.android.activity.PackActivity$onCreate$4.AnonymousClass4 */
                final /* synthetic */ PackActivity$onCreate$4 this$0;

                {
                    this.this$0 = r1;
                }

                public final void accept(Throwable th) {
                    AnalyticsApi.DefaultImpls.trackEvent$default(this.this$0.this$0.getAnalytics(), Screens.pack, Category.store, Action.purchase, th.getMessage(), null, null, null, null, null, 496, null);
                    Intrinsics.checkExpressionValueIsNotNull(th, "it");
                    AuthValidationKt.showIAPError(this.this$0.this$0, th);
                    Timber.e(th);
                }
            });
            return;
        }
        this.this$0.getDisposeBag().add(this.this$0.getImageService().downloadPackZip(this.$currentPack).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer<Unit>(this) {
            /* class com.liber8tech.tago.android.activity.PackActivity$onCreate$4.AnonymousClass5 */
            final /* synthetic */ PackActivity$onCreate$4 this$0;

            {
                this.this$0 = r1;
            }

            public final void accept(Unit unit) {
                AnalyticsApi.DefaultImpls.trackEvent$default(this.this$0.this$0.getAnalytics(), Screens.pack, Category.store, Action.purchase, this.this$0.$currentPack.getName(), null, null, null, null, null, 496, null);
                PackActivity.access$showPurchasedMain(this.this$0.this$0);
                Timber.d("Pack purchase successful", new Object[0]);
            }
        }, new Consumer<Throwable>(this) {
            /* class com.liber8tech.tago.android.activity.PackActivity$onCreate$4.AnonymousClass6 */
            final /* synthetic */ PackActivity$onCreate$4 this$0;

            {
                this.this$0 = r1;
            }

            public final void accept(Throwable th) {
                AnalyticsApi.DefaultImpls.trackEvent$default(this.this$0.this$0.getAnalytics(), Screens.pack, Category.store, Action.purchase, th.getMessage(), null, null, null, null, null, 496, null);
                Intrinsics.checkExpressionValueIsNotNull(th, "it");
                AuthValidationKt.showIAPError(this.this$0.this$0, th);
                Timber.e(th);
            }
        }));
    }
}
