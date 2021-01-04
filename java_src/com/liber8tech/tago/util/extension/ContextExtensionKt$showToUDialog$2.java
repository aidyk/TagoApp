package com.liber8tech.tago.util.extension;

import android.app.AlertDialog;
import android.content.Context;
import android.widget.Button;
import com.liber8tech.tago.R;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.anko.AndroidDialogsKt;
import org.jetbrains.anko.Sdk15PropertiesKt;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", "Landroid/content/Context;", "invoke"}, k = 3, mv = {1, 1, 13})
/* compiled from: ContextExtension.kt */
public final class ContextExtensionKt$showToUDialog$2 extends Lambda implements Function1<Context, Unit> {
    final /* synthetic */ Function1 $navigation;
    final /* synthetic */ Function1 $negativeClicked;
    final /* synthetic */ Context $this_showToUDialog;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    ContextExtensionKt$showToUDialog$2(Context context, Function1 function1, Function1 function12) {
        super(1);
        this.$this_showToUDialog = context;
        this.$navigation = function1;
        this.$negativeClicked = function12;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Context context) {
        invoke(context);
        return Unit.INSTANCE;
    }

    public final void invoke(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        String string = context.getString(R.string.toc_message);
        Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.toc_message)");
        AlertDialog show = AndroidDialogsKt.alert(context, string, context.getString(R.string.toc_title), new ContextExtensionKt$showToUDialog$2$dialog$1(this, context)).show();
        Button button = show.getButton(-1);
        Intrinsics.checkExpressionValueIsNotNull(button, "getButton(AlertDialog.BUTTON_POSITIVE)");
        Sdk15PropertiesKt.setTextColor(button, AndroidExtensionsKt.getColorCompat(context, R.color.gold));
        Button button2 = show.getButton(-3);
        Intrinsics.checkExpressionValueIsNotNull(button2, "getButton(AlertDialog.BUTTON_NEUTRAL)");
        Sdk15PropertiesKt.setTextColor(button2, AndroidExtensionsKt.getColorCompat(context, R.color.gold));
        Button button3 = show.getButton(-2);
        Intrinsics.checkExpressionValueIsNotNull(button3, "getButton(AlertDialog.BUTTON_NEGATIVE)");
        Sdk15PropertiesKt.setTextColor(button3, AndroidExtensionsKt.getColorCompat(context, R.color.gold));
        show.setCancelable(false);
    }
}
