package com.liber8tech.tago.android.ui;

import android.view.View;
import com.liber8tech.tago.android.view.TagoRowItem;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.anko.AnkoComponent;
import org.jetbrains.anko.AnkoContext;
import org.jetbrains.anko.internals.AnkoInternals;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00022\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0006H\u0016¨\u0006\u0007"}, d2 = {"Lcom/liber8tech/tago/android/ui/TagoRowItemUI;", "Lorg/jetbrains/anko/AnkoComponent;", "Lcom/liber8tech/tago/android/view/TagoRowItem;", "()V", "createView", "ui", "Lorg/jetbrains/anko/AnkoContext;", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: TagoRowItemUI.kt */
public final class TagoRowItemUI implements AnkoComponent<TagoRowItem> {
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [org.jetbrains.anko.AnkoContext<com.liber8tech.tago.android.view.TagoRowItem>] */
    @Override // org.jetbrains.anko.AnkoComponent
    @NotNull
    public TagoRowItem createView(@NotNull AnkoContext<? extends TagoRowItem> ankoContext) {
        Intrinsics.checkParameterIsNotNull(ankoContext, "ui");
        AnkoContext<? extends TagoRowItem> ankoContext2 = ankoContext;
        View initiateView = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(ankoContext2), 0), TagoRowItem.class);
        TagoRowItem tagoRowItem = (TagoRowItem) initiateView;
        tagoRowItem.showLowBattery(false);
        AnkoInternals.INSTANCE.addView(ankoContext2, initiateView);
        return tagoRowItem;
    }
}
