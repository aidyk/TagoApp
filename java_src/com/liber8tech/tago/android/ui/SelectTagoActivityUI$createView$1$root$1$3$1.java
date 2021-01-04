package com.liber8tech.tago.android.ui;

import android.view.MotionEvent;
import android.view.View;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "", "<anonymous parameter 0>", "Landroid/view/View;", "<anonymous parameter 1>", "Landroid/view/MotionEvent;", "invoke"}, k = 3, mv = {1, 1, 13})
/* compiled from: SelectTagoActivityUI.kt */
public final class SelectTagoActivityUI$createView$1$root$1$3$1 extends Lambda implements Function2<View, MotionEvent, Boolean> {
    public static final SelectTagoActivityUI$createView$1$root$1$3$1 INSTANCE = new SelectTagoActivityUI$createView$1$root$1$3$1();

    SelectTagoActivityUI$createView$1$root$1$3$1() {
        super(2);
    }

    public final boolean invoke(@NotNull View view, @NotNull MotionEvent motionEvent) {
        Intrinsics.checkParameterIsNotNull(view, "<anonymous parameter 0>");
        Intrinsics.checkParameterIsNotNull(motionEvent, "<anonymous parameter 1>");
        return true;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Boolean invoke(View view, MotionEvent motionEvent) {
        return Boolean.valueOf(invoke(view, motionEvent));
    }
}
