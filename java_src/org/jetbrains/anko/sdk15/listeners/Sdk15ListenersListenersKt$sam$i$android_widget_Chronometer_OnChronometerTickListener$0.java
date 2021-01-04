package org.jetbrains.anko.sdk15.listeners;

import android.widget.Chronometer;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 1, 13})
/* compiled from: Listeners.kt */
public final class Sdk15ListenersListenersKt$sam$i$android_widget_Chronometer_OnChronometerTickListener$0 implements Chronometer.OnChronometerTickListener {
    private final /* synthetic */ Function1 function;

    public Sdk15ListenersListenersKt$sam$i$android_widget_Chronometer_OnChronometerTickListener$0(Function1 function1) {
        this.function = function1;
    }

    public final /* synthetic */ void onChronometerTick(Chronometer chronometer) {
        Intrinsics.checkExpressionValueIsNotNull(this.function.invoke(chronometer), "invoke(...)");
    }
}
