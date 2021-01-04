package com.liber8tech.tago.android.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.facebook.share.internal.ShareConstants;
import com.liber8tech.tago.DIExtensionsKt;
import com.liber8tech.tago.R;
import com.liber8tech.tago.analytics.AnalyticsService;
import com.liber8tech.tago.android.analytics.Screens;
import com.liber8tech.tago.service.IAPService;
import com.liber8tech.tago.service.ImageEditorService;
import com.liber8tech.tago.service.StoreService;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.schedulers.Schedulers;
import java.util.ArrayList;
import java.util.HashMap;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.anko.AnkoContext;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 02\u00020\u0001:\u00010B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u001d\u001a\u00020\u001eH\u0016J\r\u0010\u001f\u001a\u00020 H\u0016¢\u0006\u0002\u0010!J\u0014\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020$0#H\u0016J\b\u0010%\u001a\u00020&H\u0016J\"\u0010'\u001a\u00020$2\u0006\u0010(\u001a\u00020 2\u0006\u0010)\u001a\u00020 2\b\u0010*\u001a\u0004\u0018\u00010+H\u0014J\u0012\u0010,\u001a\u00020$2\b\u0010-\u001a\u0004\u0018\u00010.H\u0014J\b\u0010/\u001a\u00020$H\u0014R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001e\u0010\t\u001a\u00020\n8\u0006@\u0006X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001e\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001e\u0010\u0015\u001a\u00020\u00168\u0006@\u0006X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u000e\u0010\u001b\u001a\u00020\u001cX\u0004¢\u0006\u0002\n\u0000¨\u00061"}, d2 = {"Lcom/liber8tech/tago/android/activity/StoreActivity;", "Lcom/liber8tech/tago/android/activity/BaseActivity;", "()V", SettingsJsonConstants.ANALYTICS_KEY, "Lcom/liber8tech/tago/analytics/AnalyticsService;", "getAnalytics", "()Lcom/liber8tech/tago/analytics/AnalyticsService;", "setAnalytics", "(Lcom/liber8tech/tago/analytics/AnalyticsService;)V", "iapService", "Lcom/liber8tech/tago/service/IAPService;", "getIapService", "()Lcom/liber8tech/tago/service/IAPService;", "setIapService", "(Lcom/liber8tech/tago/service/IAPService;)V", "imageService", "Lcom/liber8tech/tago/service/ImageEditorService;", "getImageService", "()Lcom/liber8tech/tago/service/ImageEditorService;", "setImageService", "(Lcom/liber8tech/tago/service/ImageEditorService;)V", "storeService", "Lcom/liber8tech/tago/service/StoreService;", "getStoreService", "()Lcom/liber8tech/tago/service/StoreService;", "setStoreService", "(Lcom/liber8tech/tago/service/StoreService;)V", "ui", "Lcom/liber8tech/tago/android/activity/StoreActivityUI;", "getContentView", "Landroid/view/View;", "getToolbarLeftIcon", "", "()Ljava/lang/Integer;", "getToolbarLeftIconClick", "Lkotlin/Function1;", "", "getToolbarTitle", "", "onActivityResult", "requestCode", "resultCode", ShareConstants.WEB_DIALOG_PARAM_DATA, "Landroid/content/Intent;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "Companion", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: StoreActivity.kt */
public final class StoreActivity extends BaseActivity {
    public static final Companion Companion = new Companion(null);
    public static final int REQUEST_EXIT = 1;
    private HashMap _$_findViewCache;
    @Inject
    @NotNull
    public AnalyticsService analytics;
    @Inject
    @NotNull
    public IAPService iapService;
    @Inject
    @NotNull
    public ImageEditorService imageService;
    @Inject
    @NotNull
    public StoreService storeService;
    private final StoreActivityUI ui = new StoreActivityUI();

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

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004XT¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/liber8tech/tago/android/activity/StoreActivity$Companion;", "", "()V", "REQUEST_EXIT", "", "app_release"}, k = 1, mv = {1, 1, 13})
    /* compiled from: StoreActivity.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
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
    public final ImageEditorService getImageService() {
        ImageEditorService imageEditorService = this.imageService;
        if (imageEditorService == null) {
            Intrinsics.throwUninitializedPropertyAccessException("imageService");
        }
        return imageEditorService;
    }

    public final void setImageService(@NotNull ImageEditorService imageEditorService) {
        Intrinsics.checkParameterIsNotNull(imageEditorService, "<set-?>");
        this.imageService = imageEditorService;
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
        analyticsService.trackScreen(Screens.store);
        StoreAdapterData storeAdapterData = new StoreAdapterData(CollectionsKt.emptyList(), new ArrayList());
        StoreService storeService2 = this.storeService;
        if (storeService2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("storeService");
        }
        getDisposeBag().add(storeService2.getCategories().subscribeOn(Schedulers.io()).flatMap(new StoreActivity$onCreate$1(storeAdapterData)).flatMap(new StoreActivity$onCreate$2(this)).toList().map(new StoreActivity$onCreate$3(storeAdapterData)).observeOn(AndroidSchedulers.mainThread()).flatMap(new StoreActivity$onCreate$4(this)).flatMap(new StoreActivity$onCreate$5(this)).map(new StoreActivity$onCreate$6(storeAdapterData)).observeOn(AndroidSchedulers.mainThread()).subscribe(new StoreActivity$onCreate$7(this, storeAdapterData), new StoreActivity$onCreate$8(this)));
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
    public Integer getToolbarLeftIcon() {
        return Integer.valueOf((int) R.drawable.button_back);
    }

    @Override // com.liber8tech.tago.android.activity.BaseActivity, com.liber8tech.tago.android.activity.ToolbarElements
    @NotNull
    public String getToolbarTitle() {
        String string = getString(R.string.pattern_shop);
        Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.pattern_shop)");
        return string;
    }

    @Override // com.liber8tech.tago.android.activity.BaseActivity, com.liber8tech.tago.android.activity.ToolbarElements
    @NotNull
    public Function1<View, Unit> getToolbarLeftIconClick() {
        return new StoreActivity$getToolbarLeftIconClick$1(this);
    }

    /* access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity
    public void onActivityResult(int i, int i2, @Nullable Intent intent) {
        Timber.d("onActivityResult | requestCode=" + i + ", resultCode=" + i2 + ", data=" + intent, new Object[0]);
        if (i == 1 && i2 == -1) {
            finish();
        }
    }
}
