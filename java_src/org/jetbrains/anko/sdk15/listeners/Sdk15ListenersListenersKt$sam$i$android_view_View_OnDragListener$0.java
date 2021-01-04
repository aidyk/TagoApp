package org.jetbrains.anko.sdk15.listeners;

import android.view.DragEvent;
import android.view.View;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

@Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 1, 13})
/* compiled from: Listeners.kt */
public final class Sdk15ListenersListenersKt$sam$i$android_view_View_OnDragListener$0 implements View.OnDragListener {
    private final /* synthetic */ Function2 function;

    public Sdk15ListenersListenersKt$sam$i$android_view_View_OnDragListener$0(Function2 function2) {
        this.function = function2;
    }

    public final /* synthetic */ boolean onDrag(View view, DragEvent dragEvent) {
        Object invoke = this.function.invoke(view, dragEvent);
        Intrinsics.checkExpressionValueIsNotNull(invoke, "invoke(...)");
        return ((Boolean) invoke).booleanValue();
    }
}
