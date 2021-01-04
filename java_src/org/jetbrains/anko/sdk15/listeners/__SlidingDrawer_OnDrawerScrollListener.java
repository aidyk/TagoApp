package org.jetbrains.anko.sdk15.listeners;

import android.widget.SlidingDrawer;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0007\u001a\u00020\u0005H\u0016J\u0014\u0010\u0007\u001a\u00020\u00052\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\b\u0010\t\u001a\u00020\u0005H\u0016J\u0014\u0010\t\u001a\u00020\u00052\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004R\u0016\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lorg/jetbrains/anko/sdk15/listeners/__SlidingDrawer_OnDrawerScrollListener;", "Landroid/widget/SlidingDrawer$OnDrawerScrollListener;", "()V", "_onScrollEnded", "Lkotlin/Function0;", "", "_onScrollStarted", "onScrollEnded", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "onScrollStarted", "anko-sdk15-listeners_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: Listeners.kt */
public final class __SlidingDrawer_OnDrawerScrollListener implements SlidingDrawer.OnDrawerScrollListener {
    private Function0<Unit> _onScrollEnded;
    private Function0<Unit> _onScrollStarted;

    public void onScrollStarted() {
        Function0<Unit> function0 = this._onScrollStarted;
        if (function0 != null) {
            function0.invoke();
        }
    }

    public final void onScrollStarted(@NotNull Function0<Unit> function0) {
        Intrinsics.checkParameterIsNotNull(function0, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        this._onScrollStarted = function0;
    }

    public void onScrollEnded() {
        Function0<Unit> function0 = this._onScrollEnded;
        if (function0 != null) {
            function0.invoke();
        }
    }

    public final void onScrollEnded(@NotNull Function0<Unit> function0) {
        Intrinsics.checkParameterIsNotNull(function0, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        this._onScrollEnded = function0;
    }
}
