package org.jetbrains.anko.sdk15.listeners;

import android.widget.AbsListView;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J.\u0010\n\u001a\u00020\u00072&\u0010\u000b\u001a\"\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0004J*\u0010\n\u001a\u00020\u00072\b\u0010\f\u001a\u0004\u0018\u00010\u00052\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0006H\u0016J\"\u0010\u0010\u001a\u00020\u00072\u001a\u0010\u000b\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\tJ\u001a\u0010\u0010\u001a\u00020\u00072\b\u0010\f\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0011\u001a\u00020\u0006H\u0016R0\u0010\u0003\u001a$\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0004X\u000e¢\u0006\u0002\n\u0000R$\u0010\b\u001a\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0018\u00010\tX\u000e¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lorg/jetbrains/anko/sdk15/listeners/__AbsListView_OnScrollListener;", "Landroid/widget/AbsListView$OnScrollListener;", "()V", "_onScroll", "Lkotlin/Function4;", "Landroid/widget/AbsListView;", "", "", "_onScrollStateChanged", "Lkotlin/Function2;", "onScroll", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, Promotion.ACTION_VIEW, "firstVisibleItem", "visibleItemCount", "totalItemCount", "onScrollStateChanged", "scrollState", "anko-sdk15-listeners_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: Listeners.kt */
public final class __AbsListView_OnScrollListener implements AbsListView.OnScrollListener {
    private Function4<? super AbsListView, ? super Integer, ? super Integer, ? super Integer, Unit> _onScroll;
    private Function2<? super AbsListView, ? super Integer, Unit> _onScrollStateChanged;

    public void onScrollStateChanged(@Nullable AbsListView absListView, int i) {
        Function2<? super AbsListView, ? super Integer, Unit> function2 = this._onScrollStateChanged;
        if (function2 != null) {
            function2.invoke(absListView, Integer.valueOf(i));
        }
    }

    public final void onScrollStateChanged(@NotNull Function2<? super AbsListView, ? super Integer, Unit> function2) {
        Intrinsics.checkParameterIsNotNull(function2, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        this._onScrollStateChanged = function2;
    }

    public void onScroll(@Nullable AbsListView absListView, int i, int i2, int i3) {
        Function4<? super AbsListView, ? super Integer, ? super Integer, ? super Integer, Unit> function4 = this._onScroll;
        if (function4 != null) {
            function4.invoke(absListView, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3));
        }
    }

    public final void onScroll(@NotNull Function4<? super AbsListView, ? super Integer, ? super Integer, ? super Integer, Unit> function4) {
        Intrinsics.checkParameterIsNotNull(function4, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        this._onScroll = function4;
    }
}
