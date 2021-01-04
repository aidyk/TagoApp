package com.liber8tech.tago.android.activity;

import android.content.Intent;
import android.os.Bundle;
import android.support.design.widget.Snackbar;
import android.view.View;
import com.facebook.internal.NativeProtocol;
import com.liber8tech.tago.Constants;
import com.liber8tech.tago.DIExtensionsKt;
import com.liber8tech.tago.R;
import com.liber8tech.tago.analytics.AnalyticsService;
import com.liber8tech.tago.android.analytics.Screens;
import com.liber8tech.tago.android.ui.AddTagoUI;
import com.liber8tech.tago.android.ui.BluetoothDisabledUI;
import com.liber8tech.tago.service.ImageEditorService;
import com.liber8tech.tago.service.LocationService;
import com.liber8tech.tago.service.TagoService;
import com.liber8tech.tago.util.extension.AndroidExtensionsKt;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.util.HashMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.anko.AnkoContext;

public final class AddTagoActivity extends BaseActivity {
    public static final Companion Companion = new Companion(null);
    private static final int REQUEST_EXIT = 2;
    private HashMap _$_findViewCache;
    public AnalyticsService analytics;
    private View errorView;
    public ImageEditorService imageEditorService;
    private boolean isSignUpActivity;
    public LocationService locationService;
    private View mainView;
    public TagoService tagoService;
    private AddTagoUI ui = new AddTagoUI(new AddTagoActivity$ui$1(this));

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

    public static final /* synthetic */ View access$getErrorView$p(AddTagoActivity addTagoActivity) {
        View view = addTagoActivity.errorView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("errorView");
        }
        return view;
    }

    public static final /* synthetic */ View access$getMainView$p(AddTagoActivity addTagoActivity) {
        View view = addTagoActivity.mainView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mainView");
        }
        return view;
    }

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final LocationService getLocationService() {
        LocationService locationService2 = this.locationService;
        if (locationService2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("locationService");
        }
        return locationService2;
    }

    public final void setLocationService(LocationService locationService2) {
        Intrinsics.checkParameterIsNotNull(locationService2, "<set-?>");
        this.locationService = locationService2;
    }

    public final TagoService getTagoService() {
        TagoService tagoService2 = this.tagoService;
        if (tagoService2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tagoService");
        }
        return tagoService2;
    }

    public final void setTagoService(TagoService tagoService2) {
        Intrinsics.checkParameterIsNotNull(tagoService2, "<set-?>");
        this.tagoService = tagoService2;
    }

    public final ImageEditorService getImageEditorService() {
        ImageEditorService imageEditorService2 = this.imageEditorService;
        if (imageEditorService2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("imageEditorService");
        }
        return imageEditorService2;
    }

    public final void setImageEditorService(ImageEditorService imageEditorService2) {
        Intrinsics.checkParameterIsNotNull(imageEditorService2, "<set-?>");
        this.imageEditorService = imageEditorService2;
    }

    public final AnalyticsService getAnalytics() {
        AnalyticsService analyticsService = this.analytics;
        if (analyticsService == null) {
            Intrinsics.throwUninitializedPropertyAccessException(SettingsJsonConstants.ANALYTICS_KEY);
        }
        return analyticsService;
    }

    public final void setAnalytics(AnalyticsService analyticsService) {
        Intrinsics.checkParameterIsNotNull(analyticsService, "<set-?>");
        this.analytics = analyticsService;
    }

    private final void discoverTagos() {
        TagoService tagoService2 = this.tagoService;
        if (tagoService2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tagoService");
        }
        getDisposeBag().add(tagoService2.nearByDevices().subscribe(new AddTagoActivity$discoverTagos$1(this), AddTagoActivity$discoverTagos$2.INSTANCE));
    }

    private final void observeServices() {
        Snackbar make = Snackbar.make(findViewById(16908290), (int) R.string.location_turned_off, -2);
        Intrinsics.checkExpressionValueIsNotNull(make, "Snackbar.make(findViewBy…ackbar.LENGTH_INDEFINITE)");
        make.getView().setBackgroundColor(AndroidExtensionsKt.getColorCompat(this, R.color.gold));
        TagoService tagoService2 = this.tagoService;
        if (tagoService2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tagoService");
        }
        getDisposeBag().add(tagoService2.bleAndLocationStates().subscribe(new AddTagoActivity$observeServices$1(this)));
    }

    @Override // com.liber8tech.tago.android.activity.BaseActivity, android.support.v4.app.SupportActivity, com.trello.rxlifecycle2.components.support.RxAppCompatActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.isSignUpActivity = getIntent().getBooleanExtra(Constants.SignUpActivity, false);
        DIExtensionsKt.getComponent(this).inject(this);
        AnalyticsService analyticsService = this.analytics;
        if (analyticsService == null) {
            Intrinsics.throwUninitializedPropertyAccessException(SettingsJsonConstants.ANALYTICS_KEY);
        }
        analyticsService.trackScreen(Screens.addDevice);
    }

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
        discoverTagos();
    }

    @Override // com.trello.rxlifecycle2.components.support.RxAppCompatActivity, android.support.v4.app.FragmentActivity
    public void onPause() {
        super.onPause();
        getDisposeBag().clear();
    }

    @Override // com.liber8tech.tago.android.activity.ToolbarElements
    public View getContentView() {
        AddTagoActivity addTagoActivity = this;
        this.mainView = this.ui.createView(AnkoContext.Companion.create$default(AnkoContext.Companion, addTagoActivity, this, false, 4, null));
        this.errorView = new BluetoothDisabledUI().createView(AnkoContext.Companion.create$default(AnkoContext.Companion, addTagoActivity, this, false, 4, null));
        View view = this.mainView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mainView");
        }
        return view;
    }

    @Override // com.liber8tech.tago.android.activity.BaseActivity, com.liber8tech.tago.android.activity.ToolbarElements
    public String getToolbarTitle() {
        return getString(R.string.add_device);
    }

    @Override // com.liber8tech.tago.android.activity.BaseActivity, com.liber8tech.tago.android.activity.ToolbarElements
    public Integer getToolbarLeftIcon() {
        if (!getIntent().getBooleanExtra(Constants.SignUpActivity, false)) {
            return Integer.valueOf((int) R.drawable.button_back);
        }
        return null;
    }

    @Override // com.liber8tech.tago.android.activity.BaseActivity, com.liber8tech.tago.android.activity.ToolbarElements
    public Function1<View, Unit> getToolbarLeftIconClick() {
        return new AddTagoActivity$getToolbarLeftIconClick$1(this);
    }

    @Override // android.support.v4.app.FragmentActivity
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == REQUEST_EXIT && i2 == -1) {
            finish();
        }
    }

    @Override // android.support.v4.app.ActivityCompat.OnRequestPermissionsResultCallback, android.support.v4.app.FragmentActivity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        Intrinsics.checkParameterIsNotNull(strArr, NativeProtocol.RESULT_ARGS_PERMISSIONS);
        Intrinsics.checkParameterIsNotNull(iArr, "grantResults");
        if (i == 0) {
            if ((!(iArr.length == 0)) && iArr[0] == 0) {
                observeServices();
                discoverTagos();
            }
        }
    }
}
