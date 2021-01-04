package com.liber8tech.tago.android.activity;

import com.liber8tech.tago.model.Category;
import com.liber8tech.tago.model.Pack;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import io.reactivex.schedulers.Schedulers;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a>\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0003 \u0004*\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00020\u0002 \u0004*\u001e\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0003 \u0004*\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00020\u0002\u0018\u00010\u00010\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\n¢\u0006\u0002\b\u0007"}, d2 = {"<anonymous>", "Lio/reactivex/Observable;", "", "Lcom/liber8tech/tago/model/Pack;", "kotlin.jvm.PlatformType", "it", "Lcom/liber8tech/tago/model/Category;", "apply"}, k = 3, mv = {1, 1, 13})
/* compiled from: StoreActivity.kt */
final class StoreActivity$onCreate$2<T, R> implements Function<T, ObservableSource<? extends R>> {
    final /* synthetic */ StoreActivity this$0;

    StoreActivity$onCreate$2(StoreActivity storeActivity) {
        this.this$0 = storeActivity;
    }

    public final Observable<List<Pack>> apply(@NotNull Category category) {
        Intrinsics.checkParameterIsNotNull(category, "it");
        return this.this$0.getStoreService().getPacks(category.getId()).subscribeOn(Schedulers.io());
    }
}
