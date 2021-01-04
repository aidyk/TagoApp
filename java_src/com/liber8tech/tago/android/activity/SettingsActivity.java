package com.liber8tech.tago.android.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ScrollView;
import com.facebook.share.internal.ShareConstants;
import com.liber8tech.tago.DIExtensionsKt;
import com.liber8tech.tago.R;
import com.liber8tech.tago.analytics.AnalyticsService;
import com.liber8tech.tago.android.activity.Requests;
import com.liber8tech.tago.android.analytics.Screens;
import com.liber8tech.tago.android.ui.SettingsActivityUI;
import com.liber8tech.tago.model.TagoDevice;
import com.liber8tech.tago.service.IAPService;
import com.liber8tech.tago.service.ImageEditorService;
import com.liber8tech.tago.service.StoreService;
import com.liber8tech.tago.service.TagoService;
import com.liber8tech.tago.util.RuntimeConfig;
import com.liber8tech.tago.util.extension.ContextExtensionKt;
import com.liber8tech.tago.util.extension.RxExtensionsKt;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import io.reactivex.Observable;
import io.realm.Realm;
import java.util.HashMap;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.anko.AnkoContext;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010-\u001a\u00020.H\u0016J\r\u0010/\u001a\u000200H\u0016¢\u0006\u0002\u00101J\u0014\u00102\u001a\u000e\u0012\u0004\u0012\u000204\u0012\u0004\u0012\u00020503H\u0016J\n\u00106\u001a\u0004\u0018\u000107H\u0016J\"\u00108\u001a\u0002052\u0006\u00109\u001a\u0002002\u0006\u0010:\u001a\u0002002\b\u0010;\u001a\u0004\u0018\u00010<H\u0014J\u0012\u0010=\u001a\u0002052\b\u0010>\u001a\u0004\u0018\u00010?H\u0014J\b\u0010@\u001a\u000205H\u0014R\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001e\u0010\n\u001a\u00020\u000b8\u0006@\u0006X.¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001e\u0010\u0010\u001a\u00020\u00118\u0006@\u0006X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0016\u001a\n \u0018*\u0004\u0018\u00010\u00170\u0017X\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0019\u001a\u00020\u001a8\u0006@\u0006X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001e\u0010\u001f\u001a\u00020 8\u0006@\u0006X.¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\u001e\u0010%\u001a\u00020&8\u0006@\u0006X.¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\u000e\u0010+\u001a\u00020,X\u0004¢\u0006\u0002\n\u0000¨\u0006A"}, d2 = {"Lcom/liber8tech/tago/android/activity/SettingsActivity;", "Lcom/liber8tech/tago/android/activity/BaseActivity;", "Lcom/liber8tech/tago/android/activity/Requests;", "()V", SettingsJsonConstants.ANALYTICS_KEY, "Lcom/liber8tech/tago/analytics/AnalyticsService;", "getAnalytics", "()Lcom/liber8tech/tago/analytics/AnalyticsService;", "setAnalytics", "(Lcom/liber8tech/tago/analytics/AnalyticsService;)V", "iapService", "Lcom/liber8tech/tago/service/IAPService;", "getIapService", "()Lcom/liber8tech/tago/service/IAPService;", "setIapService", "(Lcom/liber8tech/tago/service/IAPService;)V", "imageEditorService", "Lcom/liber8tech/tago/service/ImageEditorService;", "getImageEditorService", "()Lcom/liber8tech/tago/service/ImageEditorService;", "setImageEditorService", "(Lcom/liber8tech/tago/service/ImageEditorService;)V", "realm", "Lio/realm/Realm;", "kotlin.jvm.PlatformType", "runtimeConfig", "Lcom/liber8tech/tago/util/RuntimeConfig;", "getRuntimeConfig", "()Lcom/liber8tech/tago/util/RuntimeConfig;", "setRuntimeConfig", "(Lcom/liber8tech/tago/util/RuntimeConfig;)V", "storeService", "Lcom/liber8tech/tago/service/StoreService;", "getStoreService", "()Lcom/liber8tech/tago/service/StoreService;", "setStoreService", "(Lcom/liber8tech/tago/service/StoreService;)V", "tagoService", "Lcom/liber8tech/tago/service/TagoService;", "getTagoService", "()Lcom/liber8tech/tago/service/TagoService;", "setTagoService", "(Lcom/liber8tech/tago/service/TagoService;)V", "ui", "Lcom/liber8tech/tago/android/ui/SettingsActivityUI;", "getContentView", "Landroid/widget/ScrollView;", "getToolbarLeftIcon", "", "()Ljava/lang/Integer;", "getToolbarLeftIconClick", "Lkotlin/Function1;", "Landroid/view/View;", "", "getToolbarTitle", "", "onActivityResult", "requestCode", "resultCode", ShareConstants.WEB_DIALOG_PARAM_DATA, "Landroid/content/Intent;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: SettingsActivity.kt */
public final class SettingsActivity extends BaseActivity implements Requests {
    private HashMap _$_findViewCache;
    @Inject
    @NotNull
    public AnalyticsService analytics;
    @Inject
    @NotNull
    public IAPService iapService;
    @Inject
    @NotNull
    public ImageEditorService imageEditorService;
    private final Realm realm = Realm.getDefaultInstance();
    @Inject
    @NotNull
    public RuntimeConfig runtimeConfig;
    @Inject
    @NotNull
    public StoreService storeService;
    @Inject
    @NotNull
    public TagoService tagoService;
    private final SettingsActivityUI ui = new SettingsActivityUI();

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
    public final ImageEditorService getImageEditorService() {
        ImageEditorService imageEditorService2 = this.imageEditorService;
        if (imageEditorService2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("imageEditorService");
        }
        return imageEditorService2;
    }

    public final void setImageEditorService(@NotNull ImageEditorService imageEditorService2) {
        Intrinsics.checkParameterIsNotNull(imageEditorService2, "<set-?>");
        this.imageEditorService = imageEditorService2;
    }

    @NotNull
    public final StoreService getStoreService() {
        StoreService storeService2 = this.storeService;
        if (storeService2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("storeService");
        }
        return storeService2;
    }

    public final void setStoreService(@NotNull StoreService storeService2) {
        Intrinsics.checkParameterIsNotNull(storeService2, "<set-?>");
        this.storeService = storeService2;
    }

    @NotNull
    public final IAPService getIapService() {
        IAPService iAPService = this.iapService;
        if (iAPService == null) {
            Intrinsics.throwUninitializedPropertyAccessException("iapService");
        }
        return iAPService;
    }

    public final void setIapService(@NotNull IAPService iAPService) {
        Intrinsics.checkParameterIsNotNull(iAPService, "<set-?>");
        this.iapService = iAPService;
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
        analyticsService.trackScreen(Screens.settings);
        this.ui.setLogoutOnClick(new SettingsActivity$onCreate$1(this));
        this.ui.setRestoreOnClick(new SettingsActivity$onCreate$2(this));
        this.ui.setChangePasswordOnClick(new SettingsActivity$onCreate$3(this));
        this.ui.setAddTagoOnClick(new SettingsActivity$onCreate$4(this));
        this.ui.setResetTagoOnClick(new SettingsActivity$onCreate$5(this));
        this.ui.setKioskOnClick(new SettingsActivity$onCreate$6(this));
        this.ui.setAutoUploadOnClick(new SettingsActivity$onCreate$7(this));
        this.ui.setProfileOnClick(new SettingsActivity$onCreate$8(this));
        SettingsActivityUI settingsActivityUI = this.ui;
        RuntimeConfig runtimeConfig2 = this.runtimeConfig;
        if (runtimeConfig2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("runtimeConfig");
        }
        settingsActivityUI.setAutoUploadValue(runtimeConfig2.getAutoUpload());
        getDisposeBag().add(Observable.just(this.realm.where(TagoDevice.class).findAllAsync()).subscribe(new SettingsActivity$onCreate$9(this), SettingsActivity$onCreate$10.INSTANCE));
        TagoService tagoService2 = this.tagoService;
        if (tagoService2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tagoService");
        }
        getDisposeBag().add(RxExtensionsKt.asyncIO(tagoService2.sync()).subscribe(SettingsActivity$onCreate$12.INSTANCE, SettingsActivity$onCreate$13.INSTANCE));
    }

    /* access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity
    public void onActivityResult(int i, int i2, @Nullable Intent intent) {
        if (i == getResetRequest() && i2 == -1) {
            View findViewById = findViewById(16908290);
            Intrinsics.checkExpressionValueIsNotNull(findViewById, "findViewById(id)");
            ContextExtensionKt.tintedSnack(this, (int) R.string.reset_finished, findViewById);
        }
        if (i == getKioskRequest() && i2 == -1) {
            View findViewById2 = findViewById(16908290);
            Intrinsics.checkExpressionValueIsNotNull(findViewById2, "findViewById(id)");
            ContextExtensionKt.tintedSnack(this, (int) R.string.kiosk_finished, findViewById2);
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.trello.rxlifecycle2.components.support.RxAppCompatActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity
    public void onDestroy() {
        super.onDestroy();
        this.realm.close();
        getDisposeBag().clear();
    }

    @Override // com.liber8tech.tago.android.activity.ToolbarElements
    @NotNull
    public ScrollView getContentView() {
        return this.ui.createView(AnkoContext.Companion.create$default(AnkoContext.Companion, this, this, false, 4, null));
    }

    @Override // com.liber8tech.tago.android.activity.BaseActivity, com.liber8tech.tago.android.activity.ToolbarElements
    @Nullable
    public String getToolbarTitle() {
        return getString(R.string.settings);
    }

    @Override // com.liber8tech.tago.android.activity.BaseActivity, com.liber8tech.tago.android.activity.ToolbarElements
    @NotNull
    public Integer getToolbarLeftIcon() {
        return Integer.valueOf((int) R.drawable.button_back);
    }

    @Override // com.liber8tech.tago.android.activity.BaseActivity, com.liber8tech.tago.android.activity.ToolbarElements
    @NotNull
    public Function1<View, Unit> getToolbarLeftIconClick() {
        return new SettingsActivity$getToolbarLeftIconClick$1(this);
    }
}
