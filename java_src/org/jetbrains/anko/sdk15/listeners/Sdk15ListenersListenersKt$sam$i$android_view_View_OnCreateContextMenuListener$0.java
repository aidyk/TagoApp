package org.jetbrains.anko.sdk15.listeners;

import android.view.ContextMenu;
import android.view.View;
import kotlin.Metadata;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

@Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 1, 13})
/* compiled from: Listeners.kt */
public final class Sdk15ListenersListenersKt$sam$i$android_view_View_OnCreateContextMenuListener$0 implements View.OnCreateContextMenuListener {
    private final /* synthetic */ Function3 function;

    public Sdk15ListenersListenersKt$sam$i$android_view_View_OnCreateContextMenuListener$0(Function3 function3) {
        this.function = function3;
    }

    public final /* synthetic */ void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        Intrinsics.checkExpressionValueIsNotNull(this.function.invoke(contextMenu, view, contextMenuInfo), "invoke(...)");
    }
}
