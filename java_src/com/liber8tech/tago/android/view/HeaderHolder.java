package com.liber8tech.tago.android.view;

import android.support.v7.widget.RecyclerView;
import com.google.android.gms.analytics.ecommerce.Promotion;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/liber8tech/tago/android/view/HeaderHolder;", "Landroid/support/v7/widget/RecyclerView$ViewHolder;", Promotion.ACTION_VIEW, "Lcom/liber8tech/tago/android/view/HeaderView;", "(Lcom/liber8tech/tago/android/view/HeaderView;)V", "getView", "()Lcom/liber8tech/tago/android/view/HeaderView;", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: HeaderView.kt */
public final class HeaderHolder extends RecyclerView.ViewHolder {
    @NotNull
    private final HeaderView view;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public HeaderHolder(@NotNull HeaderView headerView) {
        super(headerView);
        Intrinsics.checkParameterIsNotNull(headerView, Promotion.ACTION_VIEW);
        this.view = headerView;
    }

    @NotNull
    public final HeaderView getView() {
        return this.view;
    }
}
