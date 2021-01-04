package com.liber8tech.tago.android.activity;

import android.widget.ProgressBar;
import com.liber8tech.tago.R;
import io.reactivex.functions.Action;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 1, 13})
/* compiled from: SignUpActivity.kt */
public final class SignUpActivity$signUpClick$1 implements Action {
    final /* synthetic */ SignUpActivity this$0;

    SignUpActivity$signUpClick$1(SignUpActivity signUpActivity) {
        this.this$0 = signUpActivity;
    }

    @Override // io.reactivex.functions.Action
    public final void run() {
        ProgressBar progressBar = (ProgressBar) this.this$0._$_findCachedViewById(R.id.progressBarSignup);
        Intrinsics.checkExpressionValueIsNotNull(progressBar, "progressBarSignup");
        progressBar.setVisibility(4);
    }
}
