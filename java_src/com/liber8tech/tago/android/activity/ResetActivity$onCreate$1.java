package com.liber8tech.tago.android.activity;

import android.app.AlertDialog;
import android.view.View;
import com.liber8tech.tago.R;
import com.liber8tech.tago.util.extension.AndroidExtensionsKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "Landroid/view/View;", "invoke"}, k = 3, mv = {1, 1, 13})
/* compiled from: ResetActivity.kt */
final class ResetActivity$onCreate$1 extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ ResetActivity this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    ResetActivity$onCreate$1(ResetActivity resetActivity) {
        super(1);
        this.this$0 = resetActivity;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(View view) {
        invoke(view);
        return Unit.INSTANCE;
    }

    public final void invoke(@NotNull View view) {
        Intrinsics.checkParameterIsNotNull(view, "it");
        AlertDialog create = new AlertDialog.Builder(this.this$0).setTitle(this.this$0.getString(R.string.reset_alert_title)).setCancelable(false).setMessage(this.this$0.getString(R.string.reset_alert_message)).setPositiveButton(this.this$0.getString(17039370), new ResetActivity$onCreate$1$builder$1(this)).setNegativeButton(this.this$0.getString(17039360), new ResetActivity$onCreate$1$builder$2(this)).create();
        create.show();
        create.getButton(-2).setTextColor(AndroidExtensionsKt.getColorCompat(this.this$0, R.color.black));
        create.getButton(-1).setTextColor(AndroidExtensionsKt.getColorCompat(this.this$0, R.color.black));
    }
}
