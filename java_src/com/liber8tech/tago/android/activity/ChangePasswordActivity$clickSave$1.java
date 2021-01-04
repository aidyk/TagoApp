package com.liber8tech.tago.android.activity;

import android.widget.ProgressBar;
import com.liber8tech.tago.R;
import io.reactivex.functions.Action;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 1, 13})
/* compiled from: ChangePasswordActivity.kt */
final class ChangePasswordActivity$clickSave$1 implements Action {
    final /* synthetic */ ChangePasswordActivity this$0;

    ChangePasswordActivity$clickSave$1(ChangePasswordActivity changePasswordActivity) {
        this.this$0 = changePasswordActivity;
    }

    @Override // io.reactivex.functions.Action
    public final void run() {
        ProgressBar progressBar = (ProgressBar) this.this$0._$_findCachedViewById(R.id.changeProgressBar);
        Intrinsics.checkExpressionValueIsNotNull(progressBar, "changeProgressBar");
        progressBar.setVisibility(4);
    }
}
