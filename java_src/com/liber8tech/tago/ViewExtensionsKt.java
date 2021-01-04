package com.liber8tech.tago;

import android.view.View;
import android.widget.TextView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0004\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0005\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0006\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0007\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\b\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\t\u001a\u00020\u0001*\u00020\n¨\u0006\u000b"}, d2 = {"gravityBottom", "", "Landroid/widget/TextView;", "gravityCenter", "gravityCenterHorizontal", "gravityCenterVertical", "gravityLeft", "gravityRight", "gravityTop", "stealTouchEvents", "Landroid/view/View;", "app_release"}, k = 2, mv = {1, 1, 13})
/* compiled from: ViewExtensions.kt */
public final class ViewExtensionsKt {
    public static final void gravityLeft(@NotNull TextView textView) {
        Intrinsics.checkParameterIsNotNull(textView, "receiver$0");
        textView.setGravity(3);
    }

    public static final void gravityRight(@NotNull TextView textView) {
        Intrinsics.checkParameterIsNotNull(textView, "receiver$0");
        textView.setGravity(5);
    }

    public static final void gravityBottom(@NotNull TextView textView) {
        Intrinsics.checkParameterIsNotNull(textView, "receiver$0");
        textView.setGravity(80);
    }

    public static final void gravityTop(@NotNull TextView textView) {
        Intrinsics.checkParameterIsNotNull(textView, "receiver$0");
        textView.setGravity(48);
    }

    public static final void gravityCenterVertical(@NotNull TextView textView) {
        Intrinsics.checkParameterIsNotNull(textView, "receiver$0");
        textView.setGravity(16);
    }

    public static final void gravityCenterHorizontal(@NotNull TextView textView) {
        Intrinsics.checkParameterIsNotNull(textView, "receiver$0");
        textView.setGravity(1);
    }

    public static final void gravityCenter(@NotNull TextView textView) {
        Intrinsics.checkParameterIsNotNull(textView, "receiver$0");
        textView.setGravity(17);
    }

    public static final void stealTouchEvents(@NotNull View view) {
        Intrinsics.checkParameterIsNotNull(view, "receiver$0");
        view.setOnTouchListener(ViewExtensionsKt$stealTouchEvents$1.INSTANCE);
    }
}
