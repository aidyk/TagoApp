package com.liber8tech.tago.android.activity;

import com.liber8tech.tago.model.Category;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\u0010\u0000\u001a&\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002 \u0003*\u0012\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002\u0018\u00010\u00010\u00012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "Lio/reactivex/Observable;", "Lcom/liber8tech/tago/model/Category;", "kotlin.jvm.PlatformType", "it", "", "apply"}, k = 3, mv = {1, 1, 13})
/* compiled from: StoreActivity.kt */
final class StoreActivity$onCreate$1<T, R> implements Function<T, ObservableSource<? extends R>> {
    final /* synthetic */ StoreAdapterData $adapterData;

    StoreActivity$onCreate$1(StoreAdapterData storeAdapterData) {
        this.$adapterData = storeAdapterData;
    }

    public final Observable<Category> apply(@NotNull List<Category> list) {
        Intrinsics.checkParameterIsNotNull(list, "it");
        this.$adapterData.setCategoryTitleList(list);
        return Observable.fromIterable(list);
    }
}
