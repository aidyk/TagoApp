package org.jetbrains.anko.sdk15.listeners;

import android.widget.SlidingDrawer;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

@Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 1, 13})
/* compiled from: Listeners.kt */
public final class Sdk15ListenersListenersKt$sam$i$android_widget_SlidingDrawer_OnDrawerOpenListener$0 implements SlidingDrawer.OnDrawerOpenListener {
    private final /* synthetic */ Function0 function;

    public Sdk15ListenersListenersKt$sam$i$android_widget_SlidingDrawer_OnDrawerOpenListener$0(Function0 function0) {
        this.function = function0;
    }

    public final /* synthetic */ void onDrawerOpened() {
        Intrinsics.checkExpressionValueIsNotNull(this.function.invoke(), "invoke(...)");
    }
}
