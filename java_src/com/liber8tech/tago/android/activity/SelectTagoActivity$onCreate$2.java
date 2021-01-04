package com.liber8tech.tago.android.activity;

import com.liber8tech.tago.model.TagoDevice;
import io.reactivex.functions.Consumer;
import io.realm.RealmResults;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012*\u0010\u0002\u001a&\u0012\f\u0012\n \u0005*\u0004\u0018\u00010\u00040\u0004 \u0005*\u0012\u0012\f\u0012\n \u0005*\u0004\u0018\u00010\u00040\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "", "it", "Lio/realm/RealmResults;", "Lcom/liber8tech/tago/model/TagoDevice;", "kotlin.jvm.PlatformType", "accept"}, k = 3, mv = {1, 1, 13})
/* compiled from: SelectTagoActivity.kt */
final class SelectTagoActivity$onCreate$2<T> implements Consumer<RealmResults<TagoDevice>> {
    final /* synthetic */ SelectTagoActivity this$0;

    SelectTagoActivity$onCreate$2(SelectTagoActivity selectTagoActivity) {
        this.this$0 = selectTagoActivity;
    }

    public final void accept(RealmResults<TagoDevice> realmResults) {
        this.this$0.myTagoList.clear();
        List list = this.this$0.myTagoList;
        Intrinsics.checkExpressionValueIsNotNull(realmResults, "it");
        list.addAll(realmResults);
    }
}
