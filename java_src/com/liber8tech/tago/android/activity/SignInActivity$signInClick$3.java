package com.liber8tech.tago.android.activity;

import com.liber8tech.tago.analytics.AnalyticsApi;
import com.liber8tech.tago.android.analytics.Category;
import com.liber8tech.tago.util.AuthValidationKt;
import io.reactivex.functions.Consumer;
import kotlin.Metadata;
import kotlin.Unit;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0003*\u0004\u0018\u00010\u00010\u0001H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", "it", "kotlin.jvm.PlatformType", "accept", "(Lkotlin/Unit;)V"}, k = 3, mv = {1, 1, 13})
/* compiled from: SignInActivity.kt */
public final class SignInActivity$signInClick$3<T> implements Consumer<Unit> {
    final /* synthetic */ SignInActivity this$0;

    SignInActivity$signInClick$3(SignInActivity signInActivity) {
        this.this$0 = signInActivity;
    }

    public final void accept(Unit unit) {
        AnalyticsApi.DefaultImpls.trackEvent$default(this.this$0.getAnalytics(), "Sign In", Category.auth, "Sign In", null, null, null, null, null, null, 504, null);
        AuthValidationKt.loginSuccess(this.this$0);
    }
}
