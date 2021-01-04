package com.liber8tech.tago.util.extension;

import android.content.Context;
import android.content.DialogInterface;
import com.liber8tech.tago.R;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.anko.AlertBuilder;
import org.jetbrains.anko.IntentsKt;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "Lorg/jetbrains/anko/AlertBuilder;", "Landroid/content/DialogInterface;", "invoke"}, k = 3, mv = {1, 1, 13})
/* compiled from: ContextExtension.kt */
public final class ContextExtensionKt$showToUDialog$2$dialog$1 extends Lambda implements Function1<AlertBuilder<? extends DialogInterface>, Unit> {
    final /* synthetic */ Context $this_runOnUiThread;
    final /* synthetic */ ContextExtensionKt$showToUDialog$2 this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    ContextExtensionKt$showToUDialog$2$dialog$1(ContextExtensionKt$showToUDialog$2 contextExtensionKt$showToUDialog$2, Context context) {
        super(1);
        this.this$0 = contextExtensionKt$showToUDialog$2;
        this.$this_runOnUiThread = context;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(AlertBuilder<? extends DialogInterface> alertBuilder) {
        invoke(alertBuilder);
        return Unit.INSTANCE;
    }

    public final void invoke(@NotNull final AlertBuilder<? extends DialogInterface> alertBuilder) {
        Intrinsics.checkParameterIsNotNull(alertBuilder, "receiver$0");
        String string = this.$this_runOnUiThread.getString(R.string.accept);
        Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.accept)");
        alertBuilder.positiveButton(string, new Function1<DialogInterface, Unit>(this) {
            /* class com.liber8tech.tago.util.extension.ContextExtensionKt$showToUDialog$2$dialog$1.AnonymousClass1 */
            final /* synthetic */ ContextExtensionKt$showToUDialog$2$dialog$1 this$0;

            {
                this.this$0 = r1;
            }

            /* Return type fixed from 'java.lang.Object' to match base method */
            /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DialogInterface dialogInterface) {
                invoke(dialogInterface);
                return Unit.INSTANCE;
            }

            public final void invoke(@NotNull DialogInterface dialogInterface) {
                Intrinsics.checkParameterIsNotNull(dialogInterface, "it");
                ContextExtensionKt.showPPDialog(this.this$0.$this_runOnUiThread, this.this$0.this$0.$navigation, this.this$0.this$0.$negativeClicked);
            }
        });
        String string2 = this.$this_runOnUiThread.getString(R.string.decline);
        Intrinsics.checkExpressionValueIsNotNull(string2, "getString(R.string.decline)");
        alertBuilder.negativeButton(string2, new Function1<DialogInterface, Unit>(this) {
            /* class com.liber8tech.tago.util.extension.ContextExtensionKt$showToUDialog$2$dialog$1.AnonymousClass2 */
            final /* synthetic */ ContextExtensionKt$showToUDialog$2$dialog$1 this$0;

            {
                this.this$0 = r1;
            }

            /* Return type fixed from 'java.lang.Object' to match base method */
            /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DialogInterface dialogInterface) {
                invoke(dialogInterface);
                return Unit.INSTANCE;
            }

            public final void invoke(@NotNull DialogInterface dialogInterface) {
                Intrinsics.checkParameterIsNotNull(dialogInterface, "it");
                this.this$0.this$0.$negativeClicked.invoke(alertBuilder);
            }
        });
        String string3 = this.$this_runOnUiThread.getString(R.string.toc);
        Intrinsics.checkExpressionValueIsNotNull(string3, "getString(R.string.toc)");
        alertBuilder.neutralPressed(string3, new Function1<DialogInterface, Unit>(this) {
            /* class com.liber8tech.tago.util.extension.ContextExtensionKt$showToUDialog$2$dialog$1.AnonymousClass3 */
            final /* synthetic */ ContextExtensionKt$showToUDialog$2$dialog$1 this$0;

            {
                this.this$0 = r1;
            }

            /* Return type fixed from 'java.lang.Object' to match base method */
            /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DialogInterface dialogInterface) {
                invoke(dialogInterface);
                return Unit.INSTANCE;
            }

            public final void invoke(@NotNull DialogInterface dialogInterface) {
                Intrinsics.checkParameterIsNotNull(dialogInterface, "it");
                Context context = this.this$0.this$0.$this_showToUDialog;
                String string = this.this$0.$this_runOnUiThread.getString(R.string.url_terms);
                Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.url_terms)");
                IntentsKt.browse$default(context, string, false, 2, (Object) null);
            }
        });
    }
}
