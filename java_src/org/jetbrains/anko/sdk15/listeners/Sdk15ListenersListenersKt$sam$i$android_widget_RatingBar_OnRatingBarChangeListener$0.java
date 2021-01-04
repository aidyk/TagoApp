package org.jetbrains.anko.sdk15.listeners;

import android.widget.RatingBar;
import kotlin.Metadata;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

@Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 1, 13})
/* compiled from: Listeners.kt */
public final class Sdk15ListenersListenersKt$sam$i$android_widget_RatingBar_OnRatingBarChangeListener$0 implements RatingBar.OnRatingBarChangeListener {
    private final /* synthetic */ Function3 function;

    public Sdk15ListenersListenersKt$sam$i$android_widget_RatingBar_OnRatingBarChangeListener$0(Function3 function3) {
        this.function = function3;
    }

    public final /* synthetic */ void onRatingChanged(RatingBar ratingBar, float f, boolean z) {
        Intrinsics.checkExpressionValueIsNotNull(this.function.invoke(ratingBar, Float.valueOf(f), Boolean.valueOf(z)), "invoke(...)");
    }
}
