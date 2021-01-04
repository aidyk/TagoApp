package org.jetbrains.anko.sdk15.listeners;

import android.view.KeyEvent;
import android.view.View;
import kotlin.Metadata;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

@Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 1, 13})
/* compiled from: Listeners.kt */
public final class Sdk15ListenersListenersKt$sam$i$android_view_View_OnKeyListener$0 implements View.OnKeyListener {
    private final /* synthetic */ Function3 function;

    public Sdk15ListenersListenersKt$sam$i$android_view_View_OnKeyListener$0(Function3 function3) {
        this.function = function3;
    }

    public final /* synthetic */ boolean onKey(View view, int i, KeyEvent keyEvent) {
        Object invoke = this.function.invoke(view, Integer.valueOf(i), keyEvent);
        Intrinsics.checkExpressionValueIsNotNull(invoke, "invoke(...)");
        return ((Boolean) invoke).booleanValue();
    }
}
