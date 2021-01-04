package com.liber8tech.tago.android.activity;

import android.content.Intent;
import android.os.Bundle;
import android.support.design.widget.Snackbar;
import android.view.View;
import android.widget.FrameLayout;
import com.facebook.share.internal.ShareConstants;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.LocationServices;
import com.liber8tech.tago.Constants;
import com.liber8tech.tago.DIExtensionsKt;
import com.liber8tech.tago.R;
import com.liber8tech.tago.analytics.AnalyticsService;
import com.liber8tech.tago.android.ui.SelectTagoActivityUI;
import com.liber8tech.tago.model.Pattern;
import com.liber8tech.tago.model.TagoDevice;
import com.liber8tech.tago.service.BluetoothService;
import com.liber8tech.tago.service.TagoService;
import com.liber8tech.tago.util.RuntimeConfig;
import com.liber8tech.tago.util.extension.AndroidExtensionsKt;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import io.reactivex.Observable;
import io.realm.Realm;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.jetbrains.anko.AnkoContext;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u0000 @2\u00020\u0001:\u0001@B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010%\u001a\u00020&H\u0016J\r\u0010'\u001a\u00020(H\u0016¢\u0006\u0002\u0010)J\u0014\u0010*\u001a\u000e\u0012\u0004\u0012\u00020,\u0012\u0004\u0012\u00020-0+H\u0016J\b\u0010.\u001a\u00020/H\u0016J\b\u00100\u001a\u00020-H\u0002J\"\u00101\u001a\u00020-2\u0006\u00102\u001a\u00020(2\u0006\u00103\u001a\u00020(2\b\u00104\u001a\u0004\u0018\u000105H\u0014J\u0012\u00106\u001a\u00020-2\b\u00107\u001a\u0004\u0018\u000108H\u0014J\b\u00109\u001a\u00020-H\u0014J\b\u0010:\u001a\u00020-H\u0014J\b\u0010;\u001a\u00020-H\u0002J\b\u0010<\u001a\u00020-H\u0002J\u0010\u0010=\u001a\u00020-2\u0006\u0010>\u001a\u00020?H\u0002R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001e\u0010\t\u001a\u00020\n8\u0006@\u0006X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010X\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X.¢\u0006\u0002\n\u0000R\u0016\u0010\u0014\u001a\n \u0016*\u0004\u0018\u00010\u00150\u0015X\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0017\u001a\u00020\u00188\u0006@\u0006X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001e\u0010\u001d\u001a\u00020\u001e8\u0006@\u0006X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u000e\u0010#\u001a\u00020$X\u0004¢\u0006\u0002\n\u0000¨\u0006A"}, d2 = {"Lcom/liber8tech/tago/android/activity/SelectTagoActivity;", "Lcom/liber8tech/tago/android/activity/BaseActivity;", "()V", SettingsJsonConstants.ANALYTICS_KEY, "Lcom/liber8tech/tago/analytics/AnalyticsService;", "getAnalytics", "()Lcom/liber8tech/tago/analytics/AnalyticsService;", "setAnalytics", "(Lcom/liber8tech/tago/analytics/AnalyticsService;)V", "bluetoothService", "Lcom/liber8tech/tago/service/BluetoothService;", "getBluetoothService", "()Lcom/liber8tech/tago/service/BluetoothService;", "setBluetoothService", "(Lcom/liber8tech/tago/service/BluetoothService;)V", "myTagoList", "", "Lcom/liber8tech/tago/model/TagoDevice;", "pattern", "Lcom/liber8tech/tago/model/Pattern;", "realm", "Lio/realm/Realm;", "kotlin.jvm.PlatformType", "runtimeConfig", "Lcom/liber8tech/tago/util/RuntimeConfig;", "getRuntimeConfig", "()Lcom/liber8tech/tago/util/RuntimeConfig;", "setRuntimeConfig", "(Lcom/liber8tech/tago/util/RuntimeConfig;)V", "tagoService", "Lcom/liber8tech/tago/service/TagoService;", "getTagoService", "()Lcom/liber8tech/tago/service/TagoService;", "setTagoService", "(Lcom/liber8tech/tago/service/TagoService;)V", "ui", "Lcom/liber8tech/tago/android/ui/SelectTagoActivityUI;", "getContentView", "Landroid/widget/FrameLayout;", "getToolbarLeftIcon", "", "()Ljava/lang/Integer;", "getToolbarLeftIconClick", "Lkotlin/Function1;", "Landroid/view/View;", "", "getToolbarTitle", "", "observeServices", "onActivityResult", "requestCode", "resultCode", ShareConstants.WEB_DIALOG_PARAM_DATA, "Landroid/content/Intent;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onPause", "onResume", "requestBleDialog", "requestLocationDialog", "scan", "autoUploadEnabled", "", "Companion", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: SelectTagoActivity.kt */
public final class SelectTagoActivity extends BaseActivity {
    public static final Companion Companion = new Companion(null);
    private static final int REQUEST_BLE = 2;
    private static final int REQUEST_EXIT = 1;
    private static final int REQUEST_LOCATION = 3;
    private HashMap _$_findViewCache;
    @Inject
    @NotNull
    public AnalyticsService analytics;
    @Inject
    @NotNull
    public BluetoothService bluetoothService;
    private final List<TagoDevice> myTagoList = new ArrayList();
    private Pattern pattern;
    private final Realm realm = Realm.getDefaultInstance();
    @Inject
    @NotNull
    public RuntimeConfig runtimeConfig;
    @Inject
    @NotNull
    public TagoService tagoService;
    private final SelectTagoActivityUI ui = new SelectTagoActivityUI(new SelectTagoActivity$ui$1(this));

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
    public static final /* synthetic */ Pattern access$getPattern$p(SelectTagoActivity selectTagoActivity) {
        Pattern pattern2 = selectTagoActivity.pattern;
        if (pattern2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("pattern");
        }
        return pattern2;
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004XD¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004XD¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004XD¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/liber8tech/tago/android/activity/SelectTagoActivity$Companion;", "", "()V", "REQUEST_BLE", "", "REQUEST_EXIT", "REQUEST_LOCATION", "app_release"}, k = 1, mv = {1, 1, 13})
    /* compiled from: SelectTagoActivity.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @NotNull
    public final BluetoothService getBluetoothService() {
        BluetoothService bluetoothService2 = this.bluetoothService;
        if (bluetoothService2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bluetoothService");
        }
        return bluetoothService2;
    }

    public final void setBluetoothService(@NotNull BluetoothService bluetoothService2) {
        Intrinsics.checkParameterIsNotNull(bluetoothService2, "<set-?>");
        this.bluetoothService = bluetoothService2;
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
        analyticsService.trackScreen("Upload");
        Serializable serializableExtra = getIntent().getSerializableExtra(Constants.pattern);
        if (serializableExtra != null) {
            this.pattern = (Pattern) serializableExtra;
            SelectTagoActivityUI selectTagoActivityUI = this.ui;
            Pattern pattern2 = this.pattern;
            if (pattern2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("pattern");
            }
            selectTagoActivityUI.setImage(pattern2.getSrc());
            this.ui.setCancelOnClick(new SelectTagoActivity$onCreate$1(this));
            getDisposeBag().add(Observable.just(this.realm.where(TagoDevice.class).findAllAsync()).subscribe(new SelectTagoActivity$onCreate$2(this), SelectTagoActivity$onCreate$3.INSTANCE));
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type com.liber8tech.tago.model.Pattern");
    }

    /* access modifiers changed from: protected */
    @Override // com.trello.rxlifecycle2.components.support.RxAppCompatActivity, android.support.v4.app.FragmentActivity
    public void onResume() {
        super.onResume();
        RuntimeConfig runtimeConfig2 = this.runtimeConfig;
        if (runtimeConfig2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("runtimeConfig");
        }
        boolean autoUpload = runtimeConfig2.getAutoUpload();
        observeServices();
        scan(autoUpload);
    }

    /* access modifiers changed from: protected */
    @Override // com.trello.rxlifecycle2.components.support.RxAppCompatActivity, android.support.v4.app.FragmentActivity
    public void onPause() {
        super.onPause();
        getDisposeBag().clear();
    }

    private final void scan(boolean z) {
        TagoService tagoService2 = this.tagoService;
        if (tagoService2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tagoService");
        }
        getDisposeBag().add(tagoService2.allDevices().subscribe(new SelectTagoActivity$scan$1(this, z), SelectTagoActivity$scan$2.INSTANCE));
    }

    private final void observeServices() {
        Snackbar make = Snackbar.make(findViewById(16908290), (int) R.string.location_turned_off, -2);
        Intrinsics.checkExpressionValueIsNotNull(make, "Snackbar.make(findViewBy…ackbar.LENGTH_INDEFINITE)");
        make.getView().setBackgroundColor(AndroidExtensionsKt.getColorCompat(this, R.color.gold));
        TagoService tagoService2 = this.tagoService;
        if (tagoService2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tagoService");
        }
        getDisposeBag().add(tagoService2.bleAndLocationStates().subscribe(new SelectTagoActivity$observeServices$1(this, make), SelectTagoActivity$observeServices$2.INSTANCE));
    }

    /* access modifiers changed from: private */
    public final void requestBleDialog() {
        startActivityForResult(new Intent("android.bluetooth.adapter.action.REQUEST_ENABLE"), REQUEST_BLE);
    }

    /* access modifiers changed from: private */
    public final void requestLocationDialog() {
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = (T) null;
        objectRef.element = (T) new GoogleApiClient.Builder(this).addApi(LocationServices.API).addConnectionCallbacks(new SelectTagoActivity$requestLocationDialog$1(this, objectRef)).addOnConnectionFailedListener(SelectTagoActivity$requestLocationDialog$2.INSTANCE).build();
        objectRef.element.connect();
    }

    @Override // com.liber8tech.tago.android.activity.BaseActivity, com.liber8tech.tago.android.activity.ToolbarElements
    @NotNull
    public String getToolbarTitle() {
        String string = getString(R.string.collection);
        Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.collection)");
        return string;
    }

    @Override // com.liber8tech.tago.android.activity.ToolbarElements
    @NotNull
    public FrameLayout getContentView() {
        return this.ui.createView(AnkoContext.Companion.create$default(AnkoContext.Companion, this, this, false, 4, null));
    }

    @Override // com.liber8tech.tago.android.activity.BaseActivity, com.liber8tech.tago.android.activity.ToolbarElements
    @NotNull
    public Integer getToolbarLeftIcon() {
        return Integer.valueOf((int) R.drawable.button_back);
    }

    @Override // com.liber8tech.tago.android.activity.BaseActivity, com.liber8tech.tago.android.activity.ToolbarElements
    @NotNull
    public Function1<View, Unit> getToolbarLeftIconClick() {
        return new SelectTagoActivity$getToolbarLeftIconClick$1(this);
    }

    /* access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity
    public void onActivityResult(int i, int i2, @Nullable Intent intent) {
        Timber.d("onActivityResult | requestCode=" + i + ", resultCode=" + i2 + ", data=" + intent, new Object[0]);
        if (i == REQUEST_EXIT && i2 == -1) {
            finish();
        }
    }
}
