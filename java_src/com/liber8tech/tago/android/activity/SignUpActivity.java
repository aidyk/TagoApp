package com.liber8tech.tago.android.activity;

import android.os.Bundle;
import android.text.method.LinkMovementMethod;
import android.view.View;
import android.widget.ProgressBar;
import com.liber8tech.tago.DIExtensionsKt;
import com.liber8tech.tago.R;
import com.liber8tech.tago.analytics.AnalyticsService;
import com.liber8tech.tago.android.view.CheckBox;
import com.liber8tech.tago.android.view.TagoButton;
import com.liber8tech.tago.android.view.TagoButtonColor;
import com.liber8tech.tago.android.view.TextInputView;
import com.liber8tech.tago.service.AuthService;
import com.liber8tech.tago.util.AuthValidationKt;
import com.liber8tech.tago.util.extension.RxExtensionsKt;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.util.HashMap;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.anko.AnkoContext;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\u000f\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016¢\u0006\u0002\u0010\u0015J\u0014\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00180\u0017H\u0016J\n\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J\b\u0010\u001b\u001a\u00020\u0018H\u0002J\b\u0010\u001c\u001a\u00020\u0018H\u0002J\u0012\u0010\u001d\u001a\u00020\u00182\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0014J\b\u0010 \u001a\u00020\u0018H\u0014J\b\u0010!\u001a\u00020\u0018H\u0002R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001e\u0010\t\u001a\u00020\n8\u0006@\u0006X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0004¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Lcom/liber8tech/tago/android/activity/SignUpActivity;", "Lcom/liber8tech/tago/android/activity/BaseActivity;", "()V", SettingsJsonConstants.ANALYTICS_KEY, "Lcom/liber8tech/tago/analytics/AnalyticsService;", "getAnalytics", "()Lcom/liber8tech/tago/analytics/AnalyticsService;", "setAnalytics", "(Lcom/liber8tech/tago/analytics/AnalyticsService;)V", "authService", "Lcom/liber8tech/tago/service/AuthService;", "getAuthService", "()Lcom/liber8tech/tago/service/AuthService;", "setAuthService", "(Lcom/liber8tech/tago/service/AuthService;)V", "ui", "Lcom/liber8tech/tago/android/activity/SignUpActivityUI;", "getContentView", "Landroid/view/View;", "getToolbarLeftIcon", "", "()Ljava/lang/Integer;", "getToolbarLeftIconClick", "Lkotlin/Function1;", "", "getToolbarTitle", "", "initButton", "initTextFields", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "signUpClick", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: SignUpActivity.kt */
public final class SignUpActivity extends BaseActivity {
    private HashMap _$_findViewCache;
    @Inject
    @NotNull
    public AnalyticsService analytics;
    @Inject
    @NotNull
    public AuthService authService;
    private final SignUpActivityUI ui = new SignUpActivityUI();

    @Override // com.liber8tech.tago.android.activity.BaseActivity
    public void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    @Override // com.liber8tech.tago.android.activity.BaseActivity
    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View findViewById = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), findViewById);
        return findViewById;
    }

    @NotNull
    public final AuthService getAuthService() {
        AuthService authService2 = this.authService;
        if (authService2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("authService");
        }
        return authService2;
    }

    public final void setAuthService(@NotNull AuthService authService2) {
        Intrinsics.checkParameterIsNotNull(authService2, "<set-?>");
        this.authService = authService2;
    }

    @NotNull
    public final AnalyticsService getAnalytics() {
        AnalyticsService analyticsService = this.analytics;
        if (analyticsService == null) {
            Intrinsics.throwUninitializedPropertyAccessException(SettingsJsonConstants.ANALYTICS_KEY);
        }
        return analyticsService;
    }

    public final void setAnalytics(@NotNull AnalyticsService analyticsService) {
        Intrinsics.checkParameterIsNotNull(analyticsService, "<set-?>");
        this.analytics = analyticsService;
    }

    /* access modifiers changed from: protected */
    @Override // com.liber8tech.tago.android.activity.BaseActivity, android.support.v4.app.SupportActivity, com.trello.rxlifecycle2.components.support.RxAppCompatActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        DIExtensionsKt.getComponent(this).inject(this);
        AnalyticsService analyticsService = this.analytics;
        if (analyticsService == null) {
            Intrinsics.throwUninitializedPropertyAccessException(SettingsJsonConstants.ANALYTICS_KEY);
        }
        analyticsService.trackScreen("Sign Up");
        initTextFields();
        initButton();
    }

    /* access modifiers changed from: protected */
    @Override // com.trello.rxlifecycle2.components.support.RxAppCompatActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity
    public void onDestroy() {
        super.onDestroy();
        getDisposeBag().clear();
    }

    @Override // com.liber8tech.tago.android.activity.ToolbarElements
    @NotNull
    public View getContentView() {
        return this.ui.createView(AnkoContext.Companion.create$default(AnkoContext.Companion, this, this, false, 4, null));
    }

    @Override // com.liber8tech.tago.android.activity.BaseActivity, com.liber8tech.tago.android.activity.ToolbarElements
    @Nullable
    public Integer getToolbarLeftIcon() {
        return Integer.valueOf((int) R.drawable.button_back);
    }

    @Override // com.liber8tech.tago.android.activity.BaseActivity, com.liber8tech.tago.android.activity.ToolbarElements
    @Nullable
    public String getToolbarTitle() {
        return getString(R.string.auth_sign_up);
    }

    @Override // com.liber8tech.tago.android.activity.BaseActivity, com.liber8tech.tago.android.activity.ToolbarElements
    @NotNull
    public Function1<View, Unit> getToolbarLeftIconClick() {
        return new SignUpActivity$getToolbarLeftIconClick$1(this);
    }

    private final void initTextFields() {
        String string = getString(R.string.auth_email);
        Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.auth_email)");
        ((TextInputView) _$_findCachedViewById(R.id.textInputEmailSignUp)).setHintText(string);
        ((TextInputView) _$_findCachedViewById(R.id.textInputEmailSignUp)).setTextInputType(32);
        ((TextInputView) _$_findCachedViewById(R.id.textInputEmailSignUp)).getLayout().setFocusableInTouchMode(false);
        String string2 = getString(R.string.auth_password);
        Intrinsics.checkExpressionValueIsNotNull(string2, "getString(R.string.auth_password)");
        ((TextInputView) _$_findCachedViewById(R.id.textInputPasswordSignUp)).setHintText(string2);
        ((TextInputView) _$_findCachedViewById(R.id.textInputPasswordSignUp)).setInputTypePassword();
        ((TextInputView) _$_findCachedViewById(R.id.textInputPasswordSignUp)).getLayout().setFocusableInTouchMode(false);
        CheckBox checkBox = (CheckBox) _$_findCachedViewById(R.id.checkPP);
        Intrinsics.checkExpressionValueIsNotNull(checkBox, "checkPP");
        checkBox.setMovementMethod(LinkMovementMethod.getInstance());
        CheckBox checkBox2 = (CheckBox) _$_findCachedViewById(R.id.checkToC);
        Intrinsics.checkExpressionValueIsNotNull(checkBox2, "checkToC");
        checkBox2.setMovementMethod(LinkMovementMethod.getInstance());
    }

    private final void initButton() {
        ((TagoButton) _$_findCachedViewById(R.id.btnSignUp)).setColor(TagoButtonColor.GOLD);
        TagoButton tagoButton = (TagoButton) _$_findCachedViewById(R.id.btnSignUp);
        Intrinsics.checkExpressionValueIsNotNull(tagoButton, "btnSignUp");
        tagoButton.setOnClickListener(new SignUpActivity$inlined$sam$i$android_view_View_OnClickListener$0(new SignUpActivity$initButton$1(this)));
    }

    /* access modifiers changed from: private */
    public final void signUpClick() {
        TextInputView textInputView = (TextInputView) _$_findCachedViewById(R.id.textInputEmailSignUp);
        Intrinsics.checkExpressionValueIsNotNull(textInputView, "textInputEmailSignUp");
        if (AuthValidationKt.isEmailValid(textInputView)) {
            TextInputView textInputView2 = (TextInputView) _$_findCachedViewById(R.id.textInputPasswordSignUp);
            Intrinsics.checkExpressionValueIsNotNull(textInputView2, "textInputPasswordSignUp");
            if (AuthValidationKt.isPasswordValid(textInputView2)) {
                CheckBox checkBox = (CheckBox) _$_findCachedViewById(R.id.checkPP);
                Intrinsics.checkExpressionValueIsNotNull(checkBox, "checkPP");
                CheckBox checkBox2 = (CheckBox) _$_findCachedViewById(R.id.checkToC);
                Intrinsics.checkExpressionValueIsNotNull(checkBox2, "checkToC");
                if (AuthValidationKt.isTermsAccepted(this, checkBox, checkBox2)) {
                    TextInputView textInputView3 = (TextInputView) _$_findCachedViewById(R.id.textInputEmailSignUp);
                    Intrinsics.checkExpressionValueIsNotNull(textInputView3, "textInputEmailSignUp");
                    if (AuthValidationKt.isEmailValid(textInputView3)) {
                        ProgressBar progressBar = (ProgressBar) _$_findCachedViewById(R.id.progressBarSignup);
                        Intrinsics.checkExpressionValueIsNotNull(progressBar, "progressBarSignup");
                        ProgressBar progressBar2 = progressBar;
                        progressBar2.setPadding(progressBar2.getPaddingLeft(), -20, progressBar2.getPaddingRight(), progressBar2.getPaddingBottom());
                        ProgressBar progressBar3 = (ProgressBar) _$_findCachedViewById(R.id.progressBarSignup);
                        Intrinsics.checkExpressionValueIsNotNull(progressBar3, "progressBarSignup");
                        progressBar3.setVisibility(0);
                        AuthService authService2 = this.authService;
                        if (authService2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("authService");
                        }
                        String text = ((TextInputView) _$_findCachedViewById(R.id.textInputEmailSignUp)).getText();
                        String text2 = ((TextInputView) _$_findCachedViewById(R.id.textInputPasswordSignUp)).getText();
                        CheckBox checkBox3 = (CheckBox) _$_findCachedViewById(R.id.checkToC);
                        Intrinsics.checkExpressionValueIsNotNull(checkBox3, "checkToC");
                        boolean isChecked = checkBox3.isChecked();
                        CheckBox checkBox4 = (CheckBox) _$_findCachedViewById(R.id.checkPP);
                        Intrinsics.checkExpressionValueIsNotNull(checkBox4, "checkPP");
                        getDisposeBag().add(RxExtensionsKt.asyncIO(authService2.signUp(text, text2, isChecked, checkBox4.isChecked())).doAfterTerminate(new SignUpActivity$signUpClick$1(this)).subscribe(new SignUpActivity$signUpClick$2(this), new SignUpActivity$signUpClick$3(this)));
                    }
                }
            }
        }
    }
}
