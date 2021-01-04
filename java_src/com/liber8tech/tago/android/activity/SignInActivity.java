package com.liber8tech.tago.android.activity;

import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.liber8tech.tago.DIExtensionsKt;
import com.liber8tech.tago.R;
import com.liber8tech.tago.analytics.AnalyticsService;
import com.liber8tech.tago.android.view.TagoButton;
import com.liber8tech.tago.android.view.TagoButtonColor;
import com.liber8tech.tago.android.view.TextInputView;
import com.liber8tech.tago.service.AuthService;
import com.liber8tech.tago.service.TagoService;
import com.liber8tech.tago.util.AuthValidationKt;
import com.liber8tech.tago.util.extension.RxExtensionsKt;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import io.reactivex.Observable;
import java.util.HashMap;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.anko.AnkoContext;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0017\u001a\u00020\u0018H\u0016J\r\u0010\u0019\u001a\u00020\u001aH\u0016¢\u0006\u0002\u0010\u001bJ\u0014\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u001f0\u001dH\u0016J\b\u0010 \u001a\u00020!H\u0016J\b\u0010\"\u001a\u00020\u001fH\u0002J\b\u0010#\u001a\u00020\u001fH\u0002J\u0012\u0010$\u001a\u00020\u001f2\b\u0010%\u001a\u0004\u0018\u00010&H\u0014J\b\u0010'\u001a\u00020\u001fH\u0014J\b\u0010(\u001a\u00020\u001fH\u0002R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001e\u0010\t\u001a\u00020\n8\u0006@\u0006X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001e\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0016X\u0004¢\u0006\u0002\n\u0000¨\u0006)"}, d2 = {"Lcom/liber8tech/tago/android/activity/SignInActivity;", "Lcom/liber8tech/tago/android/activity/BaseActivity;", "()V", SettingsJsonConstants.ANALYTICS_KEY, "Lcom/liber8tech/tago/analytics/AnalyticsService;", "getAnalytics", "()Lcom/liber8tech/tago/analytics/AnalyticsService;", "setAnalytics", "(Lcom/liber8tech/tago/analytics/AnalyticsService;)V", "authService", "Lcom/liber8tech/tago/service/AuthService;", "getAuthService", "()Lcom/liber8tech/tago/service/AuthService;", "setAuthService", "(Lcom/liber8tech/tago/service/AuthService;)V", "tagoService", "Lcom/liber8tech/tago/service/TagoService;", "getTagoService", "()Lcom/liber8tech/tago/service/TagoService;", "setTagoService", "(Lcom/liber8tech/tago/service/TagoService;)V", "ui", "Lcom/liber8tech/tago/android/activity/SignInActivityUI;", "getContentView", "Landroid/widget/LinearLayout;", "getToolbarLeftIcon", "", "()Ljava/lang/Integer;", "getToolbarLeftIconClick", "Lkotlin/Function1;", "Landroid/view/View;", "", "getToolbarTitle", "", "initButton", "initTextFields", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "signInClick", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: SignInActivity.kt */
public final class SignInActivity extends BaseActivity {
    private HashMap _$_findViewCache;
    @Inject
    @NotNull
    public AnalyticsService analytics;
    @Inject
    @NotNull
    public AuthService authService;
    @Inject
    @NotNull
    public TagoService tagoService;
    private final SignInActivityUI ui = new SignInActivityUI();

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
    public final TagoService getTagoService() {
        TagoService tagoService2 = this.tagoService;
        if (tagoService2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tagoService");
        }
        return tagoService2;
    }

    public final void setTagoService(@NotNull TagoService tagoService2) {
        Intrinsics.checkParameterIsNotNull(tagoService2, "<set-?>");
        this.tagoService = tagoService2;
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
        analyticsService.trackScreen("Sign In");
        initTextFields();
        initButton();
    }

    @Override // com.liber8tech.tago.android.activity.ToolbarElements
    @NotNull
    public LinearLayout getContentView() {
        return this.ui.createView(AnkoContext.Companion.create$default(AnkoContext.Companion, this, this, false, 4, null));
    }

    @Override // com.liber8tech.tago.android.activity.BaseActivity, com.liber8tech.tago.android.activity.ToolbarElements
    @NotNull
    public Integer getToolbarLeftIcon() {
        return Integer.valueOf((int) R.drawable.button_back);
    }

    @Override // com.liber8tech.tago.android.activity.BaseActivity, com.liber8tech.tago.android.activity.ToolbarElements
    @NotNull
    public String getToolbarTitle() {
        String string = getString(R.string.auth_sign_in);
        Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.auth_sign_in)");
        return string;
    }

    @Override // com.liber8tech.tago.android.activity.BaseActivity, com.liber8tech.tago.android.activity.ToolbarElements
    @NotNull
    public Function1<View, Unit> getToolbarLeftIconClick() {
        return new SignInActivity$getToolbarLeftIconClick$1(this);
    }

    private final void initTextFields() {
        String string = getString(R.string.auth_email);
        Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.auth_email)");
        ((TextInputView) _$_findCachedViewById(R.id.textInputEmail)).setHintText(string);
        ((TextInputView) _$_findCachedViewById(R.id.textInputEmail)).setTextInputType(32);
        ((TextInputView) _$_findCachedViewById(R.id.textInputEmail)).getLayout().setFocusableInTouchMode(false);
        String string2 = getString(R.string.auth_password);
        Intrinsics.checkExpressionValueIsNotNull(string2, "getString(R.string.auth_password)");
        ((TextInputView) _$_findCachedViewById(R.id.textInputPassword)).setHintText(string2);
        ((TextInputView) _$_findCachedViewById(R.id.textInputPassword)).setInputTypePassword();
        ((TextInputView) _$_findCachedViewById(R.id.textInputPassword)).getLayout().setFocusableInTouchMode(false);
    }

    private final void initButton() {
        ((TagoButton) _$_findCachedViewById(R.id.btnSignIn)).setColor(TagoButtonColor.GOLD);
        TagoButton tagoButton = (TagoButton) _$_findCachedViewById(R.id.btnSignIn);
        Intrinsics.checkExpressionValueIsNotNull(tagoButton, "btnSignIn");
        tagoButton.setOnClickListener(new SignInActivity$inlined$sam$i$android_view_View_OnClickListener$0(new SignInActivity$initButton$1(this)));
        TextView textView = (TextView) _$_findCachedViewById(R.id.forget_password);
        Intrinsics.checkExpressionValueIsNotNull(textView, "forget_password");
        textView.setOnClickListener(new SignInActivity$inlined$sam$i$android_view_View_OnClickListener$0(new SignInActivity$initButton$2(this)));
    }

    /* access modifiers changed from: private */
    public final void signInClick() {
        TextInputView textInputView = (TextInputView) _$_findCachedViewById(R.id.textInputEmail);
        Intrinsics.checkExpressionValueIsNotNull(textInputView, "textInputEmail");
        if (AuthValidationKt.isEmailValid(textInputView)) {
            ProgressBar progressBar = (ProgressBar) _$_findCachedViewById(R.id.progressBar);
            Intrinsics.checkExpressionValueIsNotNull(progressBar, "progressBar");
            ProgressBar progressBar2 = progressBar;
            progressBar2.setPadding(progressBar2.getPaddingLeft(), -20, progressBar2.getPaddingRight(), progressBar2.getPaddingBottom());
            ProgressBar progressBar3 = (ProgressBar) _$_findCachedViewById(R.id.progressBar);
            Intrinsics.checkExpressionValueIsNotNull(progressBar3, "progressBar");
            progressBar3.setVisibility(0);
            AuthService authService2 = this.authService;
            if (authService2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("authService");
            }
            Observable<R> flatMap = authService2.signIn(((TextInputView) _$_findCachedViewById(R.id.textInputEmail)).getText(), ((TextInputView) _$_findCachedViewById(R.id.textInputPassword)).getText()).flatMap(new SignInActivity$signInClick$1(this));
            Intrinsics.checkExpressionValueIsNotNull(flatMap, "authService.signIn(textI….onErrorReturn { Unit } }");
            getDisposeBag().add(RxExtensionsKt.asyncIO(flatMap).doAfterTerminate(new SignInActivity$signInClick$2(this)).subscribe(new SignInActivity$signInClick$3(this), new SignInActivity$signInClick$4(this)));
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.trello.rxlifecycle2.components.support.RxAppCompatActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity
    public void onDestroy() {
        super.onDestroy();
        getDisposeBag().clear();
    }
}
