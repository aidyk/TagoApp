package org.jetbrains.anko.sdk15.listeners;

import android.widget.NumberPicker;
import kotlin.Metadata;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

@Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 1, 13})
/* compiled from: Listeners.kt */
public final class Sdk15ListenersListenersKt$sam$i$android_widget_NumberPicker_OnValueChangeListener$0 implements NumberPicker.OnValueChangeListener {
    private final /* synthetic */ Function3 function;

    public Sdk15ListenersListenersKt$sam$i$android_widget_NumberPicker_OnValueChangeListener$0(Function3 function3) {
        this.function = function3;
    }

    public final /* synthetic */ void onValueChange(NumberPicker numberPicker, int i, int i2) {
        Intrinsics.checkExpressionValueIsNotNull(this.function.invoke(numberPicker, Integer.valueOf(i), Integer.valueOf(i2)), "invoke(...)");
    }
}
