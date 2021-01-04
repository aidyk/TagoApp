package com.liber8tech.tago.android.activity;

import com.liber8tech.tago.model.Pack;
import io.reactivex.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012@\u0010\u0002\u001a<\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0005 \u0006*\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00040\u0004 \u0006*\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0005 \u0006*\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00040\u00040\u00040\u0003H\n¢\u0006\u0002\b\u0007"}, d2 = {"<anonymous>", "Lcom/liber8tech/tago/android/activity/StoreAdapterData;", "it", "", "", "Lcom/liber8tech/tago/model/Pack;", "kotlin.jvm.PlatformType", "apply"}, k = 3, mv = {1, 1, 13})
/* compiled from: StoreActivity.kt */
final class StoreActivity$onCreate$3<T, R> implements Function<T, R> {
    final /* synthetic */ StoreAdapterData $adapterData;

    StoreActivity$onCreate$3(StoreAdapterData storeAdapterData) {
        this.$adapterData = storeAdapterData;
    }

    @NotNull
    public final StoreAdapterData apply(@NotNull List<List<Pack>> list) {
        Intrinsics.checkParameterIsNotNull(list, "it");
        this.$adapterData.setCategoryData(list);
        return this.$adapterData;
    }
}
