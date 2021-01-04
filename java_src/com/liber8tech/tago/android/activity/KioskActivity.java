package com.liber8tech.tago.android.activity;

import android.os.Bundle;
import android.support.design.widget.Snackbar;
import android.view.View;
import com.liber8tech.tago.DIExtensionsKt;
import com.liber8tech.tago.R;
import com.liber8tech.tago.android.ui.KioskActivityUI;
import com.liber8tech.tago.service.BluetoothService;
import com.liber8tech.tago.service.LocationService;
import com.liber8tech.tago.service.TagoService;
import com.liber8tech.tago.util.extension.AndroidExtensionsKt;
import com.polidea.rxandroidble2.RxBleDevice;
import io.reactivex.android.schedulers.AndroidSchedulers;
import java.util.HashMap;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.anko.AnkoContext;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\b\u0010\u001b\u001a\u00020\u001cH\u0016J\u000f\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016¢\u0006\u0002\u0010\u001fJ\u0014\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u00180!H\u0016J\n\u0010\"\u001a\u0004\u0018\u00010#H\u0016J\b\u0010$\u001a\u00020\u0018H\u0002J\u0012\u0010%\u001a\u00020\u00182\b\u0010&\u001a\u0004\u0018\u00010'H\u0014J\b\u0010(\u001a\u00020\u0018H\u0014J\b\u0010)\u001a\u00020\u0018H\u0014J\b\u0010*\u001a\u00020\u0018H\u0002J\u0018\u0010+\u001a\u00020\u00182\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020\u001eH\u0002R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001e\u0010\t\u001a\u00020\n8\u0006@\u0006X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001e\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0016X\u0004¢\u0006\u0002\n\u0000¨\u0006/"}, d2 = {"Lcom/liber8tech/tago/android/activity/KioskActivity;", "Lcom/liber8tech/tago/android/activity/BaseActivity;", "()V", "bluetoothService", "Lcom/liber8tech/tago/service/BluetoothService;", "getBluetoothService", "()Lcom/liber8tech/tago/service/BluetoothService;", "setBluetoothService", "(Lcom/liber8tech/tago/service/BluetoothService;)V", "locationService", "Lcom/liber8tech/tago/service/LocationService;", "getLocationService", "()Lcom/liber8tech/tago/service/LocationService;", "setLocationService", "(Lcom/liber8tech/tago/service/LocationService;)V", "tagoService", "Lcom/liber8tech/tago/service/TagoService;", "getTagoService", "()Lcom/liber8tech/tago/service/TagoService;", "setTagoService", "(Lcom/liber8tech/tago/service/TagoService;)V", "ui", "Lcom/liber8tech/tago/android/ui/KioskActivityUI;", "displayError", "", "ex", "", "getContentView", "Landroid/view/View;", "getToolbarLeftIcon", "", "()Ljava/lang/Integer;", "getToolbarLeftIconClick", "Lkotlin/Function1;", "getToolbarTitle", "", "observeServices", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onPause", "onResume", "scan", "sendKioskModeCommand", "device", "Lcom/polidea/rxandroidble2/RxBleDevice;", "kioskMode", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: KioskActivity.kt */
public final class KioskActivity extends BaseActivity {
    private HashMap _$_findViewCache;
    @Inject
    @NotNull
    public BluetoothService bluetoothService;
    @Inject
    @NotNull
    public LocationService locationService;
    @Inject
    @NotNull
    public TagoService tagoService;
    private final KioskActivityUI ui = new KioskActivityUI(new KioskActivity$ui$1(this));

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

    /* access modifiers changed from: private */
    public final void sendKioskModeCommand(RxBleDevice rxBleDevice, int i) {
        BluetoothService bluetoothService2 = this.bluetoothService;
        if (bluetoothService2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bluetoothService");
        }
        getDisposeBag().add(bluetoothService2.connect(rxBleDevice).flatMap(new KioskActivity$sendKioskModeCommand$1(this, i)).observeOn(AndroidSchedulers.mainThread()).subscribe(new KioskActivity$sendKioskModeCommand$2(this), new KioskActivity$sendKioskModeCommand$3(this)));
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

    /* access modifiers changed from: protected */
    @Override // com.liber8tech.tago.android.activity.BaseActivity, android.support.v4.app.SupportActivity, com.trello.rxlifecycle2.components.support.RxAppCompatActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        DIExtensionsKt.getComponent(this).inject(this);
    }

    /* access modifiers changed from: protected */
    @Override // com.trello.rxlifecycle2.components.support.RxAppCompatActivity, android.support.v4.app.FragmentActivity
    public void onResume() {
        super.onResume();
        LocationService locationService2 = this.locationService;
        if (locationService2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("locationService");
        }
        if (!locationService2.hasPermission()) {
            LocationService locationService3 = this.locationService;
            if (locationService3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("locationService");
            }
            locationService3.requestPermission(this);
            return;
        }
        observeServices();
        scan();
    }

    /* access modifiers changed from: protected */
    @Override // com.trello.rxlifecycle2.components.support.RxAppCompatActivity, android.support.v4.app.FragmentActivity
    public void onPause() {
        super.onPause();
        getDisposeBag().clear();
    }

    private final void observeServices() {
        Snackbar make = Snackbar.make(findViewById(16908290), (int) R.string.location_turned_off, -2);
        Intrinsics.checkExpressionValueIsNotNull(make, "Snackbar.make(findViewBy…ackbar.LENGTH_INDEFINITE)");
        make.getView().setBackgroundColor(AndroidExtensionsKt.getColorCompat(this, R.color.gold));
        make.setAction(17039370, new KioskActivity$observeServices$1(this));
        TagoService tagoService2 = this.tagoService;
        if (tagoService2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tagoService");
        }
        getDisposeBag().add(tagoService2.bleAndLocationStates().subscribe(new KioskActivity$observeServices$2(this, make)));
    }

    private final void scan() {
        TagoService tagoService2 = this.tagoService;
        if (tagoService2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tagoService");
        }
        getDisposeBag().add(tagoService2.ownDevices().subscribe(new KioskActivity$scan$1(this), KioskActivity$scan$2.INSTANCE));
    }

    @Override // com.liber8tech.tago.android.activity.BaseActivity, com.liber8tech.tago.android.activity.ToolbarElements
    @Nullable
    public CharSequence getToolbarTitle() {
        return getString(R.string.kiosk_mode);
    }

    @Override // com.liber8tech.tago.android.activity.BaseActivity, com.liber8tech.tago.android.activity.ToolbarElements
    @Nullable
    public Integer getToolbarLeftIcon() {
        return Integer.valueOf((int) R.drawable.button_back);
    }

    @Override // com.liber8tech.tago.android.activity.BaseActivity, com.liber8tech.tago.android.activity.ToolbarElements
    @NotNull
    public Function1<View, Unit> getToolbarLeftIconClick() {
        return new KioskActivity$getToolbarLeftIconClick$1(this);
    }

    @Override // com.liber8tech.tago.android.activity.ToolbarElements
    @NotNull
    public View getContentView() {
        return this.ui.createView(AnkoContext.Companion.create$default(AnkoContext.Companion, this, this, false, 4, null));
    }

    /* access modifiers changed from: private */
    public final void displayError(Throwable th) {
        Timber.e(th);
        this.ui.setDim(true);
        Snackbar make = Snackbar.make(findViewById(16908290), (int) R.string.something_went_wrong, -2);
        Intrinsics.checkExpressionValueIsNotNull(make, "Snackbar.make(findViewBy…ackbar.LENGTH_INDEFINITE)");
        make.getView().setBackgroundColor(AndroidExtensionsKt.getColorCompat(this, R.color.gold));
        make.setAction(17039370, new KioskActivity$displayError$1(this));
        make.show();
    }
}
