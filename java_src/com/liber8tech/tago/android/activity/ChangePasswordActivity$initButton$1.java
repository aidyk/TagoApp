package com.liber8tech.tago.android.activity;

import android.view.View;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "Landroid/view/View;", "invoke"}, k = 3, mv = {1, 1, 13})
/* compiled from: ChangePasswordActivity.kt */
final class ChangePasswordActivity$initButton$1 extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ ChangePasswordActivity this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    ChangePasswordActivity$initButton$1(ChangePasswordActivity changePasswordActivity) {
        super(1);
        this.this$0 = changePasswordActivity;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(View view) {
        invoke(view);
        return Unit.INSTANCE;
    }

    public final void invoke(@Nullable View view) {
        ChangePasswordActivity.access$clickSave(this.this$0);
    }
}
