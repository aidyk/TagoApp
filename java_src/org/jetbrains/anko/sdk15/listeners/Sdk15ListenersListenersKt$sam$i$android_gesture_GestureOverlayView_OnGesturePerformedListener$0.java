package org.jetbrains.anko.sdk15.listeners;

import android.gesture.Gesture;
import android.gesture.GestureOverlayView;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

@Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 1, 13})
/* compiled from: Listeners.kt */
public final class Sdk15ListenersListenersKt$sam$i$android_gesture_GestureOverlayView_OnGesturePerformedListener$0 implements GestureOverlayView.OnGesturePerformedListener {
    private final /* synthetic */ Function2 function;

    public Sdk15ListenersListenersKt$sam$i$android_gesture_GestureOverlayView_OnGesturePerformedListener$0(Function2 function2) {
        this.function = function2;
    }

    public final /* synthetic */ void onGesturePerformed(GestureOverlayView gestureOverlayView, Gesture gesture) {
        Intrinsics.checkExpressionValueIsNotNull(this.function.invoke(gestureOverlayView, gesture), "invoke(...)");
    }
}
