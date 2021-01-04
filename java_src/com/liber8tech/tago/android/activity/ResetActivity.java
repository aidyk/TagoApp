package com.liber8tech.tago.android.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import com.facebook.share.internal.ShareConstants;
import com.liber8tech.tago.DIExtensionsKt;
import com.liber8tech.tago.R;
import com.liber8tech.tago.analytics.AnalyticsService;
import com.liber8tech.tago.android.activity.Requests;
import com.liber8tech.tago.android.analytics.Screens;
import com.liber8tech.tago.android.ui.ResetActivityUI;
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

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\f\u001a\u00020\rH\u0016J\r\u0010\u000e\u001a\u00020\u000fH\u0016¢\u0006\u0002\u0010\u0010J\u0014\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u0012H\u0016J\b\u0010\u0015\u001a\u00020\u0016H\u0016J\"\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u000f2\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0014J\u0012\u0010\u001c\u001a\u00020\u00142\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0014R\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0004¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lcom/liber8tech/tago/android/activity/ResetActivity;", "Lcom/liber8tech/tago/android/activity/BaseActivity;", "Lcom/liber8tech/tago/android/activity/Requests;", "()V", SettingsJsonConstants.ANALYTICS_KEY, "Lcom/liber8tech/tago/analytics/AnalyticsService;", "getAnalytics", "()Lcom/liber8tech/tago/analytics/AnalyticsService;", "setAnalytics", "(Lcom/liber8tech/tago/analytics/AnalyticsService;)V", "ui", "Lcom/liber8tech/tago/android/ui/ResetActivityUI;", "getContentView", "Landroid/widget/LinearLayout;", "getToolbarLeftIcon", "", "()Ljava/lang/Integer;", "getToolbarLeftIconClick", "Lkotlin/Function1;", "Landroid/view/View;", "", "getToolbarTitle", "", "onActivityResult", "requestCode", "resultCode", ShareConstants.WEB_DIALOG_PARAM_DATA, "Landroid/content/Intent;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: ResetActivity.kt */
public final class ResetActivity extends BaseActivity implements Requests {
    private HashMap _$_findViewCache;
    @Inject
    @NotNull
    public AnalyticsService analytics;
    private final ResetActivityUI ui = new ResetActivityUI();

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

    @Override // com.liber8tech.tago.android.activity.Requests
    public int getKioskRequest() {
        return Requests.DefaultImpls.getKioskRequest(this);
    }

    @Override // com.liber8tech.tago.android.activity.Requests
    public int getResetRequest() {
        return Requests.DefaultImpls.getResetRequest(this);
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
        analyticsService.trackScreen(Screens.resetDevice);
        this.ui.setNextOnClick(new ResetActivity$onCreate$1(this));
    }

    /* access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity
    public void onActivityResult(int i, int i2, @Nullable Intent intent) {
        if (i == 0 && i2 == -1) {
            setResult(-1);
            finish();
            overridePendingTransition(0, 0);
        }
    }

    @Override // com.liber8tech.tago.android.activity.ToolbarElements
    @NotNull
    public LinearLayout getContentView() {
        return this.ui.createView(AnkoContext.Companion.create$default(AnkoContext.Companion, this, this, false, 4, null));
    }

    @Override // com.liber8tech.tago.android.activity.BaseActivity, com.liber8tech.tago.android.activity.ToolbarElements
    @NotNull
    public String getToolbarTitle() {
        String string = getString(R.string.reset_device);
        Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.reset_device)");
        return string;
    }

    @Override // com.liber8tech.tago.android.activity.BaseActivity, com.liber8tech.tago.android.activity.ToolbarElements
    @NotNull
    public Integer getToolbarLeftIcon() {
        return Integer.valueOf((int) R.drawable.button_back);
    }

    @Override // com.liber8tech.tago.android.activity.BaseActivity, com.liber8tech.tago.android.activity.ToolbarElements
    @NotNull
    public Function1<View, Unit> getToolbarLeftIconClick() {
        return new ResetActivity$getToolbarLeftIconClick$1(this);
    }
}
