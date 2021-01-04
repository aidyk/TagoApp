package com.liber8tech.tago.android.activity;

import android.os.Bundle;
import android.support.design.widget.Snackbar;
import android.view.View;
import com.liber8tech.tago.Constants;
import com.liber8tech.tago.DIExtensionsKt;
import com.liber8tech.tago.R;
import com.liber8tech.tago.analytics.AnalyticsService;
import com.liber8tech.tago.android.analytics.Screens;
import com.liber8tech.tago.android.ui.SyncActivityUI;
import com.liber8tech.tago.model.ArcKt;
import com.liber8tech.tago.model.Firmware;
import com.liber8tech.tago.model.Pattern;
import com.liber8tech.tago.service.BluetoothService;
import com.liber8tech.tago.service.FirmwareService;
import com.liber8tech.tago.service.TagoService;
import com.liber8tech.tago.util.extension.AndroidExtensionsKt;
import com.polidea.rxandroidble2.RxBleDevice;
import com.trello.rxlifecycle2.components.support.RxAppCompatActivity;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import io.reactivex.Observable;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.CompositeDisposable;
import java.io.Serializable;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.anko.AnkoContext;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0002J\u0012\u0010%\u001a\u00020\"2\b\u0010&\u001a\u0004\u0018\u00010'H\u0014J\b\u0010(\u001a\u00020\"H\u0014J\u001a\u0010)\u001a\u00020\"2\u0006\u0010*\u001a\u00020+2\b\b\u0002\u0010,\u001a\u00020-H\u0002R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001e\u0010\t\u001a\u00020\n8\u0006@\u0006X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X.¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0013\u001a\u00020\u00148\u0006@\u0006X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001e\u0010\u0019\u001a\u00020\u001a8\u0006@\u0006X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u000e\u0010\u001f\u001a\u00020 X\u0004¢\u0006\u0002\n\u0000¨\u0006."}, d2 = {"Lcom/liber8tech/tago/android/activity/SyncActivity;", "Lcom/trello/rxlifecycle2/components/support/RxAppCompatActivity;", "()V", SettingsJsonConstants.ANALYTICS_KEY, "Lcom/liber8tech/tago/analytics/AnalyticsService;", "getAnalytics", "()Lcom/liber8tech/tago/analytics/AnalyticsService;", "setAnalytics", "(Lcom/liber8tech/tago/analytics/AnalyticsService;)V", "bluetoothService", "Lcom/liber8tech/tago/service/BluetoothService;", "getBluetoothService", "()Lcom/liber8tech/tago/service/BluetoothService;", "setBluetoothService", "(Lcom/liber8tech/tago/service/BluetoothService;)V", "device", "Lcom/polidea/rxandroidble2/RxBleDevice;", "disposeBag", "Lio/reactivex/disposables/CompositeDisposable;", "firmwareService", "Lcom/liber8tech/tago/service/FirmwareService;", "getFirmwareService", "()Lcom/liber8tech/tago/service/FirmwareService;", "setFirmwareService", "(Lcom/liber8tech/tago/service/FirmwareService;)V", "tagoService", "Lcom/liber8tech/tago/service/TagoService;", "getTagoService", "()Lcom/liber8tech/tago/service/TagoService;", "setTagoService", "(Lcom/liber8tech/tago/service/TagoService;)V", "ui", "Lcom/liber8tech/tago/android/ui/SyncActivityUI;", "displayError", "", "ex", "", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "startPatternSync", "pattern", "Lcom/liber8tech/tago/model/Pattern;", "delayTime", "", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: SyncActivity.kt */
public final class SyncActivity extends RxAppCompatActivity {
    private HashMap _$_findViewCache;
    @Inject
    @NotNull
    public AnalyticsService analytics;
    @Inject
    @NotNull
    public BluetoothService bluetoothService;
    private RxBleDevice device;
    private final CompositeDisposable disposeBag = new CompositeDisposable();
    @Inject
    @NotNull
    public FirmwareService firmwareService;
    @Inject
    @NotNull
    public TagoService tagoService;
    private final SyncActivityUI ui = new SyncActivityUI();

    public void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

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
    public static final /* synthetic */ RxBleDevice access$getDevice$p(SyncActivity syncActivity) {
        RxBleDevice rxBleDevice = syncActivity.device;
        if (rxBleDevice == null) {
            Intrinsics.throwUninitializedPropertyAccessException("device");
        }
        return rxBleDevice;
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
    @Override // android.support.v4.app.SupportActivity, com.trello.rxlifecycle2.components.support.RxAppCompatActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        DIExtensionsKt.getComponent(this).inject(this);
        AnalyticsService analyticsService = this.analytics;
        if (analyticsService == null) {
            Intrinsics.throwUninitializedPropertyAccessException(SettingsJsonConstants.ANALYTICS_KEY);
        }
        analyticsService.trackScreen(Screens.sync);
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
        setContentView(this.ui.createView(AnkoContext.Companion.create$default(AnkoContext.Companion, this, this, false, 4, null)));
        Serializable serializableExtra = getIntent().getSerializableExtra(Constants.pattern);
        if (serializableExtra != null) {
            Pattern pattern = (Pattern) serializableExtra;
            boolean booleanExtra = getIntent().getBooleanExtra(Constants.autoUpload, true);
            SyncActivityUI syncActivityUI = this.ui;
            RxBleDevice rxBleDevice = this.device;
            if (rxBleDevice == null) {
                Intrinsics.throwUninitializedPropertyAccessException("device");
            }
            syncActivityUI.setName(ArcKt.getCustomName(rxBleDevice));
            this.ui.setImage(pattern.getSrc());
            SyncActivityUI syncActivityUI2 = this.ui;
            RxBleDevice rxBleDevice2 = this.device;
            if (rxBleDevice2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("device");
            }
            syncActivityUI2.setColor(ArcKt.preview(rxBleDevice2));
            this.ui.setCancelOnClick(new SyncActivity$onCreate$1(this, booleanExtra));
            Firmware firmware = new Firmware();
            FirmwareService firmwareService2 = this.firmwareService;
            if (firmwareService2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("firmwareService");
            }
            if (!firmwareService2.isFirmwareUpdateTried()) {
                this.ui.getCancelButton().setVisibility(4);
                FirmwareService firmwareService3 = this.firmwareService;
                if (firmwareService3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("firmwareService");
                }
                firmwareService3.setFirmwareUpdateTried(true);
                BluetoothService bluetoothService5 = this.bluetoothService;
                if (bluetoothService5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("bluetoothService");
                }
                RxBleDevice rxBleDevice3 = this.device;
                if (rxBleDevice3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("device");
                }
                this.disposeBag.add(bluetoothService5.connect(rxBleDevice3).flatMap(new SyncActivity$onCreate$2(this, firmware)).observeOn(AndroidSchedulers.mainThread()).subscribe(new SyncActivity$onCreate$3(this), new SyncActivity$onCreate$4(this, pattern), new SyncActivity$onCreate$5(this, pattern)));
                return;
            }
            startPatternSync(pattern, 0);
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type com.liber8tech.tago.model.Pattern");
    }

    static /* synthetic */ void startPatternSync$default(SyncActivity syncActivity, Pattern pattern, long j, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 10;
        }
        syncActivity.startPatternSync(pattern, j);
    }

    private final void startPatternSync(Pattern pattern, long j) {
        this.ui.setProgressValue(0.0d);
        this.ui.getDetailText().setText(getString(R.string.image_uploading_message));
        this.disposeBag.add(Observable.just(Unit.INSTANCE).delay(j, TimeUnit.SECONDS).flatMap(new SyncActivity$startPatternSync$1(this)).flatMap(new SyncActivity$startPatternSync$2(this, pattern)).observeOn(AndroidSchedulers.mainThread()).subscribe(new SyncActivity$startPatternSync$3(this), new SyncActivity$startPatternSync$4(this, pattern), new SyncActivity$startPatternSync$5(this)));
    }

    /* access modifiers changed from: protected */
    @Override // com.trello.rxlifecycle2.components.support.RxAppCompatActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity
    public void onDestroy() {
        super.onDestroy();
        this.disposeBag.clear();
    }

    /* access modifiers changed from: private */
    public final void displayError(Throwable th) {
        Timber.e(th);
        this.ui.setDim(true);
        Snackbar make = Snackbar.make(findViewById(16908290), (int) R.string.something_went_wrong, -2);
        Intrinsics.checkExpressionValueIsNotNull(make, "Snackbar.make(findViewBy…ackbar.LENGTH_INDEFINITE)");
        make.getView().setBackgroundColor(AndroidExtensionsKt.getColorCompat(this, R.color.gold));
        make.setAction(17039370, new SyncActivity$displayError$1(this));
        make.show();
    }
}
