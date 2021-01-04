package com.liber8tech.tago.android.activity;

import com.liber8tech.tago.model.Pack;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00040\u0001H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "", "ownedPacks", "", "apply"}, k = 3, mv = {1, 1, 13})
/* compiled from: StoreActivity.kt */
final class StoreActivity$onCreate$6<T, R> implements Function<T, R> {
    final /* synthetic */ StoreAdapterData $adapterData;

    StoreActivity$onCreate$6(StoreAdapterData storeAdapterData) {
        this.$adapterData = storeAdapterData;
    }

    @NotNull
    public final List<Unit> apply(@NotNull List<String> list) {
        T t;
        Intrinsics.checkParameterIsNotNull(list, "ownedPacks");
        List<List<Pack>> categoryData = this.$adapterData.getCategoryData();
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(categoryData, 10));
        for (T<T> t2 : categoryData) {
            ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(t2, 10));
            for (T t3 : t2) {
                arrayList2.add(t3.getId());
            }
            for (T t4 : CollectionsKt.intersect(arrayList2, list)) {
                Iterator<T> it2 = t2.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        t = null;
                        break;
                    }
                    t = it2.next();
                    if (Intrinsics.areEqual(t.getId(), t4)) {
                        break;
                    }
                }
                T t5 = t;
                if (t5 != null) {
                    t5.setBought(true);
                }
            }
            arrayList.add(Unit.INSTANCE);
        }
        return arrayList;
    }
}
