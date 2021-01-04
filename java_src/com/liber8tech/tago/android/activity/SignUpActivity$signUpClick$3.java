package com.liber8tech.tago.android.activity;

import com.liber8tech.tago.analytics.AnalyticsApi;
import com.liber8tech.tago.android.analytics.Category;
import com.liber8tech.tago.util.AuthValidationKt;
import io.reactivex.functions.Consumer;
import kotlin.Metadata;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "e", "", "kotlin.jvm.PlatformType", "accept"}, k = 3, mv = {1, 1, 13})
/* compiled from: SignUpActivity.kt */
public final class SignUpActivity$signUpClick$3<T> implements Consumer<Throwable> {
    final /* synthetic */ SignUpActivity this$0;

    SignUpActivity$signUpClick$3(SignUpActivity signUpActivity) {
        this.this$0 = signUpActivity;
    }

    public final void accept(Throwable th) {
        AnalyticsApi.DefaultImpls.trackEvent$default(this.this$0.getAnalytics(), "Sign Up", Category.auth, "Sign Up", th.getMessage(), null, null, null, null, null, 496, null);
        AuthValidationKt.showError(this.this$0, th);
    }
}
