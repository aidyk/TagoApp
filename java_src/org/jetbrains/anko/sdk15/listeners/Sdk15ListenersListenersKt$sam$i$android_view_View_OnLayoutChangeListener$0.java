package org.jetbrains.anko.sdk15.listeners;

import android.view.View;
import kotlin.Metadata;
import kotlin.jvm.functions.Function9;
import kotlin.jvm.internal.Intrinsics;

@Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 1, 13})
/* compiled from: Listeners.kt */
public final class Sdk15ListenersListenersKt$sam$i$android_view_View_OnLayoutChangeListener$0 implements View.OnLayoutChangeListener {
    private final /* synthetic */ Function9 function;

    public Sdk15ListenersListenersKt$sam$i$android_view_View_OnLayoutChangeListener$0(Function9 function9) {
        this.function = function9;
    }

    public final /* synthetic */ void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        Intrinsics.checkExpressionValueIsNotNull(this.function.invoke(view, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5), Integer.valueOf(i6), Integer.valueOf(i7), Integer.valueOf(i8)), "invoke(...)");
    }
}
