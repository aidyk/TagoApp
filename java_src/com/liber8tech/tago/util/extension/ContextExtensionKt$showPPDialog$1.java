package com.liber8tech.tago.util.extension;

import android.content.DialogInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.anko.AlertBuilder;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "it", "Lorg/jetbrains/anko/AlertBuilder;", "Landroid/content/DialogInterface;", "invoke"}, k = 3, mv = {1, 1, 13})
/* compiled from: ContextExtension.kt */
final class ContextExtensionKt$showPPDialog$1 extends Lambda implements Function1<AlertBuilder<? extends DialogInterface>, Unit> {
    public static final ContextExtensionKt$showPPDialog$1 INSTANCE = new ContextExtensionKt$showPPDialog$1();

    ContextExtensionKt$showPPDialog$1() {
        super(1);
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(AlertBuilder<? extends DialogInterface> alertBuilder) {
        invoke(alertBuilder);
        return Unit.INSTANCE;
    }

    public final void invoke(@NotNull AlertBuilder<? extends DialogInterface> alertBuilder) {
        Intrinsics.checkParameterIsNotNull(alertBuilder, "it");
    }
}
