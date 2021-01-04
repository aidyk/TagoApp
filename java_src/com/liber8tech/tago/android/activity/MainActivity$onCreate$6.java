package com.liber8tech.tago.android.activity;

import com.android.billingclient.api.Purchase;
import com.liber8tech.tago.model.Pack;
import com.liber8tech.tago.service.StoreService;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import io.reactivex.schedulers.Schedulers;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a>\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0003 \u0004*\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00020\u0002 \u0004*\u001e\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0003 \u0004*\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00020\u0002\u0018\u00010\u00010\u00012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u0002H\n¢\u0006\u0002\b\u0007"}, d2 = {"<anonymous>", "Lio/reactivex/Observable;", "", "Lcom/liber8tech/tago/model/Pack;", "kotlin.jvm.PlatformType", "it", "Lcom/android/billingclient/api/Purchase;", "apply"}, k = 3, mv = {1, 1, 13})
/* compiled from: MainActivity.kt */
final class MainActivity$onCreate$6<T, R> implements Function<T, ObservableSource<? extends R>> {
    final /* synthetic */ MainActivity this$0;

    MainActivity$onCreate$6(MainActivity mainActivity) {
        this.this$0 = mainActivity;
    }

    public final Observable<List<Pack>> apply(@NotNull List<? extends Purchase> list) {
        Intrinsics.checkParameterIsNotNull(list, "it");
        StoreService storeService = this.this$0.getStoreService();
        List<? extends Purchase> list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().getSku());
        }
        return storeService.getPacksBySkus(arrayList).subscribeOn(Schedulers.io());
    }
}
