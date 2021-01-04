package org.jetbrains.anko.sdk15.listeners;

import android.view.View;
import android.widget.ExpandableListView;
import kotlin.Metadata;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.internal.Intrinsics;

@Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 1, 13})
/* compiled from: Listeners.kt */
public final class Sdk15ListenersListenersKt$sam$i$android_widget_ExpandableListView_OnChildClickListener$0 implements ExpandableListView.OnChildClickListener {
    private final /* synthetic */ Function5 function;

    public Sdk15ListenersListenersKt$sam$i$android_widget_ExpandableListView_OnChildClickListener$0(Function5 function5) {
        this.function = function5;
    }

    public final /* synthetic */ boolean onChildClick(ExpandableListView expandableListView, View view, int i, int i2, long j) {
        Object invoke = this.function.invoke(expandableListView, view, Integer.valueOf(i), Integer.valueOf(i2), Long.valueOf(j));
        Intrinsics.checkExpressionValueIsNotNull(invoke, "invoke(...)");
        return ((Boolean) invoke).booleanValue();
    }
}
