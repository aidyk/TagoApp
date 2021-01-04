package org.jetbrains.anko.sdk15.listeners;

import android.widget.ExpandableListView;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 1, 13})
/* compiled from: Listeners.kt */
public final class Sdk15ListenersListenersKt$sam$i$android_widget_ExpandableListView_OnGroupCollapseListener$0 implements ExpandableListView.OnGroupCollapseListener {
    private final /* synthetic */ Function1 function;

    public Sdk15ListenersListenersKt$sam$i$android_widget_ExpandableListView_OnGroupCollapseListener$0(Function1 function1) {
        this.function = function1;
    }

    public final /* synthetic */ void onGroupCollapse(int i) {
        Intrinsics.checkExpressionValueIsNotNull(this.function.invoke(Integer.valueOf(i)), "invoke(...)");
    }
}
