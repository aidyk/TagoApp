package org.jetbrains.anko.sdk15.listeners;

import android.widget.CalendarView;
import kotlin.Metadata;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;

@Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 1, 13})
/* compiled from: Listeners.kt */
public final class Sdk15ListenersListenersKt$sam$i$android_widget_CalendarView_OnDateChangeListener$0 implements CalendarView.OnDateChangeListener {
    private final /* synthetic */ Function4 function;

    public Sdk15ListenersListenersKt$sam$i$android_widget_CalendarView_OnDateChangeListener$0(Function4 function4) {
        this.function = function4;
    }

    public final /* synthetic */ void onSelectedDayChange(CalendarView calendarView, int i, int i2, int i3) {
        Intrinsics.checkExpressionValueIsNotNull(this.function.invoke(calendarView, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3)), "invoke(...)");
    }
}
