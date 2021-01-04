package org.jetbrains.anko.sdk15.listeners;

import android.widget.RadioGroup;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

@Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 1, 13})
/* compiled from: Listeners.kt */
public final class Sdk15ListenersListenersKt$sam$i$android_widget_RadioGroup_OnCheckedChangeListener$0 implements RadioGroup.OnCheckedChangeListener {
    private final /* synthetic */ Function2 function;

    public Sdk15ListenersListenersKt$sam$i$android_widget_RadioGroup_OnCheckedChangeListener$0(Function2 function2) {
        this.function = function2;
    }

    public final /* synthetic */ void onCheckedChanged(RadioGroup radioGroup, int i) {
        Intrinsics.checkExpressionValueIsNotNull(this.function.invoke(radioGroup, Integer.valueOf(i)), "invoke(...)");
    }
}
