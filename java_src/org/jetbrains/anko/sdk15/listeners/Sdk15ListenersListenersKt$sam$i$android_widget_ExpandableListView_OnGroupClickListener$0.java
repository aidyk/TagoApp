package org.jetbrains.anko.sdk15.listeners;

import android.view.View;
import android.widget.ExpandableListView;
import kotlin.Metadata;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;

@Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 1, 13})
/* compiled from: Listeners.kt */
public final class Sdk15ListenersListenersKt$sam$i$android_widget_ExpandableListView_OnGroupClickListener$0 implements ExpandableListView.OnGroupClickListener {
    private final /* synthetic */ Function4 function;

    public Sdk15ListenersListenersKt$sam$i$android_widget_ExpandableListView_OnGroupClickListener$0(Function4 function4) {
        this.function = function4;
    }

    public final /* synthetic */ boolean onGroupClick(ExpandableListView expandableListView, View view, int i, long j) {
        Object invoke = this.function.invoke(expandableListView, view, Integer.valueOf(i), Long.valueOf(j));
        Intrinsics.checkExpressionValueIsNotNull(invoke, "invoke(...)");
        return ((Boolean) invoke).booleanValue();
    }
}
