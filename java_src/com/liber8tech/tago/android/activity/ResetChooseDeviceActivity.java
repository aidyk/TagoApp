package com.liber8tech.tago.android.activity;

import android.content.Intent;
import android.os.Bundle;
import android.support.design.widget.Snackbar;
import android.view.View;
import android.widget.FrameLayout;
import com.facebook.share.internal.ShareConstants;
import com.liber8tech.tago.DIExtensionsKt;
import com.liber8tech.tago.R;
import com.liber8tech.tago.android.activity.Requests;
import com.liber8tech.tago.android.ui.ResetChooseDeviceActivityUI;
import com.liber8tech.tago.service.BluetoothService;
import com.liber8tech.tago.service.TagoService;
import com.liber8tech.tago.util.extension.AndroidExtensionsKt;
import java.util.HashMap;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.anko.AnkoContext;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\r\u0010\u0014\u001a\u00020\u0015H\u0016¢\u0006\u0002\u0010\u0016J\u0014\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u001a0\u0018H\u0016J\b\u0010\u001b\u001a\u00020\u001cH\u0016J\b\u0010\u001d\u001a\u00020\u001aH\u0002J\"\u0010\u001e\u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020\u00152\u0006\u0010 \u001a\u00020\u00152\b\u0010!\u001a\u0004\u0018\u00010\"H\u0014J\u0012\u0010#\u001a\u00020\u001a2\b\u0010$\u001a\u0004\u0018\u00010%H\u0014J\b\u0010&\u001a\u00020\u001aH\u0014J\b\u0010'\u001a\u00020\u001aH\u0014J\b\u0010(\u001a\u00020\u001aH\u0002R\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001e\u0010\n\u001a\u00020\u000b8\u0006@\u0006X.¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0011X\u0004¢\u0006\u0002\n\u0000¨\u0006)"}, d2 = {"Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;", "Lcom/liber8tech/tago/android/activity/BaseActivity;", "Lcom/liber8tech/tago/android/activity/Requests;", "()V", "bluetoothService", "Lcom/liber8tech/tago/service/BluetoothService;", "getBluetoothService", "()Lcom/liber8tech/tago/service/BluetoothService;", "setBluetoothService", "(Lcom/liber8tech/tago/service/BluetoothService;)V", "tagoService", "Lcom/liber8tech/tago/service/TagoService;", "getTagoService", "()Lcom/liber8tech/tago/service/TagoService;", "setTagoService", "(Lcom/liber8tech/tago/service/TagoService;)V", "ui", "Lcom/liber8tech/tago/android/ui/ResetChooseDeviceActivityUI;", "getContentView", "Landroid/widget/FrameLayout;", "getToolbarLeftIcon", "", "()Ljava/lang/Integer;", "getToolbarLeftIconClick", "Lkotlin/Function1;", "Landroid/view/View;", "", "getToolbarTitle", "", "observeServices", "onActivityResult", "requestCode", "resultCode", ShareConstants.WEB_DIALOG_PARAM_DATA, "Landroid/content/Intent;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "onResume", "scan", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: ResetChooseDeviceActivity.kt */
public final class ResetChooseDeviceActivity extends BaseActivity implements Requests {
    private HashMap _$_findViewCache;
    @Inject
    @NotNull
    public BluetoothService bluetoothService;
    @Inject
    @NotNull
    public TagoService tagoService;
    private final ResetChooseDeviceActivityUI ui = new ResetChooseDeviceActivityUI(new ResetChooseDeviceActivity$ui$1(this));

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
    @Override // android.support.v4.app.FragmentActivity
    public void onActivityResult(int i, int i2, @Nullable Intent intent) {
        if (i == 0 && i2 == -1) {
            setResult(-1);
            finish();
            overridePendingTransition(0, 0);
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.trello.rxlifecycle2.components.support.RxAppCompatActivity, android.support.v4.app.FragmentActivity
    public void onResume() {
        super.onResume();
        observeServices();
        scan();
    }

    private final void observeServices() {
        Snackbar make = Snackbar.make(findViewById(16908290), (int) R.string.location_turned_off, -2);
        Intrinsics.checkExpressionValueIsNotNull(make, "Snackbar.make(findViewBy…ackbar.LENGTH_INDEFINITE)");
        make.getView().setBackgroundColor(AndroidExtensionsKt.getColorCompat(this, R.color.gold));
        make.setAction(17039370, new ResetChooseDeviceActivity$observeServices$1(this));
        TagoService tagoService2 = this.tagoService;
        if (tagoService2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tagoService");
        }
        getDisposeBag().add(tagoService2.bleAndLocationStates().subscribe(new ResetChooseDeviceActivity$observeServices$2(this, make)));
    }

    private final void scan() {
        TagoService tagoService2 = this.tagoService;
        if (tagoService2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tagoService");
        }
        getDisposeBag().add(tagoService2.ownDevices().subscribe(new ResetChooseDeviceActivity$scan$1(this), ResetChooseDeviceActivity$scan$2.INSTANCE));
    }

    /* access modifiers changed from: protected */
    @Override // com.trello.rxlifecycle2.components.support.RxAppCompatActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity
    public void onDestroy() {
        super.onDestroy();
        getDisposeBag().clear();
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
        return new ResetChooseDeviceActivity$getToolbarLeftIconClick$1(this);
    }
}
