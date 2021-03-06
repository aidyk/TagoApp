package com.liber8tech.tago.android.activity;

import com.liber8tech.tago.analytics.AnalyticsApi;
import com.liber8tech.tago.android.analytics.Category;
import com.liber8tech.tago.service.SignInResponse;
import io.reactivex.functions.Consumer;
import kotlin.Metadata;
import kotlin.Pair;
import org.jetbrains.anko.internals.AnkoInternals;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "it", "Lcom/liber8tech/tago/service/SignInResponse;", "kotlin.jvm.PlatformType", "accept"}, k = 3, mv = {1, 1, 13})
/* compiled from: SignUpActivity.kt */
public final class SignUpActivity$signUpClick$2<T> implements Consumer<SignInResponse> {
    final /* synthetic */ SignUpActivity this$0;

    SignUpActivity$signUpClick$2(SignUpActivity signUpActivity) {
        this.this$0 = signUpActivity;
    }

    public final void accept(SignInResponse signInResponse) {
        AnalyticsApi.DefaultImpls.trackEvent$default(this.this$0.getAnalytics(), "Sign Up", Category.auth, "Sign Up", null, null, null, null, null, null, 504, null);
        AnkoInternals.internalStartActivity(this.this$0, ProfileActivity.class, new Pair[0]);
    }
}
