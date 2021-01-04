package org.jetbrains.anko.sdk15.listeners;

import android.view.View;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\b\u001a\u00020\u00062\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004J\u0010\u0010\b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0005H\u0016J\u001a\u0010\u000b\u001a\u00020\u00062\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004J\u0010\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0005H\u0016R\u001c\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004X\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004X\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lorg/jetbrains/anko/sdk15/listeners/__View_OnAttachStateChangeListener;", "Landroid/view/View$OnAttachStateChangeListener;", "()V", "_onViewAttachedToWindow", "Lkotlin/Function1;", "Landroid/view/View;", "", "_onViewDetachedFromWindow", "onViewAttachedToWindow", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "v", "onViewDetachedFromWindow", "anko-sdk15-listeners_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: Listeners.kt */
public final class __View_OnAttachStateChangeListener implements View.OnAttachStateChangeListener {
    private Function1<? super View, Unit> _onViewAttachedToWindow;
    private Function1<? super View, Unit> _onViewDetachedFromWindow;

    public void onViewAttachedToWindow(@NotNull View view) {
        Intrinsics.checkParameterIsNotNull(view, "v");
        Function1<? super View, Unit> function1 = this._onViewAttachedToWindow;
        if (function1 != null) {
            function1.invoke(view);
        }
    }

    public final void onViewAttachedToWindow(@NotNull Function1<? super View, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(function1, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        this._onViewAttachedToWindow = function1;
    }

    public void onViewDetachedFromWindow(@NotNull View view) {
        Intrinsics.checkParameterIsNotNull(view, "v");
        Function1<? super View, Unit> function1 = this._onViewDetachedFromWindow;
        if (function1 != null) {
            function1.invoke(view);
        }
    }

    public final void onViewDetachedFromWindow(@NotNull Function1<? super View, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(function1, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        this._onViewDetachedFromWindow = function1;
    }
}
