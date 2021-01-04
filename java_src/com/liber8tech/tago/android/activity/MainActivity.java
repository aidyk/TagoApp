package com.liber8tech.tago.android.activity;

import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import com.facebook.internal.NativeProtocol;
import com.facebook.share.internal.ShareConstants;
import com.liber8tech.tago.Constants;
import com.liber8tech.tago.DIExtensionsKt;
import com.liber8tech.tago.R;
import com.liber8tech.tago.analytics.AnalyticsApi;
import com.liber8tech.tago.analytics.AnalyticsService;
import com.liber8tech.tago.android.activity.MainActivityUI;
import com.liber8tech.tago.android.analytics.Action;
import com.liber8tech.tago.model.AssetPattern;
import com.liber8tech.tago.service.FirmwareService;
import com.liber8tech.tago.service.IAPService;
import com.liber8tech.tago.service.ImageEditorService;
import com.liber8tech.tago.service.LocationService;
import com.liber8tech.tago.service.ProfileService;
import com.liber8tech.tago.service.StoreService;
import com.liber8tech.tago.service.TagoService;
import com.liber8tech.tago.util.RuntimeConfig;
import com.liber8tech.tago.util.Truss;
import com.liber8tech.tago.util.extension.AndroidExtensionsKt;
import com.liber8tech.tago.util.extension.RxExtensionsKt;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.anko.AnkoContext;
import org.jetbrains.anko.internals.AnkoInternals;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000¨\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\r\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 b2\u00020\u0001:\u0001bB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010?\u001a\u00020\u001cH\u0016J\u0014\u0010@\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020B0AH\u0016J\r\u0010C\u001a\u00020DH\u0016¢\u0006\u0002\u0010EJ\u0014\u0010F\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020B0AH\u0016J\b\u0010G\u001a\u00020HH\u0016J\"\u0010I\u001a\u00020B2\u0006\u0010J\u001a\u00020D2\u0006\u0010K\u001a\u00020D2\b\u0010L\u001a\u0004\u0018\u00010MH\u0014J\b\u0010N\u001a\u00020BH\u0016J\u0012\u0010O\u001a\u00020B2\b\u0010P\u001a\u0004\u0018\u00010QH\u0014J\b\u0010R\u001a\u00020BH\u0014J-\u0010S\u001a\u00020B2\u0006\u0010J\u001a\u00020D2\u000e\u0010T\u001a\n\u0012\u0006\b\u0001\u0012\u0002000U2\u0006\u0010V\u001a\u00020WH\u0016¢\u0006\u0002\u0010XJ\b\u0010Y\u001a\u00020BH\u0014J\u0010\u0010Z\u001a\u00020B2\u0006\u0010[\u001a\u00020\\H\u0002J\u0010\u0010]\u001a\u00020H2\u0006\u0010^\u001a\u000200H\u0002J\b\u0010_\u001a\u00020BH\u0002J\b\u0010`\u001a\u00020BH\u0002J\b\u0010a\u001a\u00020BH\u0002R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001e\u0010\t\u001a\u00020\n8\u0006@\u0006X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001e\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001e\u0010\u0015\u001a\u00020\u00168\u0006@\u0006X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u001d\u001a\u00020\u001e8\u0006@\u0006X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001e\u0010#\u001a\u00020$8\u0006@\u0006X.¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\u001e\u0010)\u001a\u00020*8\u0006@\u0006X.¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\u000e\u0010/\u001a\u000200X\u000e¢\u0006\u0002\n\u0000R\u001e\u00101\u001a\u0002028\u0006@\u0006X.¢\u0006\u000e\n\u0000\u001a\u0004\b3\u00104\"\u0004\b5\u00106R\u001e\u00107\u001a\u0002088\u0006@\u0006X.¢\u0006\u000e\n\u0000\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<R\u000e\u0010=\u001a\u00020>X.¢\u0006\u0002\n\u0000¨\u0006c"}, d2 = {"Lcom/liber8tech/tago/android/activity/MainActivity;", "Lcom/liber8tech/tago/android/activity/BaseActivity;", "()V", SettingsJsonConstants.ANALYTICS_KEY, "Lcom/liber8tech/tago/analytics/AnalyticsService;", "getAnalytics", "()Lcom/liber8tech/tago/analytics/AnalyticsService;", "setAnalytics", "(Lcom/liber8tech/tago/analytics/AnalyticsService;)V", "firmwareService", "Lcom/liber8tech/tago/service/FirmwareService;", "getFirmwareService", "()Lcom/liber8tech/tago/service/FirmwareService;", "setFirmwareService", "(Lcom/liber8tech/tago/service/FirmwareService;)V", "iapService", "Lcom/liber8tech/tago/service/IAPService;", "getIapService", "()Lcom/liber8tech/tago/service/IAPService;", "setIapService", "(Lcom/liber8tech/tago/service/IAPService;)V", "imageEditorService", "Lcom/liber8tech/tago/service/ImageEditorService;", "getImageEditorService", "()Lcom/liber8tech/tago/service/ImageEditorService;", "setImageEditorService", "(Lcom/liber8tech/tago/service/ImageEditorService;)V", "lastSelected", "Landroid/view/View;", "locationService", "Lcom/liber8tech/tago/service/LocationService;", "getLocationService", "()Lcom/liber8tech/tago/service/LocationService;", "setLocationService", "(Lcom/liber8tech/tago/service/LocationService;)V", "profileService", "Lcom/liber8tech/tago/service/ProfileService;", "getProfileService", "()Lcom/liber8tech/tago/service/ProfileService;", "setProfileService", "(Lcom/liber8tech/tago/service/ProfileService;)V", "runtimeConfig", "Lcom/liber8tech/tago/util/RuntimeConfig;", "getRuntimeConfig", "()Lcom/liber8tech/tago/util/RuntimeConfig;", "setRuntimeConfig", "(Lcom/liber8tech/tago/util/RuntimeConfig;)V", "selectedCollectionName", "", "storeService", "Lcom/liber8tech/tago/service/StoreService;", "getStoreService", "()Lcom/liber8tech/tago/service/StoreService;", "setStoreService", "(Lcom/liber8tech/tago/service/StoreService;)V", "tagoService", "Lcom/liber8tech/tago/service/TagoService;", "getTagoService", "()Lcom/liber8tech/tago/service/TagoService;", "setTagoService", "(Lcom/liber8tech/tago/service/TagoService;)V", "ui", "Lcom/liber8tech/tago/android/activity/MainActivityUI;", "getContentView", "getTitleOnClick", "Lkotlin/Function1;", "", "getToolbarRightIcon", "", "()Ljava/lang/Integer;", "getToolbarRightIconClick", "getToolbarTitle", "", "onActivityResult", "requestCode", "resultCode", ShareConstants.WEB_DIALOG_PARAM_DATA, "Landroid/content/Intent;", "onBackPressed", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onPause", "onRequestPermissionsResult", NativeProtocol.RESULT_ARGS_PERMISSIONS, "", "grantResults", "", "(I[Ljava/lang/String;[I)V", "onResume", "selectedCollection", "collection", "Lcom/liber8tech/tago/android/activity/MainActivityUI$SelectedCollection;", "setToolbarTitle", "title", "setupCreatedPatternList", "setupPurchasedPatternList", "setupStarterKitPatternList", "Companion", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: MainActivity.kt */
public final class MainActivity extends BaseActivity {
    public static final Companion Companion = new Companion(null);
    public static final int createPatternRequest = 200;
    public static final int openImageFromGalleryRequest = 100;
    private HashMap _$_findViewCache;
    @Inject
    @NotNull
    public AnalyticsService analytics;
    @Inject
    @NotNull
    public FirmwareService firmwareService;
    @Inject
    @NotNull
    public IAPService iapService;
    @Inject
    @NotNull
    public ImageEditorService imageEditorService;
    private View lastSelected;
    @Inject
    @NotNull
    public LocationService locationService;
    @Inject
    @NotNull
    public ProfileService profileService;
    @Inject
    @NotNull
    public RuntimeConfig runtimeConfig;
    private String selectedCollectionName = "";
    @Inject
    @NotNull
    public StoreService storeService;
    @Inject
    @NotNull
    public TagoService tagoService;
    private MainActivityUI ui;

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
    public static final /* synthetic */ MainActivityUI access$getUi$p(MainActivity mainActivity) {
        MainActivityUI mainActivityUI = mainActivity.ui;
        if (mainActivityUI == null) {
            Intrinsics.throwUninitializedPropertyAccessException("ui");
        }
        return mainActivityUI;
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004XT¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004XT¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/liber8tech/tago/android/activity/MainActivity$Companion;", "", "()V", "createPatternRequest", "", "openImageFromGalleryRequest", "app_release"}, k = 1, mv = {1, 1, 13})
    /* compiled from: MainActivity.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
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
    public final LocationService getLocationService() {
        LocationService locationService2 = this.locationService;
        if (locationService2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("locationService");
        }
        return locationService2;
    }

    public final void setLocationService(@NotNull LocationService locationService2) {
        Intrinsics.checkParameterIsNotNull(locationService2, "<set-?>");
        this.locationService = locationService2;
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
    public final FirmwareService getFirmwareService() {
        FirmwareService firmwareService2 = this.firmwareService;
        if (firmwareService2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("firmwareService");
        }
        return firmwareService2;
    }

    public final void setFirmwareService(@NotNull FirmwareService firmwareService2) {
        Intrinsics.checkParameterIsNotNull(firmwareService2, "<set-?>");
        this.firmwareService = firmwareService2;
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

    /* access modifiers changed from: protected */
    @Override // com.liber8tech.tago.android.activity.BaseActivity, android.support.v4.app.SupportActivity, com.trello.rxlifecycle2.components.support.RxAppCompatActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        DIExtensionsKt.getComponent(this).inject(this);
        RuntimeConfig runtimeConfig2 = this.runtimeConfig;
        if (runtimeConfig2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("runtimeConfig");
        }
        selectedCollection(runtimeConfig2.getLastCollection());
        AnalyticsService analyticsService = this.analytics;
        if (analyticsService == null) {
            Intrinsics.throwUninitializedPropertyAccessException(SettingsJsonConstants.ANALYTICS_KEY);
        }
        analyticsService.trackScreen("Main");
        showSelectorIcon();
        MainActivityUI mainActivityUI = this.ui;
        if (mainActivityUI == null) {
            Intrinsics.throwUninitializedPropertyAccessException("ui");
        }
        mainActivityUI.getFabMain().setOnClickListener(new MainActivity$inlined$sam$i$android_view_View_OnClickListener$0(new MainActivity$onCreate$1(this)));
        MainActivityUI mainActivityUI2 = this.ui;
        if (mainActivityUI2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("ui");
        }
        mainActivityUI2.getCreatedCollectionItem().setOnClickListener(new MainActivity$inlined$sam$i$android_view_View_OnClickListener$0(new MainActivity$onCreate$2(this)));
        MainActivityUI mainActivityUI3 = this.ui;
        if (mainActivityUI3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("ui");
        }
        mainActivityUI3.getStarterKitCollectionItem().setOnClickListener(new MainActivity$inlined$sam$i$android_view_View_OnClickListener$0(new MainActivity$onCreate$3(this)));
        MainActivityUI mainActivityUI4 = this.ui;
        if (mainActivityUI4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("ui");
        }
        mainActivityUI4.getPurchasedCollectionItem().setOnClickListener(new MainActivity$inlined$sam$i$android_view_View_OnClickListener$0(new MainActivity$onCreate$4(this)));
        if (getIntent().getBooleanExtra(Constants.isLogin, false)) {
            IAPService iAPService = this.iapService;
            if (iAPService == null) {
                Intrinsics.throwUninitializedPropertyAccessException("iapService");
            }
            getDisposeBag().add(iAPService.createConnection(this).flatMap(new MainActivity$onCreate$5(this)).flatMap(new MainActivity$onCreate$6(this)).flatMap(MainActivity$onCreate$7.INSTANCE).flatMap(new MainActivity$onCreate$8(this)).toList().subscribe(new MainActivity$onCreate$9(this), MainActivity$onCreate$10.INSTANCE));
        }
    }

    /* access modifiers changed from: private */
    public final void selectedCollection(MainActivityUI.SelectedCollection selectedCollection) {
        RuntimeConfig runtimeConfig2 = this.runtimeConfig;
        if (runtimeConfig2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("runtimeConfig");
        }
        runtimeConfig2.setLastCollection(selectedCollection);
        String string = getString(selectedCollection.getType());
        Intrinsics.checkExpressionValueIsNotNull(string, "getString(collection.type)");
        this.selectedCollectionName = string;
        AnalyticsService analyticsService = this.analytics;
        if (analyticsService == null) {
            Intrinsics.throwUninitializedPropertyAccessException(SettingsJsonConstants.ANALYTICS_KEY);
        }
        AnalyticsApi.DefaultImpls.trackEvent$default(analyticsService, "Main", "Main", Action.collectionSelection, getString(selectedCollection.getType()), null, null, null, null, null, 496, null);
        String string2 = getString(selectedCollection.getType());
        Intrinsics.checkExpressionValueIsNotNull(string2, "getString(collection.type)");
        refreshToolbarTitle(setToolbarTitle(string2));
        switch (selectedCollection) {
            case CREATED:
                setupCreatedPatternList();
                break;
            case PURCHASED:
                setupPurchasedPatternList();
                break;
            case STARTER:
                setupStarterKitPatternList();
                break;
        }
        MainActivityUI mainActivityUI = this.ui;
        if (mainActivityUI == null) {
            Intrinsics.throwUninitializedPropertyAccessException("ui");
        }
        mainActivityUI.hideCollectionSelectorView(this);
        MainActivityUI mainActivityUI2 = this.ui;
        if (mainActivityUI2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("ui");
        }
        mainActivityUI2.changeSelectedCollectionText(this, selectedCollection);
    }

    /* access modifiers changed from: protected */
    @Override // com.trello.rxlifecycle2.components.support.RxAppCompatActivity, android.support.v4.app.FragmentActivity
    public void onResume() {
        super.onResume();
        MainActivityUI mainActivityUI = this.ui;
        if (mainActivityUI == null) {
            Intrinsics.throwUninitializedPropertyAccessException("ui");
        }
        if (mainActivityUI.getFabIsOpen()) {
            MainActivityUI mainActivityUI2 = this.ui;
            if (mainActivityUI2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("ui");
            }
            mainActivityUI2.fabHide();
        }
        FirmwareService firmwareService2 = this.firmwareService;
        if (firmwareService2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("firmwareService");
        }
        getDisposeBag().add(RxExtensionsKt.asyncIO(firmwareService2.getLatestFirmware()).flatMapObservable(new MainActivity$onResume$1(this)).toList().flatMap(new MainActivity$onResume$2(this)).subscribe(new MainActivity$onResume$3(this), MainActivity$onResume$4.INSTANCE));
        String stringExtra = getIntent().getStringExtra(Constants.collectionType);
        if (stringExtra != null) {
            int hashCode = stringExtra.hashCode();
            if (hashCode != -1791517821) {
                if (hashCode == 1028554472 && stringExtra.equals(Constants.created)) {
                    MainActivityUI mainActivityUI3 = this.ui;
                    if (mainActivityUI3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("ui");
                    }
                    mainActivityUI3.getCreatedCollectionItem().performClick();
                    return;
                }
            } else if (stringExtra.equals(Constants.purchased)) {
                MainActivityUI mainActivityUI4 = this.ui;
                if (mainActivityUI4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("ui");
                }
                mainActivityUI4.getPurchasedCollectionItem().performClick();
                return;
            }
            MainActivityUI mainActivityUI5 = this.ui;
            if (mainActivityUI5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("ui");
            }
            mainActivityUI5.getStarterKitCollectionItem().performClick();
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.trello.rxlifecycle2.components.support.RxAppCompatActivity, android.support.v4.app.FragmentActivity
    public void onPause() {
        super.onPause();
        getDisposeBag().clear();
    }

    @Override // android.support.v4.app.ActivityCompat.OnRequestPermissionsResultCallback, android.support.v4.app.FragmentActivity
    public void onRequestPermissionsResult(int i, @NotNull String[] strArr, @NotNull int[] iArr) {
        View view;
        Intrinsics.checkParameterIsNotNull(strArr, NativeProtocol.RESULT_ARGS_PERMISSIONS);
        Intrinsics.checkParameterIsNotNull(iArr, "grantResults");
        if (i == 0) {
            if ((!(iArr.length == 0)) && iArr[0] == 0 && (view = this.lastSelected) != null) {
                AnkoInternals.internalStartActivity(this, SelectTagoActivity.class, new Pair[]{new Pair(Constants.pattern, view.getTag())});
            }
        }
    }

    /* access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity
    public void onActivityResult(int i, int i2, @Nullable Intent intent) {
        if (i != 100) {
            if (i != 200) {
                super.onActivityResult(i, i2, intent);
            } else if (i2 == -1) {
                setupStarterKitPatternList();
            }
        } else if (i2 == -1 && intent != null) {
            ImageEditorService imageEditorService2 = this.imageEditorService;
            if (imageEditorService2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("imageEditorService");
            }
            Uri data = intent.getData();
            Intrinsics.checkExpressionValueIsNotNull(data, "it.data");
            MainActivityUI mainActivityUI = this.ui;
            if (mainActivityUI == null) {
                Intrinsics.throwUninitializedPropertyAccessException("ui");
            }
            int width = mainActivityUI.getRoot().getWidth();
            MainActivityUI mainActivityUI2 = this.ui;
            if (mainActivityUI2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("ui");
            }
            getDisposeBag().add(RxExtensionsKt.asyncIO(imageEditorService2.setGalleryImage(data, width, mainActivityUI2.getRoot().getHeight())).subscribe(new MainActivity$onActivityResult$$inlined$let$lambda$1(this), MainActivity$onActivityResult$1$2.INSTANCE));
        }
    }

    @Override // com.liber8tech.tago.android.activity.BaseActivity, com.liber8tech.tago.android.activity.ToolbarElements
    @NotNull
    public Function1<View, Unit> getToolbarRightIconClick() {
        return new MainActivity$getToolbarRightIconClick$1(this);
    }

    @Override // com.liber8tech.tago.android.activity.BaseActivity, com.liber8tech.tago.android.activity.ToolbarElements
    @NotNull
    public CharSequence getToolbarTitle() {
        return setToolbarTitle(this.selectedCollectionName);
    }

    private final CharSequence setToolbarTitle(String str) {
        CharSequence build = new Truss().append(getString(R.string.collection)).append('\n').pushSpan(new ForegroundColorSpan(AndroidExtensionsKt.getColorCompat(this, R.color.silver))).append(str).popSpan().build();
        Intrinsics.checkExpressionValueIsNotNull(build, "Truss()\n      .append(ge….popSpan()\n      .build()");
        return build;
    }

    @Override // com.liber8tech.tago.android.activity.BaseActivity, com.liber8tech.tago.android.activity.ToolbarElements
    @NotNull
    public Integer getToolbarRightIcon() {
        return Integer.valueOf((int) R.drawable.icon_settings);
    }

    @Override // com.liber8tech.tago.android.activity.ToolbarElements
    @NotNull
    public View getContentView() {
        this.ui = new MainActivityUI(new MainActivity$getContentView$1(this));
        MainActivityUI mainActivityUI = this.ui;
        if (mainActivityUI == null) {
            Intrinsics.throwUninitializedPropertyAccessException("ui");
        }
        return mainActivityUI.createView(AnkoContext.Companion.create$default(AnkoContext.Companion, this, this, false, 4, null));
    }

    @Override // com.liber8tech.tago.android.activity.BaseActivity, com.liber8tech.tago.android.activity.ToolbarElements
    @NotNull
    public Function1<View, Unit> getTitleOnClick() {
        return new MainActivity$getTitleOnClick$1(this);
    }

    private final void setupCreatedPatternList() {
        ImageEditorService imageEditorService2 = this.imageEditorService;
        if (imageEditorService2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("imageEditorService");
        }
        getDisposeBag().add(RxExtensionsKt.asyncIO(imageEditorService2.getCreatedPatternList()).subscribe(new MainActivity$setupCreatedPatternList$1(this), MainActivity$setupCreatedPatternList$2.INSTANCE));
    }

    private final void setupPurchasedPatternList() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        ImageEditorService imageEditorService2 = this.imageEditorService;
        if (imageEditorService2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("imageEditorService");
        }
        getDisposeBag().add(RxExtensionsKt.asyncIO(imageEditorService2.getLocalPurchasePatternId()).flatMap(new MainActivity$setupPurchasedPatternList$1(this)).filter(MainActivity$setupPurchasedPatternList$2.INSTANCE).subscribe(new MainActivity$setupPurchasedPatternList$3(linkedHashMap), MainActivity$setupPurchasedPatternList$4.INSTANCE, new MainActivity$setupPurchasedPatternList$5(this, linkedHashMap)));
    }

    private final void setupStarterKitPatternList() {
        ArrayList arrayList = new ArrayList();
        Resources resources = getResources();
        Intrinsics.checkExpressionValueIsNotNull(resources, "resources");
        String[] list = resources.getAssets().list("patterns");
        Intrinsics.checkExpressionValueIsNotNull(list, "resources.assets.list(\"patterns\")");
        for (String str : list) {
            Intrinsics.checkExpressionValueIsNotNull(str, "it");
            arrayList.add(new AssetPattern("Starter Kit", "Demo Copy For Demo Pattern Demo.", "file:///android_asset/patterns/" + str, str));
        }
        MainActivityUI mainActivityUI = this.ui;
        if (mainActivityUI == null) {
            Intrinsics.throwUninitializedPropertyAccessException("ui");
        }
        mainActivityUI.setPatterns(this, MapsKt.mutableMapOf(new Pair(getString(R.string.starter_kit), arrayList)), new MainActivity$setupStarterKitPatternList$2(this), null);
    }

    @Override // android.support.v4.app.FragmentActivity
    public void onBackPressed() {
        MainActivityUI mainActivityUI = this.ui;
        if (mainActivityUI == null) {
            Intrinsics.throwUninitializedPropertyAccessException("ui");
        }
        if (mainActivityUI.getFabIsOpen()) {
            MainActivityUI mainActivityUI2 = this.ui;
            if (mainActivityUI2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("ui");
            }
            mainActivityUI2.fabHide();
            return;
        }
        MainActivityUI mainActivityUI3 = this.ui;
        if (mainActivityUI3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("ui");
        }
        if (mainActivityUI3.getCollectionSelectorIsOpen()) {
            MainActivityUI mainActivityUI4 = this.ui;
            if (mainActivityUI4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("ui");
            }
            mainActivityUI4.hideCollectionSelectorView(this);
            return;
        }
        super.onBackPressed();
    }
}
