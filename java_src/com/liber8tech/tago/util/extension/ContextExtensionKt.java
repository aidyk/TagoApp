package com.liber8tech.tago.util.extension;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.support.design.widget.Snackbar;
import android.view.View;
import android.widget.Button;
import com.facebook.internal.NativeProtocol;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.liber8tech.tago.Constants;
import com.liber8tech.tago.R;
import com.liber8tech.tago.android.activity.MainActivity;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.anko.AlertBuilder;
import org.jetbrains.anko.AndroidDialogsKt;
import org.jetbrains.anko.AsyncKt;
import org.jetbrains.anko.Sdk15PropertiesKt;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u00002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001aB\u0010\u0003\u001a\u00020\u0001*\u00020\u00022\u0018\u0010\u0004\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0004\u0012\u00020\u00010\u00052\u001a\b\u0002\u0010\b\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0004\u0012\u00020\u00010\u0005H\u0002\u001a@\u0010\t\u001a\u00020\u0001*\u00020\u00022\u0018\u0010\n\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0004\u0012\u00020\u00010\u00052\u001a\b\u0002\u0010\b\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0004\u0012\u00020\u00010\u0005\u001a\u001a\u0010\u000b\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f\u001a@\u0010\u000b\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00010\u00052\b\b\u0002\u0010\u0012\u001a\u00020\r\u001a\u001a\u0010\u000b\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\f\u001a\u00020\u00132\u0006\u0010\u000e\u001a\u00020\u000f¨\u0006\u0014"}, d2 = {"showCreatedMain", "", "Landroid/content/Context;", "showPPDialog", "positiveClicked", "Lkotlin/Function1;", "Lorg/jetbrains/anko/AlertBuilder;", "Landroid/content/DialogInterface;", "negativeClicked", "showToUDialog", "navigation", "tintedSnack", "title", "", "rootView", "Landroid/view/View;", "actionTitle", NativeProtocol.WEB_DIALOG_ACTION, "length", "", "app_release"}, k = 2, mv = {1, 1, 13})
/* compiled from: ContextExtension.kt */
public final class ContextExtensionKt {
    public static /* synthetic */ void tintedSnack$default(Context context, int i, int i2, View view, Function1 function1, int i3, int i4, Object obj) {
        tintedSnack(context, i, i2, view, function1, (i4 & 16) != 0 ? 0 : i3);
    }

    public static final void tintedSnack(@NotNull Context context, int i, int i2, @NotNull View view, @NotNull Function1<? super View, Unit> function1, int i3) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        Intrinsics.checkParameterIsNotNull(view, "rootView");
        Intrinsics.checkParameterIsNotNull(function1, NativeProtocol.WEB_DIALOG_ACTION);
        Snackbar make = Snackbar.make(view, i, i3);
        make.setAction(context.getString(i2), new ContextExtensionKt$tintedSnack$$inlined$apply$lambda$1(make, context, i2, function1));
        View view2 = make.getView();
        Intrinsics.checkExpressionValueIsNotNull(view2, Promotion.ACTION_VIEW);
        Context context2 = make.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context2, "context");
        Sdk15PropertiesKt.setBackgroundColor(view2, AndroidExtensionsKt.getColorCompat(context2, R.color.gold));
        make.show();
    }

    public static final void tintedSnack(@NotNull Context context, @NotNull String str, @NotNull View view) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        Intrinsics.checkParameterIsNotNull(str, "title");
        Intrinsics.checkParameterIsNotNull(view, "rootView");
        Snackbar make = Snackbar.make(view, str, 0);
        View view2 = make.getView();
        Intrinsics.checkExpressionValueIsNotNull(view2, Promotion.ACTION_VIEW);
        Context context2 = make.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context2, "context");
        Sdk15PropertiesKt.setBackgroundColor(view2, AndroidExtensionsKt.getColorCompat(context2, R.color.gold));
        make.show();
    }

    public static final void tintedSnack(@NotNull Context context, int i, @NotNull View view) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        Intrinsics.checkParameterIsNotNull(view, "rootView");
        Snackbar make = Snackbar.make(view, i, 0);
        View view2 = make.getView();
        Intrinsics.checkExpressionValueIsNotNull(view2, Promotion.ACTION_VIEW);
        Context context2 = make.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context2, "context");
        Sdk15PropertiesKt.setBackgroundColor(view2, AndroidExtensionsKt.getColorCompat(context2, R.color.gold));
        make.show();
    }

    public static final void showCreatedMain(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        Intent intent = new Intent(context, MainActivity.class);
        intent.putExtra(Constants.collectionType, Constants.created);
        intent.setFlags(335544320);
        context.startActivity(intent);
    }

    public static /* synthetic */ void showToUDialog$default(Context context, Function1 function1, Function1 function12, int i, Object obj) {
        if ((i & 2) != 0) {
            function12 = ContextExtensionKt$showToUDialog$1.INSTANCE;
        }
        showToUDialog(context, function1, function12);
    }

    public static final void showToUDialog(@NotNull Context context, @NotNull Function1<? super AlertBuilder<? extends DialogInterface>, Unit> function1, @NotNull Function1<? super AlertBuilder<? extends DialogInterface>, Unit> function12) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "navigation");
        Intrinsics.checkParameterIsNotNull(function12, "negativeClicked");
        AsyncKt.runOnUiThread(context, new ContextExtensionKt$showToUDialog$2(context, function1, function12));
    }

    static /* synthetic */ void showPPDialog$default(Context context, Function1 function1, Function1 function12, int i, Object obj) {
        if ((i & 2) != 0) {
            function12 = ContextExtensionKt$showPPDialog$1.INSTANCE;
        }
        showPPDialog(context, function1, function12);
    }

    /* access modifiers changed from: private */
    public static final void showPPDialog(@NotNull Context context, Function1<? super AlertBuilder<? extends DialogInterface>, Unit> function1, Function1<? super AlertBuilder<? extends DialogInterface>, Unit> function12) {
        String string = context.getString(R.string.pp_message);
        Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.pp_message)");
        AlertDialog show = AndroidDialogsKt.alert(context, string, context.getString(R.string.pp_title), new ContextExtensionKt$showPPDialog$dialog$1(context, function1, function12)).show();
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
