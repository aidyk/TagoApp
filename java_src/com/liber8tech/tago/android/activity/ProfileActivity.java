package com.liber8tech.tago.android.activity;

import android.os.Bundle;
import android.view.View;
import com.liber8tech.tago.DIExtensionsKt;
import com.liber8tech.tago.R;
import com.liber8tech.tago.analytics.AnalyticsService;
import com.liber8tech.tago.android.analytics.Screens;
import com.liber8tech.tago.android.ui.ProfileActivityUI;
import com.liber8tech.tago.service.ProfileService;
import com.liber8tech.tago.service.UpdateProfileData;
import com.liber8tech.tago.util.RuntimeConfig;
import com.liber8tech.tago.util.extension.RxExtensionsKt;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.util.HashMap;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.jetbrains.anko.AnkoContext;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0019\u001a\u00020\u001aH\u0016J\r\u0010\u001b\u001a\u00020\u001cH\u0016¢\u0006\u0002\u0010\u001dJ\u0014\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020 0\u001fH\u0016J\b\u0010!\u001a\u00020\"H\u0016J\u0012\u0010#\u001a\u00020 2\b\u0010$\u001a\u0004\u0018\u00010%H\u0014J\b\u0010&\u001a\u00020 H\u0014R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001e\u0010\t\u001a\u00020\n8\u0006@\u0006X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001e\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0015\u001a\u00020\u0016¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018¨\u0006'"}, d2 = {"Lcom/liber8tech/tago/android/activity/ProfileActivity;", "Lcom/liber8tech/tago/android/activity/BaseActivity;", "()V", SettingsJsonConstants.ANALYTICS_KEY, "Lcom/liber8tech/tago/analytics/AnalyticsService;", "getAnalytics", "()Lcom/liber8tech/tago/analytics/AnalyticsService;", "setAnalytics", "(Lcom/liber8tech/tago/analytics/AnalyticsService;)V", "profileService", "Lcom/liber8tech/tago/service/ProfileService;", "getProfileService", "()Lcom/liber8tech/tago/service/ProfileService;", "setProfileService", "(Lcom/liber8tech/tago/service/ProfileService;)V", "runtimeConfig", "Lcom/liber8tech/tago/util/RuntimeConfig;", "getRuntimeConfig", "()Lcom/liber8tech/tago/util/RuntimeConfig;", "setRuntimeConfig", "(Lcom/liber8tech/tago/util/RuntimeConfig;)V", "ui", "Lcom/liber8tech/tago/android/ui/ProfileActivityUI;", "getUi", "()Lcom/liber8tech/tago/android/ui/ProfileActivityUI;", "getContentView", "Landroid/view/View;", "getToolbarLeftIcon", "", "()Ljava/lang/Integer;", "getToolbarLeftIconClick", "Lkotlin/Function1;", "", "getToolbarTitle", "", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: ProfileActivity.kt */
public final class ProfileActivity extends BaseActivity {
    private HashMap _$_findViewCache;
    @Inject
    @NotNull
    public AnalyticsService analytics;
    @Inject
    @NotNull
    public ProfileService profileService;
    @Inject
    @NotNull
    public RuntimeConfig runtimeConfig;
    @NotNull
    private final ProfileActivityUI ui = new ProfileActivityUI();

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
    public final ProfileService getProfileService() {
        ProfileService profileService2 = this.profileService;
        if (profileService2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("profileService");
        }
        return profileService2;
    }

    public final void setProfileService(@NotNull ProfileService profileService2) {
        Intrinsics.checkParameterIsNotNull(profileService2, "<set-?>");
        this.profileService = profileService2;
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

    @NotNull
    public final RuntimeConfig getRuntimeConfig() {
        RuntimeConfig runtimeConfig2 = this.runtimeConfig;
        if (runtimeConfig2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("runtimeConfig");
        }
        return runtimeConfig2;
    }

    public final void setRuntimeConfig(@NotNull RuntimeConfig runtimeConfig2) {
        Intrinsics.checkParameterIsNotNull(runtimeConfig2, "<set-?>");
        this.runtimeConfig = runtimeConfig2;
    }

    @NotNull
    public final ProfileActivityUI getUi() {
        return this.ui;
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
        analyticsService.trackScreen(Screens.profile);
        UpdateProfileData updateProfileData = (UpdateProfileData) getIntent().getParcelableExtra("profile");
        Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        booleanRef.element = false;
        if (updateProfileData != null) {
            booleanRef.element = true;
            this.ui.setProfile(updateProfileData);
        } else {
            ProfileService profileService2 = this.profileService;
            if (profileService2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("profileService");
            }
            RxExtensionsKt.asyncIO(profileService2.getProfile()).subscribe(new ProfileActivity$onCreate$2(this), ProfileActivity$onCreate$3.INSTANCE);
        }
        this.ui.setSaveOnClick(new ProfileActivity$onCreate$4(this, booleanRef));
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
    @NotNull
    public String getToolbarTitle() {
        String string = getString(R.string.profile);
        Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.profile)");
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
        return new ProfileActivity$getToolbarLeftIconClick$1(this);
    }
}
