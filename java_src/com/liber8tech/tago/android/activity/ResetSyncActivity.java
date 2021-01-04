package com.liber8tech.tago.android.activity;

import android.os.Bundle;
import android.support.design.widget.Snackbar;
import android.view.View;
import android.widget.FrameLayout;
import com.liber8tech.tago.DIExtensionsKt;
import com.liber8tech.tago.R;
import com.liber8tech.tago.analytics.AnalyticsService;
import com.liber8tech.tago.android.ui.ResetSyncActivityUI;
import com.liber8tech.tago.service.BluetoothService;
import com.liber8tech.tago.util.extension.AndroidExtensionsKt;
import com.polidea.rxandroidble2.RxBleDevice;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import io.reactivex.Observable;
import io.reactivex.android.schedulers.AndroidSchedulers;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.anko.AnkoContext;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\b\u0010\u0017\u001a\u00020\u0018H\u0016J\r\u0010\u0019\u001a\u00020\u001aH\u0016¢\u0006\u0002\u0010\u001bJ\u0014\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u00140\u001dH\u0016J\b\u0010\u001f\u001a\u00020 H\u0016J\u0012\u0010!\u001a\u00020\u00142\b\u0010\"\u001a\u0004\u0018\u00010#H\u0014J\b\u0010$\u001a\u00020\u0014H\u0014R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001e\u0010\t\u001a\u00020\n8\u0006@\u0006X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X.¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0004¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Lcom/liber8tech/tago/android/activity/ResetSyncActivity;", "Lcom/liber8tech/tago/android/activity/BaseActivity;", "()V", SettingsJsonConstants.ANALYTICS_KEY, "Lcom/liber8tech/tago/analytics/AnalyticsService;", "getAnalytics", "()Lcom/liber8tech/tago/analytics/AnalyticsService;", "setAnalytics", "(Lcom/liber8tech/tago/analytics/AnalyticsService;)V", "bluetoothService", "Lcom/liber8tech/tago/service/BluetoothService;", "getBluetoothService", "()Lcom/liber8tech/tago/service/BluetoothService;", "setBluetoothService", "(Lcom/liber8tech/tago/service/BluetoothService;)V", "device", "Lcom/polidea/rxandroidble2/RxBleDevice;", "ui", "Lcom/liber8tech/tago/android/ui/ResetSyncActivityUI;", "displayError", "", "ex", "", "getContentView", "Landroid/widget/FrameLayout;", "getToolbarLeftIcon", "", "()Ljava/lang/Integer;", "getToolbarLeftIconClick", "Lkotlin/Function1;", "Landroid/view/View;", "getToolbarTitle", "", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: ResetSyncActivity.kt */
public final class ResetSyncActivity extends BaseActivity {
    private HashMap _$_findViewCache;
    @Inject
    @NotNull
    public AnalyticsService analytics;
    @Inject
    @NotNull
    public BluetoothService bluetoothService;
    private RxBleDevice device;
    private final ResetSyncActivityUI ui = new ResetSyncActivityUI();

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
        BluetoothService bluetoothService2 = this.bluetoothService;
        if (bluetoothService2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bluetoothService");
        }
        if (bluetoothService2.getSelectedDevice() == null) {
            finish();
            return;
        }
        BluetoothService bluetoothService3 = this.bluetoothService;
        if (bluetoothService3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bluetoothService");
        }
        RxBleDevice selectedDevice = bluetoothService3.getSelectedDevice();
        if (selectedDevice == null) {
            Intrinsics.throwNpe();
        }
        this.device = selectedDevice;
        BluetoothService bluetoothService4 = this.bluetoothService;
        if (bluetoothService4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bluetoothService");
        }
        bluetoothService4.setSelectedDevice(null);
        ResetSyncActivityUI resetSyncActivityUI = this.ui;
        RxBleDevice rxBleDevice = this.device;
        if (rxBleDevice == null) {
            Intrinsics.throwUninitializedPropertyAccessException("device");
        }
        resetSyncActivityUI.setDevice(rxBleDevice);
        Observable<Long> take = Observable.interval(1000, TimeUnit.MILLISECONDS).take(20);
        BluetoothService bluetoothService5 = this.bluetoothService;
        if (bluetoothService5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bluetoothService");
        }
        RxBleDevice rxBleDevice2 = this.device;
        if (rxBleDevice2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("device");
        }
        getDisposeBag().add(bluetoothService5.connect(rxBleDevice2).flatMap(new ResetSyncActivity$onCreate$1(this)).flatMap(new ResetSyncActivity$onCreate$2(take)).observeOn(AndroidSchedulers.mainThread()).subscribe(new ResetSyncActivity$onCreate$3(this), new ResetSyncActivity$onCreate$4(this), new ResetSyncActivity$onCreate$5(this)));
    }

    /* access modifiers changed from: protected */
    @Override // com.trello.rxlifecycle2.components.support.RxAppCompatActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity
    public void onDestroy() {
        super.onDestroy();
        getDisposeBag().clear();
    }

    /* access modifiers changed from: private */
    public final void displayError(Throwable th) {
        Timber.e(th);
        this.ui.setDim(true);
        Snackbar make = Snackbar.make(findViewById(16908290), (int) R.string.something_went_wrong, -2);
        Intrinsics.checkExpressionValueIsNotNull(make, "Snackbar.make(findViewBy…ackbar.LENGTH_INDEFINITE)");
        make.getView().setBackgroundColor(AndroidExtensionsKt.getColorCompat(this, R.color.gold));
        make.setAction(17039370, new ResetSyncActivity$displayError$1(this));
        make.show();
    }

    @Override // com.liber8tech.tago.android.activity.ToolbarElements
    @NotNull
    public FrameLayout getContentView() {
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
        return new ResetSyncActivity$getToolbarLeftIconClick$1(this);
    }
}
