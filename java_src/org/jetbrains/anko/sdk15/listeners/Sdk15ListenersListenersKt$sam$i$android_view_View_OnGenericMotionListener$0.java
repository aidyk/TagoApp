package org.jetbrains.anko.sdk15.listeners;

import android.view.MotionEvent;
import android.view.View;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

@Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 1, 13})
/* compiled from: Listeners.kt */
public final class Sdk15ListenersListenersKt$sam$i$android_view_View_OnGenericMotionListener$0 implements View.OnGenericMotionListener {
    private final /* synthetic */ Function2 function;

    public Sdk15ListenersListenersKt$sam$i$android_view_View_OnGenericMotionListener$0(Function2 function2) {
        this.function = function2;
    }

    public final /* synthetic */ boolean onGenericMotion(View view, MotionEvent motionEvent) {
        Object invoke = this.function.invoke(view, motionEvent);
        Intrinsics.checkExpressionValueIsNotNull(invoke, "invoke(...)");
        return ((Boolean) invoke).booleanValue();
    }
}
