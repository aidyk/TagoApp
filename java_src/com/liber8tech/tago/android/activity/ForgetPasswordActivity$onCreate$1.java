package com.liber8tech.tago.android.activity;

import android.view.View;
import com.liber8tech.tago.R;
import com.liber8tech.tago.analytics.AnalyticsApi;
import com.liber8tech.tago.android.analytics.Action;
import com.liber8tech.tago.android.analytics.Category;
import com.liber8tech.tago.util.AuthValidationKt;
import com.liber8tech.tago.util.extension.ContextExtensionKt;
import com.liber8tech.tago.util.extension.RxExtensionsKt;
import io.reactivex.functions.Consumer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import okhttp3.ResponseBody;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "Landroid/view/View;", "invoke"}, k = 3, mv = {1, 1, 13})
/* compiled from: ForgetPasswordActivity.kt */
public final class ForgetPasswordActivity$onCreate$1 extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ ForgetPasswordActivity this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    ForgetPasswordActivity$onCreate$1(ForgetPasswordActivity forgetPasswordActivity) {
        super(1);
        this.this$0 = forgetPasswordActivity;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(View view) {
        invoke(view);
        return Unit.INSTANCE;
    }

    public final void invoke(@Nullable View view) {
        if (AuthValidationKt.isEmailValid(this.this$0.ui.getEmailInput())) {
            this.this$0.getDisposeBag().add(RxExtensionsKt.asyncIO(this.this$0.getAuthService().forgetPassword(this.this$0.ui.getEmailInput().getText())).subscribe(new Consumer<ResponseBody>(this) {
                /* class com.liber8tech.tago.android.activity.ForgetPasswordActivity$onCreate$1.AnonymousClass1 */
                final /* synthetic */ ForgetPasswordActivity$onCreate$1 this$0;

                {
                    this.this$0 = r1;
                }

                public final void accept(ResponseBody responseBody) {
                    AnalyticsApi.DefaultImpls.trackEvent$default(this.this$0.this$0.getAnalytics(), "Sign In", Category.auth, Action.forgotPw, null, null, null, null, null, null, 504, null);
                    ForgetPasswordActivity forgetPasswordActivity = this.this$0.this$0;
                    String string = this.this$0.this$0.getString(R.string.forget_password_response);
                    Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.forget_password_response)");
                    View findViewById = this.this$0.this$0.findViewById(16908290);
                    Intrinsics.checkExpressionValueIsNotNull(findViewById, "findViewById(id)");
                    ContextExtensionKt.tintedSnack(forgetPasswordActivity, string, findViewById);
                }
            }, new Consumer<Throwable>(this) {
                /* class com.liber8tech.tago.android.activity.ForgetPasswordActivity$onCreate$1.AnonymousClass2 */
                final /* synthetic */ ForgetPasswordActivity$onCreate$1 this$0;

                {
                    this.this$0 = r1;
                }

                public final void accept(Throwable th) {
                    AnalyticsApi.DefaultImpls.trackEvent$default(this.this$0.this$0.getAnalytics(), "Sign In", Category.auth, Action.forgotPw, th.getMessage(), null, null, null, null, null, 496, null);
                    Timber.e(th);
                    AuthValidationKt.showError(this.this$0.this$0, th);
                }
            }));
            return;
        }
        ForgetPasswordActivity forgetPasswordActivity = this.this$0;
        String string = this.this$0.getString(R.string.auth_email_error);
        Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.auth_email_error)");
        View findViewById = this.this$0.findViewById(16908290);
        Intrinsics.checkExpressionValueIsNotNull(findViewById, "findViewById(id)");
        ContextExtensionKt.tintedSnack(forgetPasswordActivity, string, findViewById);
    }
}
