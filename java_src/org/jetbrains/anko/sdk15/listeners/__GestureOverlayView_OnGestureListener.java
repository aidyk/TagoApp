package org.jetbrains.anko.sdk15.listeners;

import android.gesture.GestureOverlayView;
import android.view.MotionEvent;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J$\u0010\u000b\u001a\u00020\u00072\u001c\u0010\f\u001a\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u00070\u0004J\u001c\u0010\u000b\u001a\u00020\u00072\b\u0010\r\u001a\u0004\u0018\u00010\u00052\b\u0010\u000e\u001a\u0004\u0018\u00010\u0006H\u0016J$\u0010\u000f\u001a\u00020\u00072\u001c\u0010\f\u001a\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u00070\u0004J\u001c\u0010\u000f\u001a\u00020\u00072\b\u0010\r\u001a\u0004\u0018\u00010\u00052\b\u0010\u000e\u001a\u0004\u0018\u00010\u0006H\u0016J$\u0010\u0010\u001a\u00020\u00072\u001c\u0010\f\u001a\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u00070\u0004J\u001c\u0010\u0010\u001a\u00020\u00072\b\u0010\r\u001a\u0004\u0018\u00010\u00052\b\u0010\u000e\u001a\u0004\u0018\u00010\u0006H\u0016J$\u0010\u0011\u001a\u00020\u00072\u001c\u0010\f\u001a\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u00070\u0004J\u001c\u0010\u0011\u001a\u00020\u00072\b\u0010\r\u001a\u0004\u0018\u00010\u00052\b\u0010\u000e\u001a\u0004\u0018\u00010\u0006H\u0016R&\u0010\u0003\u001a\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0004X\u000e¢\u0006\u0002\n\u0000R&\u0010\b\u001a\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0004X\u000e¢\u0006\u0002\n\u0000R&\u0010\t\u001a\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0004X\u000e¢\u0006\u0002\n\u0000R&\u0010\n\u001a\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0004X\u000e¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lorg/jetbrains/anko/sdk15/listeners/__GestureOverlayView_OnGestureListener;", "Landroid/gesture/GestureOverlayView$OnGestureListener;", "()V", "_onGesture", "Lkotlin/Function2;", "Landroid/gesture/GestureOverlayView;", "Landroid/view/MotionEvent;", "", "_onGestureCancelled", "_onGestureEnded", "_onGestureStarted", "onGesture", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "overlay", "event", "onGestureCancelled", "onGestureEnded", "onGestureStarted", "anko-sdk15-listeners_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: Listeners.kt */
public final class __GestureOverlayView_OnGestureListener implements GestureOverlayView.OnGestureListener {
    private Function2<? super GestureOverlayView, ? super MotionEvent, Unit> _onGesture;
    private Function2<? super GestureOverlayView, ? super MotionEvent, Unit> _onGestureCancelled;
    private Function2<? super GestureOverlayView, ? super MotionEvent, Unit> _onGestureEnded;
    private Function2<? super GestureOverlayView, ? super MotionEvent, Unit> _onGestureStarted;

    public void onGestureStarted(@Nullable GestureOverlayView gestureOverlayView, @Nullable MotionEvent motionEvent) {
        Function2<? super GestureOverlayView, ? super MotionEvent, Unit> function2 = this._onGestureStarted;
        if (function2 != null) {
            function2.invoke(gestureOverlayView, motionEvent);
        }
    }

    public final void onGestureStarted(@NotNull Function2<? super GestureOverlayView, ? super MotionEvent, Unit> function2) {
        Intrinsics.checkParameterIsNotNull(function2, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        this._onGestureStarted = function2;
    }

    public void onGesture(@Nullable GestureOverlayView gestureOverlayView, @Nullable MotionEvent motionEvent) {
        Function2<? super GestureOverlayView, ? super MotionEvent, Unit> function2 = this._onGesture;
        if (function2 != null) {
            function2.invoke(gestureOverlayView, motionEvent);
        }
    }

    public final void onGesture(@NotNull Function2<? super GestureOverlayView, ? super MotionEvent, Unit> function2) {
        Intrinsics.checkParameterIsNotNull(function2, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        this._onGesture = function2;
    }

    public void onGestureEnded(@Nullable GestureOverlayView gestureOverlayView, @Nullable MotionEvent motionEvent) {
        Function2<? super GestureOverlayView, ? super MotionEvent, Unit> function2 = this._onGestureEnded;
        if (function2 != null) {
            function2.invoke(gestureOverlayView, motionEvent);
        }
    }

    public final void onGestureEnded(@NotNull Function2<? super GestureOverlayView, ? super MotionEvent, Unit> function2) {
        Intrinsics.checkParameterIsNotNull(function2, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        this._onGestureEnded = function2;
    }

    public void onGestureCancelled(@Nullable GestureOverlayView gestureOverlayView, @Nullable MotionEvent motionEvent) {
        Function2<? super GestureOverlayView, ? super MotionEvent, Unit> function2 = this._onGestureCancelled;
        if (function2 != null) {
            function2.invoke(gestureOverlayView, motionEvent);
        }
    }

    public final void onGestureCancelled(@NotNull Function2<? super GestureOverlayView, ? super MotionEvent, Unit> function2) {
        Intrinsics.checkParameterIsNotNull(function2, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        this._onGestureCancelled = function2;
    }
}
