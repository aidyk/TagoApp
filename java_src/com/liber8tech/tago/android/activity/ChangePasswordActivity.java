package com.liber8tech.tago.android.activity;

import android.os.Bundle;
import android.view.View;
import android.widget.ProgressBar;
import com.liber8tech.tago.DIExtensionsKt;
import com.liber8tech.tago.R;
import com.liber8tech.tago.analytics.AnalyticsService;
import com.liber8tech.tago.android.view.TagoButton;
import com.liber8tech.tago.android.view.TagoButtonColor;
import com.liber8tech.tago.android.view.TextInputView;
import com.liber8tech.tago.service.AuthService;
import com.liber8tech.tago.util.AuthValidationKt;
import com.liber8tech.tago.util.extension.RxExtensionsKt;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.util.HashMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.anko.AnkoContext;

public final class ChangePasswordActivity extends BaseActivity {
    private HashMap _$_findViewCache;
    public AnalyticsService analytics;
    public AuthService authService;
    private final ChangePasswordActivityUI ui = new ChangePasswordActivityUI();

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

    public final AuthService getAuthService() {
        AuthService authService2 = this.authService;
        if (authService2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("authService");
        }
        return authService2;
    }

    public final void setAuthService(AuthService authService2) {
        Intrinsics.checkParameterIsNotNull(authService2, "<set-?>");
        this.authService = authService2;
    }

    public final AnalyticsService getAnalytics() {
        AnalyticsService analyticsService = this.analytics;
        if (analyticsService == null) {
            Intrinsics.throwUninitializedPropertyAccessException(SettingsJsonConstants.ANALYTICS_KEY);
        }
        return analyticsService;
    }

    public final void setAnalytics(AnalyticsService analyticsService) {
        Intrinsics.checkParameterIsNotNull(analyticsService, "<set-?>");
        this.analytics = analyticsService;
    }

    @Override // com.liber8tech.tago.android.activity.BaseActivity, android.support.v4.app.SupportActivity, com.trello.rxlifecycle2.components.support.RxAppCompatActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        DIExtensionsKt.getComponent(this).inject(this);
        AnalyticsService analyticsService = this.analytics;
        if (analyticsService == null) {
            Intrinsics.throwUninitializedPropertyAccessException(SettingsJsonConstants.ANALYTICS_KEY);
        }
        analyticsService.trackScreen("Change Password");
        initTextFields();
        initButton();
    }

    @Override // com.trello.rxlifecycle2.components.support.RxAppCompatActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity
    public void onDestroy() {
        super.onDestroy();
        getDisposeBag().clear();
    }

    @Override // com.liber8tech.tago.android.activity.ToolbarElements
    public View getContentView() {
        return this.ui.createView(AnkoContext.Companion.create$default(AnkoContext.Companion, this, this, false, 4, null));
    }

    @Override // com.liber8tech.tago.android.activity.BaseActivity, com.liber8tech.tago.android.activity.ToolbarElements
    public Integer getToolbarLeftIcon() {
        return Integer.valueOf((int) R.drawable.button_back);
    }

    @Override // com.liber8tech.tago.android.activity.BaseActivity, com.liber8tech.tago.android.activity.ToolbarElements
    public String getToolbarTitle() {
        return getString(R.string.auth_password_change);
    }

    @Override // com.liber8tech.tago.android.activity.BaseActivity, com.liber8tech.tago.android.activity.ToolbarElements
    public Function1<View, Unit> getToolbarLeftIconClick() {
        return new ChangePasswordActivity$getToolbarLeftIconClick$1(this);
    }

    private final void initTextFields() {
        String string = getString(R.string.auth_password_current);
        Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.auth_password_current)");
        ((TextInputView) _$_findCachedViewById(R.id.textInputCurrent)).setHintText(string);
        ((TextInputView) _$_findCachedViewById(R.id.textInputCurrent)).setInputTypePassword();
        String string2 = getString(R.string.auth_password_new);
        Intrinsics.checkExpressionValueIsNotNull(string2, "getString(R.string.auth_password_new)");
        ((TextInputView) _$_findCachedViewById(R.id.textInputNew)).setHintText(string2);
        ((TextInputView) _$_findCachedViewById(R.id.textInputNew)).setInputTypePassword();
        String string3 = getString(R.string.auth_password_verify);
        Intrinsics.checkExpressionValueIsNotNull(string3, "getString(R.string.auth_password_verify)");
        ((TextInputView) _$_findCachedViewById(R.id.textInputVerify)).setHintText(string3);
        ((TextInputView) _$_findCachedViewById(R.id.textInputVerify)).setInputTypePassword();
    }

    private final void initButton() {
        ((TagoButton) _$_findCachedViewById(R.id.btnSave)).setColor(TagoButtonColor.GOLD);
        TagoButton tagoButton = (TagoButton) _$_findCachedViewById(R.id.btnSave);
        Intrinsics.checkExpressionValueIsNotNull(tagoButton, "btnSave");
        tagoButton.setOnClickListener(new ChangePasswordActivity$inlined$sam$i$android_view_View_OnClickListener$0(new ChangePasswordActivity$initButton$1(this)));
    }

    /* access modifiers changed from: public */
    private final void clickSave() {
        TextInputView textInputView = (TextInputView) _$_findCachedViewById(R.id.textInputCurrent);
        Intrinsics.checkExpressionValueIsNotNull(textInputView, "textInputCurrent");
        if (AuthValidationKt.isPasswordValid(textInputView)) {
            TextInputView textInputView2 = (TextInputView) _$_findCachedViewById(R.id.textInputNew);
            Intrinsics.checkExpressionValueIsNotNull(textInputView2, "textInputNew");
            TextInputView textInputView3 = (TextInputView) _$_findCachedViewById(R.id.textInputVerify);
            Intrinsics.checkExpressionValueIsNotNull(textInputView3, "textInputVerify");
            if (AuthValidationKt.isPasswordMatch(textInputView2, textInputView3)) {
                ProgressBar progressBar = (ProgressBar) _$_findCachedViewById(R.id.changeProgressBar);
                Intrinsics.checkExpressionValueIsNotNull(progressBar, "changeProgressBar");
                progressBar.setVisibility(0);
                AuthService authService2 = this.authService;
                if (authService2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("authService");
                }
                getDisposeBag().add(RxExtensionsKt.asyncIO(authService2.changePassword(((TextInputView) _$_findCachedViewById(R.id.textInputCurrent)).getText(), ((TextInputView) _$_findCachedViewById(R.id.textInputNew)).getText())).doAfterTerminate(new ChangePasswordActivity$clickSave$1(this)).subscribe(new ChangePasswordActivity$clickSave$2(this), new ChangePasswordActivity$clickSave$3(this)));
            }
        }
    }
}
