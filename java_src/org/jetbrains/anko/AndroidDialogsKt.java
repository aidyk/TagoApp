package org.jetbrains.anko;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Fragment;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public final class AndroidDialogsKt {
    public static /* synthetic */ AlertBuilder alert$default(AnkoContext ankoContext, CharSequence charSequence, CharSequence charSequence2, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            charSequence2 = null;
        }
        if ((i & 4) != 0) {
            function1 = null;
        }
        Intrinsics.checkParameterIsNotNull(ankoContext, "receiver$0");
        Intrinsics.checkParameterIsNotNull(charSequence, "message");
        return alert(ankoContext.getCtx(), charSequence, charSequence2, function1);
    }

    public static final AlertBuilder<AlertDialog> alert(AnkoContext<?> ankoContext, CharSequence charSequence, CharSequence charSequence2, Function1<? super AlertBuilder<? extends DialogInterface>, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(ankoContext, "receiver$0");
        Intrinsics.checkParameterIsNotNull(charSequence, "message");
        return alert(ankoContext.getCtx(), charSequence, charSequence2, function1);
    }

    public static /* synthetic */ AlertBuilder alert$default(Fragment fragment, CharSequence charSequence, CharSequence charSequence2, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            charSequence2 = null;
        }
        if ((i & 4) != 0) {
            function1 = null;
        }
        Intrinsics.checkParameterIsNotNull(fragment, "receiver$0");
        Intrinsics.checkParameterIsNotNull(charSequence, "message");
        Activity activity = fragment.getActivity();
        Intrinsics.checkExpressionValueIsNotNull(activity, "activity");
        return alert(activity, charSequence, charSequence2, function1);
    }

    public static final AlertBuilder<AlertDialog> alert(Fragment fragment, CharSequence charSequence, CharSequence charSequence2, Function1<? super AlertBuilder<? extends DialogInterface>, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(fragment, "receiver$0");
        Intrinsics.checkParameterIsNotNull(charSequence, "message");
        Activity activity = fragment.getActivity();
        Intrinsics.checkExpressionValueIsNotNull(activity, "activity");
        return alert(activity, charSequence, charSequence2, function1);
    }

    public static /* synthetic */ AlertBuilder alert$default(Context context, CharSequence charSequence, CharSequence charSequence2, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            charSequence2 = null;
        }
        if ((i & 4) != 0) {
            function1 = null;
        }
        return alert(context, charSequence, charSequence2, function1);
    }

    public static final AlertBuilder<AlertDialog> alert(Context context, CharSequence charSequence, CharSequence charSequence2, Function1<? super AlertBuilder<? extends DialogInterface>, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        Intrinsics.checkParameterIsNotNull(charSequence, "message");
        AndroidAlertBuilder androidAlertBuilder = new AndroidAlertBuilder(context);
        if (charSequence2 != null) {
            androidAlertBuilder.setTitle(charSequence2);
        }
        androidAlertBuilder.setMessage(charSequence);
        if (function1 != null) {
            function1.invoke(androidAlertBuilder);
        }
        return androidAlertBuilder;
    }

    public static /* synthetic */ AlertBuilder alert$default(AnkoContext ankoContext, int i, Integer num, Function1 function1, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            num = null;
        }
        if ((i2 & 4) != 0) {
            function1 = null;
        }
        Intrinsics.checkParameterIsNotNull(ankoContext, "receiver$0");
        return alert(ankoContext.getCtx(), i, num, function1);
    }

    public static final AlertBuilder<DialogInterface> alert(AnkoContext<?> ankoContext, int i, Integer num, Function1<? super AlertBuilder<? extends DialogInterface>, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(ankoContext, "receiver$0");
        return alert(ankoContext.getCtx(), i, num, function1);
    }

    public static /* synthetic */ AlertBuilder alert$default(Fragment fragment, int i, Integer num, Function1 function1, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            num = null;
        }
        if ((i2 & 4) != 0) {
            function1 = null;
        }
        Intrinsics.checkParameterIsNotNull(fragment, "receiver$0");
        Activity activity = fragment.getActivity();
        Intrinsics.checkExpressionValueIsNotNull(activity, "activity");
        return alert(activity, i, num, function1);
    }

    public static final AlertBuilder<DialogInterface> alert(Fragment fragment, int i, Integer num, Function1<? super AlertBuilder<? extends DialogInterface>, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(fragment, "receiver$0");
        Activity activity = fragment.getActivity();
        Intrinsics.checkExpressionValueIsNotNull(activity, "activity");
        return alert(activity, i, num, function1);
    }

    public static /* synthetic */ AlertBuilder alert$default(Context context, int i, Integer num, Function1 function1, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            num = null;
        }
        if ((i2 & 4) != 0) {
            function1 = null;
        }
        return alert(context, i, num, function1);
    }

    public static final AlertBuilder<DialogInterface> alert(Context context, int i, Integer num, Function1<? super AlertBuilder<? extends DialogInterface>, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        AndroidAlertBuilder androidAlertBuilder = new AndroidAlertBuilder(context);
        if (num != null) {
            androidAlertBuilder.setTitleResource(num.intValue());
        }
        androidAlertBuilder.setMessageResource(i);
        if (function1 != null) {
            function1.invoke(androidAlertBuilder);
        }
        return androidAlertBuilder;
    }

    public static final AlertBuilder<DialogInterface> alert(AnkoContext<?> ankoContext, Function1<? super AlertBuilder<? extends DialogInterface>, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(ankoContext, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "init");
        return alert(ankoContext.getCtx(), function1);
    }

    public static final AlertBuilder<DialogInterface> alert(Fragment fragment, Function1<? super AlertBuilder<? extends DialogInterface>, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(fragment, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "init");
        Activity activity = fragment.getActivity();
        Intrinsics.checkExpressionValueIsNotNull(activity, "activity");
        return alert(activity, function1);
    }

    public static final AlertBuilder<DialogInterface> alert(Context context, Function1<? super AlertBuilder<? extends DialogInterface>, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        Intrinsics.checkParameterIsNotNull(function1, "init");
        AndroidAlertBuilder androidAlertBuilder = new AndroidAlertBuilder(context);
        function1.invoke(androidAlertBuilder);
        return androidAlertBuilder;
    }

    public static /* synthetic */ ProgressDialog progressDialog$default(AnkoContext ankoContext, Integer num, Integer num2, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            num = null;
        }
        if ((i & 2) != 0) {
            num2 = null;
        }
        if ((i & 4) != 0) {
            function1 = null;
        }
        Intrinsics.checkParameterIsNotNull(ankoContext, "receiver$0");
        return progressDialog(ankoContext.getCtx(), num, num2, function1);
    }

    public static final ProgressDialog progressDialog(AnkoContext<?> ankoContext, Integer num, Integer num2, Function1<? super ProgressDialog, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(ankoContext, "receiver$0");
        return progressDialog(ankoContext.getCtx(), num, num2, function1);
    }

    public static /* synthetic */ ProgressDialog progressDialog$default(Fragment fragment, Integer num, Integer num2, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            num = null;
        }
        if ((i & 2) != 0) {
            num2 = null;
        }
        if ((i & 4) != 0) {
            function1 = null;
        }
        Intrinsics.checkParameterIsNotNull(fragment, "receiver$0");
        Activity activity = fragment.getActivity();
        Intrinsics.checkExpressionValueIsNotNull(activity, "activity");
        return progressDialog(activity, num, num2, function1);
    }

    public static final ProgressDialog progressDialog(Fragment fragment, Integer num, Integer num2, Function1<? super ProgressDialog, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(fragment, "receiver$0");
        Activity activity = fragment.getActivity();
        Intrinsics.checkExpressionValueIsNotNull(activity, "activity");
        return progressDialog(activity, num, num2, function1);
    }

    public static /* synthetic */ ProgressDialog progressDialog$default(Context context, Integer num, Integer num2, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            num = null;
        }
        if ((i & 2) != 0) {
            num2 = null;
        }
        if ((i & 4) != 0) {
            function1 = null;
        }
        return progressDialog(context, num, num2, function1);
    }

    public static final ProgressDialog progressDialog(Context context, Integer num, Integer num2, Function1<? super ProgressDialog, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        String str = null;
        String string = num != null ? context.getString(num.intValue()) : null;
        if (num2 != null) {
            str = context.getString(num2.intValue());
        }
        return progressDialog(context, false, string, str, function1);
    }

    public static /* synthetic */ ProgressDialog indeterminateProgressDialog$default(AnkoContext ankoContext, Integer num, Integer num2, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            num = null;
        }
        if ((i & 2) != 0) {
            num2 = null;
        }
        if ((i & 4) != 0) {
            function1 = null;
        }
        Intrinsics.checkParameterIsNotNull(ankoContext, "receiver$0");
        return indeterminateProgressDialog(ankoContext.getCtx(), num, num2, function1);
    }

    public static final ProgressDialog indeterminateProgressDialog(AnkoContext<?> ankoContext, Integer num, Integer num2, Function1<? super ProgressDialog, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(ankoContext, "receiver$0");
        return indeterminateProgressDialog(ankoContext.getCtx(), num, num2, function1);
    }

    public static /* synthetic */ ProgressDialog indeterminateProgressDialog$default(Fragment fragment, Integer num, Integer num2, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            num = null;
        }
        if ((i & 2) != 0) {
            num2 = null;
        }
        if ((i & 4) != 0) {
            function1 = null;
        }
        Intrinsics.checkParameterIsNotNull(fragment, "receiver$0");
        Activity activity = fragment.getActivity();
        Intrinsics.checkExpressionValueIsNotNull(activity, "activity");
        return indeterminateProgressDialog(activity, num, num2, function1);
    }

    public static final ProgressDialog indeterminateProgressDialog(Fragment fragment, Integer num, Integer num2, Function1<? super ProgressDialog, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(fragment, "receiver$0");
        Activity activity = fragment.getActivity();
        Intrinsics.checkExpressionValueIsNotNull(activity, "activity");
        return indeterminateProgressDialog(activity, num, num2, function1);
    }

    public static /* synthetic */ ProgressDialog indeterminateProgressDialog$default(Context context, Integer num, Integer num2, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            num = null;
        }
        if ((i & 2) != 0) {
            num2 = null;
        }
        if ((i & 4) != 0) {
            function1 = null;
        }
        return indeterminateProgressDialog(context, num, num2, function1);
    }

    public static final ProgressDialog indeterminateProgressDialog(Context context, Integer num, Integer num2, Function1<? super ProgressDialog, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        String str = null;
        String string = num != null ? context.getString(num.intValue()) : null;
        if (num2 != null) {
            str = context.getString(num2.intValue());
        }
        return progressDialog(context, true, string, str, function1);
    }

    public static /* synthetic */ ProgressDialog progressDialog$default(AnkoContext ankoContext, CharSequence charSequence, CharSequence charSequence2, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            charSequence = null;
        }
        if ((i & 2) != 0) {
            charSequence2 = null;
        }
        if ((i & 4) != 0) {
            function1 = null;
        }
        Intrinsics.checkParameterIsNotNull(ankoContext, "receiver$0");
        return progressDialog(ankoContext.getCtx(), charSequence, charSequence2, function1);
    }

    public static final ProgressDialog progressDialog(AnkoContext<?> ankoContext, CharSequence charSequence, CharSequence charSequence2, Function1<? super ProgressDialog, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(ankoContext, "receiver$0");
        return progressDialog(ankoContext.getCtx(), charSequence, charSequence2, function1);
    }

    public static /* synthetic */ ProgressDialog progressDialog$default(Fragment fragment, CharSequence charSequence, CharSequence charSequence2, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            charSequence = null;
        }
        if ((i & 2) != 0) {
            charSequence2 = null;
        }
        if ((i & 4) != 0) {
            function1 = null;
        }
        Intrinsics.checkParameterIsNotNull(fragment, "receiver$0");
        Activity activity = fragment.getActivity();
        Intrinsics.checkExpressionValueIsNotNull(activity, "activity");
        return progressDialog(activity, charSequence, charSequence2, function1);
    }

    public static final ProgressDialog progressDialog(Fragment fragment, CharSequence charSequence, CharSequence charSequence2, Function1<? super ProgressDialog, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(fragment, "receiver$0");
        Activity activity = fragment.getActivity();
        Intrinsics.checkExpressionValueIsNotNull(activity, "activity");
        return progressDialog(activity, charSequence, charSequence2, function1);
    }

    public static /* synthetic */ ProgressDialog progressDialog$default(Context context, CharSequence charSequence, CharSequence charSequence2, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            charSequence = null;
        }
        if ((i & 2) != 0) {
            charSequence2 = null;
        }
        if ((i & 4) != 0) {
            function1 = null;
        }
        return progressDialog(context, charSequence, charSequence2, function1);
    }

    public static final ProgressDialog progressDialog(Context context, CharSequence charSequence, CharSequence charSequence2, Function1<? super ProgressDialog, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        return progressDialog(context, false, charSequence, charSequence2, function1);
    }

    public static /* synthetic */ ProgressDialog indeterminateProgressDialog$default(AnkoContext ankoContext, CharSequence charSequence, CharSequence charSequence2, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            charSequence = null;
        }
        if ((i & 2) != 0) {
            charSequence2 = null;
        }
        if ((i & 4) != 0) {
            function1 = null;
        }
        Intrinsics.checkParameterIsNotNull(ankoContext, "receiver$0");
        return indeterminateProgressDialog(ankoContext.getCtx(), charSequence, charSequence2, function1);
    }

    public static final ProgressDialog indeterminateProgressDialog(AnkoContext<?> ankoContext, CharSequence charSequence, CharSequence charSequence2, Function1<? super ProgressDialog, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(ankoContext, "receiver$0");
        return indeterminateProgressDialog(ankoContext.getCtx(), charSequence, charSequence2, function1);
    }

    public static /* synthetic */ ProgressDialog indeterminateProgressDialog$default(Fragment fragment, CharSequence charSequence, CharSequence charSequence2, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            charSequence = null;
        }
        if ((i & 2) != 0) {
            charSequence2 = null;
        }
        if ((i & 4) != 0) {
            function1 = null;
        }
        Intrinsics.checkParameterIsNotNull(fragment, "receiver$0");
        Activity activity = fragment.getActivity();
        Intrinsics.checkExpressionValueIsNotNull(activity, "activity");
        return indeterminateProgressDialog(activity, charSequence, charSequence2, function1);
    }

    public static final ProgressDialog indeterminateProgressDialog(Fragment fragment, CharSequence charSequence, CharSequence charSequence2, Function1<? super ProgressDialog, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(fragment, "receiver$0");
        Activity activity = fragment.getActivity();
        Intrinsics.checkExpressionValueIsNotNull(activity, "activity");
        return indeterminateProgressDialog(activity, charSequence, charSequence2, function1);
    }

    public static /* synthetic */ ProgressDialog indeterminateProgressDialog$default(Context context, CharSequence charSequence, CharSequence charSequence2, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            charSequence = null;
        }
        if ((i & 2) != 0) {
            charSequence2 = null;
        }
        if ((i & 4) != 0) {
            function1 = null;
        }
        return indeterminateProgressDialog(context, charSequence, charSequence2, function1);
    }

    public static final ProgressDialog indeterminateProgressDialog(Context context, CharSequence charSequence, CharSequence charSequence2, Function1<? super ProgressDialog, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(context, "receiver$0");
        return progressDialog(context, true, charSequence, charSequence2, function1);
    }

    static /* synthetic */ ProgressDialog progressDialog$default(Context context, boolean z, CharSequence charSequence, CharSequence charSequence2, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            charSequence = null;
        }
        if ((i & 4) != 0) {
            charSequence2 = null;
        }
        if ((i & 8) != 0) {
            function1 = null;
        }
        return progressDialog(context, z, charSequence, charSequence2, function1);
    }

    private static final ProgressDialog progressDialog(Context context, boolean z, CharSequence charSequence, CharSequence charSequence2, Function1<? super ProgressDialog, Unit> function1) {
        ProgressDialog progressDialog = new ProgressDialog(context);
        progressDialog.setIndeterminate(z);
        if (!z) {
            progressDialog.setProgressStyle(1);
        }
        if (charSequence != null) {
            progressDialog.setMessage(charSequence);
        }
        if (charSequence2 != null) {
            progressDialog.setTitle(charSequence2);
        }
        if (function1 != null) {
            function1.invoke(progressDialog);
        }
        progressDialog.show();
        return progressDialog;
    }
}
