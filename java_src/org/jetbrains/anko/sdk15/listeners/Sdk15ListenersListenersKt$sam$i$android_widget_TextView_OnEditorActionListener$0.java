package org.jetbrains.anko.sdk15.listeners;

import android.view.KeyEvent;
import android.widget.TextView;
import kotlin.Metadata;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

@Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 1, 13})
/* compiled from: Listeners.kt */
public final class Sdk15ListenersListenersKt$sam$i$android_widget_TextView_OnEditorActionListener$0 implements TextView.OnEditorActionListener {
    private final /* synthetic */ Function3 function;

    public Sdk15ListenersListenersKt$sam$i$android_widget_TextView_OnEditorActionListener$0(Function3 function3) {
        this.function = function3;
    }

    public final /* synthetic */ boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        Object invoke = this.function.invoke(textView, Integer.valueOf(i), keyEvent);
        Intrinsics.checkExpressionValueIsNotNull(invoke, "invoke(...)");
        return ((Boolean) invoke).booleanValue();
    }
}
