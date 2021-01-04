package com.liber8tech.tago.android.activity;

import io.reactivex.functions.Consumer;
import kotlin.Metadata;
import kotlin.Pair;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012&\u0010\u0002\u001a\"\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004 \u0005*\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "", "it", "Lkotlin/Pair;", "", "kotlin.jvm.PlatformType", "accept"}, k = 3, mv = {1, 1, 13})
/* compiled from: AddTagoActivity.kt */
final class AddTagoActivity$observeServices$1<T> implements Consumer<Pair<? extends Boolean, ? extends Boolean>> {
    final /* synthetic */ AddTagoActivity this$0;

    AddTagoActivity$observeServices$1(AddTagoActivity addTagoActivity) {
        this.this$0 = addTagoActivity;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // io.reactivex.functions.Consumer
    public /* bridge */ /* synthetic */ void accept(Pair<? extends Boolean, ? extends Boolean> pair) {
        accept((Pair<Boolean, Boolean>) pair);
    }

    public final void accept(Pair<Boolean, Boolean> pair) {
        if (!pair.getFirst().booleanValue() || !pair.getSecond().booleanValue()) {
            this.this$0.changeView(AddTagoActivity.access$getErrorView$p(this.this$0));
        } else {
            this.this$0.changeView(AddTagoActivity.access$getMainView$p(this.this$0));
        }
    }
}
