package com.liber8tech.tago.android.activity;

import android.view.View;
import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.Purchase;
import com.liber8tech.tago.R;
import com.liber8tech.tago.model.Pack;
import com.liber8tech.tago.service.StoreService;
import com.liber8tech.tago.util.extension.ContextExtensionKt;
import com.liber8tech.tago.util.extension.RxExtensionsKt;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.Single;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.schedulers.Schedulers;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "Landroid/view/View;", "invoke"}, k = 3, mv = {1, 1, 13})
/* compiled from: SettingsActivity.kt */
public final class SettingsActivity$onCreate$2 extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ SettingsActivity this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    SettingsActivity$onCreate$2(SettingsActivity settingsActivity) {
        super(1);
        this.this$0 = settingsActivity;
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
        Single<List<R>> list = this.this$0.getIapService().createConnection(this.this$0).flatMap(new Function<T, ObservableSource<? extends R>>(this) {
            /* class com.liber8tech.tago.android.activity.SettingsActivity$onCreate$2.AnonymousClass1 */
            final /* synthetic */ SettingsActivity$onCreate$2 this$0;

            {
                this.this$0 = r1;
            }

            @NotNull
            public final Observable<List<Purchase>> apply(@NotNull BillingClient billingClient) {
                Intrinsics.checkParameterIsNotNull(billingClient, "it");
                return this.this$0.this$0.getIapService().queryPurchases(billingClient);
            }
        }).flatMap(new Function<T, ObservableSource<? extends R>>(this) {
            /* class com.liber8tech.tago.android.activity.SettingsActivity$onCreate$2.AnonymousClass2 */
            final /* synthetic */ SettingsActivity$onCreate$2 this$0;

            {
                this.this$0 = r1;
            }

            public final Observable<List<Pack>> apply(@NotNull List<? extends Purchase> list) {
                Intrinsics.checkParameterIsNotNull(list, "it");
                StoreService storeService = this.this$0.this$0.getStoreService();
                List<? extends Purchase> list2 = list;
                ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
                Iterator<T> it2 = list2.iterator();
                while (it2.hasNext()) {
                    arrayList.add(it2.next().getSku());
                }
                return storeService.getPacksBySkus(arrayList).subscribeOn(Schedulers.io());
            }
        }).flatMap(AnonymousClass3.INSTANCE).flatMap(new Function<T, ObservableSource<? extends R>>(this) {
            /* class com.liber8tech.tago.android.activity.SettingsActivity$onCreate$2.AnonymousClass4 */
            final /* synthetic */ SettingsActivity$onCreate$2 this$0;

            {
                this.this$0 = r1;
            }

            public final Observable<Unit> apply(@NotNull Pack pack) {
                Intrinsics.checkParameterIsNotNull(pack, "it");
                return this.this$0.this$0.getImageEditorService().downloadPackZip(pack).subscribeOn(Schedulers.io());
            }
        }).toList();
        Intrinsics.checkExpressionValueIsNotNull(list, "iapService.createConnect…io()) }\n        .toList()");
        this.this$0.getDisposeBag().add(RxExtensionsKt.asyncIO(list).subscribe(new Consumer<List<Unit>>(this) {
            /* class com.liber8tech.tago.android.activity.SettingsActivity$onCreate$2.AnonymousClass5 */
            final /* synthetic */ SettingsActivity$onCreate$2 this$0;

            {
                this.this$0 = r1;
            }

            public final void accept(List<Unit> list) {
                SettingsActivity settingsActivity = this.this$0.this$0;
                View findViewById = this.this$0.this$0.findViewById(16908290);
                Intrinsics.checkExpressionValueIsNotNull(findViewById, "findViewById(id)");
                ContextExtensionKt.tintedSnack(settingsActivity, (int) R.string.restore_success, findViewById);
            }
        }, AnonymousClass6.INSTANCE));
    }
}
