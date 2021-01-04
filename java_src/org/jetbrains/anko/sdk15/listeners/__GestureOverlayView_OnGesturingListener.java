package org.jetbrains.anko.sdk15.listeners;

import android.gesture.GestureOverlayView;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001c\u0010\b\u001a\u00020\u00062\u0014\u0010\t\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u00060\u0004J\u0012\u0010\b\u001a\u00020\u00062\b\u0010\n\u001a\u0004\u0018\u00010\u0005H\u0016J\u001c\u0010\u000b\u001a\u00020\u00062\u0014\u0010\t\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u00060\u0004J\u0012\u0010\u000b\u001a\u00020\u00062\b\u0010\n\u001a\u0004\u0018\u00010\u0005H\u0016R\u001e\u0010\u0003\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004X\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u0007\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004X\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lorg/jetbrains/anko/sdk15/listeners/__GestureOverlayView_OnGesturingListener;", "Landroid/gesture/GestureOverlayView$OnGesturingListener;", "()V", "_onGesturingEnded", "Lkotlin/Function1;", "Landroid/gesture/GestureOverlayView;", "", "_onGesturingStarted", "onGesturingEnded", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "overlay", "onGesturingStarted", "anko-sdk15-listeners_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: Listeners.kt */
public final class __GestureOverlayView_OnGesturingListener implements GestureOverlayView.OnGesturingListener {
    private Function1<? super GestureOverlayView, Unit> _onGesturingEnded;
    private Function1<? super GestureOverlayView, Unit> _onGesturingStarted;

    public void onGesturingStarted(@Nullable GestureOverlayView gestureOverlayView) {
        Function1<? super GestureOverlayView, Unit> function1 = this._onGesturingStarted;
        if (function1 != null) {
            function1.invoke(gestureOverlayView);
        }
    }

    public final void onGesturingStarted(@NotNull Function1<? super GestureOverlayView, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(function1, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        this._onGesturingStarted = function1;
    }

    public void onGesturingEnded(@Nullable GestureOverlayView gestureOverlayView) {
        Function1<? super GestureOverlayView, Unit> function1 = this._onGesturingEnded;
        if (function1 != null) {
            function1.invoke(gestureOverlayView);
        }
    }

    public final void onGesturingEnded(@NotNull Function1<? super GestureOverlayView, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(function1, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        this._onGesturingEnded = function1;
    }
}
