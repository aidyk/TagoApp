package com.liber8tech.tago.android.activity;

import com.liber8tech.tago.android.adapter.StoreAdapter;
import io.reactivex.functions.Consumer;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0001 \u0004*\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "it", "", "kotlin.jvm.PlatformType", "accept"}, k = 3, mv = {1, 1, 13})
/* compiled from: StoreActivity.kt */
final class StoreActivity$onCreate$7<T> implements Consumer<List<? extends Unit>> {
    final /* synthetic */ StoreAdapterData $adapterData;
    final /* synthetic */ StoreActivity this$0;

    StoreActivity$onCreate$7(StoreActivity storeActivity, StoreAdapterData storeAdapterData) {
        this.this$0 = storeActivity;
        this.$adapterData = storeAdapterData;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // io.reactivex.functions.Consumer
    public /* bridge */ /* synthetic */ void accept(List<? extends Unit> list) {
        accept((List<Unit>) list);
    }

    public final void accept(List<Unit> list) {
        this.this$0.ui.getRowList().setAdapter(new StoreAdapter(this.$adapterData.getCategoryTitleList(), this.$adapterData.getCategoryData()));
    }
}
