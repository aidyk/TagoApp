package com.liber8tech.tago.android.activity;

import android.graphics.Matrix;
import android.os.Bundle;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.view.View;
import android.widget.FrameLayout;
import com.facebook.internal.NativeProtocol;
import com.liber8tech.tago.DIExtensionsKt;
import com.liber8tech.tago.R;
import com.liber8tech.tago.analytics.AnalyticsService;
import com.liber8tech.tago.android.analytics.Screens;
import com.liber8tech.tago.android.camera.CameraRenderer;
import com.liber8tech.tago.service.ImageEditorService;
import com.liber8tech.tago.util.extension.ContextExtensionKt;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.util.HashMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.anko.AnkoContext;

public final class CameraActivity extends BaseActivity {
    public static final Companion Companion = new Companion(null);
    private static final int cameraPermissionRequest = 100;
    private HashMap _$_findViewCache;
    public AnalyticsService analytics;
    private CameraRenderer cameraRenderer;
    public ImageEditorService imageEditorService;
    private final CameraActivityUI ui = new CameraActivityUI();

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

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
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

    @Override // com.liber8tech.tago.android.activity.BaseActivity, android.support.v4.app.SupportActivity, com.trello.rxlifecycle2.components.support.RxAppCompatActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        DIExtensionsKt.getComponent(this).inject(this);
        AnalyticsService analyticsService = this.analytics;
        if (analyticsService == null) {
            Intrinsics.throwUninitializedPropertyAccessException(SettingsJsonConstants.ANALYTICS_KEY);
        }
        analyticsService.trackScreen(Screens.camera);
        startCamera();
        this.ui.getShutterButton().setOnClickListener(new CameraActivity$inlined$sam$i$android_view_View_OnClickListener$0(new CameraActivity$onCreate$1(this)));
    }

    @Override // com.trello.rxlifecycle2.components.support.RxAppCompatActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity
    public void onDestroy() {
        super.onDestroy();
        getDisposeBag().clear();
    }

    @Override // com.trello.rxlifecycle2.components.support.RxAppCompatActivity, android.support.v4.app.FragmentActivity
    public void onResume() {
        super.onResume();
        this.ui.getShutterButton().setEnabled(true);
        this.ui.getPreviewImageView().setVisibility(8);
    }

    @Override // android.support.v4.app.ActivityCompat.OnRequestPermissionsResultCallback, android.support.v4.app.FragmentActivity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        Intrinsics.checkParameterIsNotNull(strArr, NativeProtocol.RESULT_ARGS_PERMISSIONS);
        Intrinsics.checkParameterIsNotNull(iArr, "grantResults");
        if (i == cameraPermissionRequest) {
            if (!(!(iArr.length == 0)) || iArr[0] != 0) {
                View findViewById = findViewById(16908290);
                Intrinsics.checkExpressionValueIsNotNull(findViewById, "findViewById(id)");
                ContextExtensionKt.tintedSnack(this, (int) R.string.camera_permission_rationale, findViewById);
                return;
            }
            startCamera();
        }
    }

    @Override // com.liber8tech.tago.android.activity.ToolbarElements
    public FrameLayout getContentView() {
        return this.ui.createView(AnkoContext.Companion.create$default(AnkoContext.Companion, this, this, false, 4, null));
    }

    @Override // com.liber8tech.tago.android.activity.BaseActivity, com.liber8tech.tago.android.activity.ToolbarElements
    public String getToolbarTitle() {
        return getString(R.string.camera);
    }

    @Override // com.liber8tech.tago.android.activity.BaseActivity, com.liber8tech.tago.android.activity.ToolbarElements
    public Integer getToolbarLeftIcon() {
        return Integer.valueOf((int) R.drawable.button_back);
    }

    @Override // com.liber8tech.tago.android.activity.BaseActivity, com.liber8tech.tago.android.activity.ToolbarElements
    public Function1<View, Unit> getToolbarLeftIconClick() {
        return new CameraActivity$getToolbarLeftIconClick$1(this);
    }

    private final void startCamera() {
        if (ContextCompat.checkSelfPermission(this, "android.permission.CAMERA") == 0) {
            this.cameraRenderer = new CameraRenderer(this, new CameraActivity$startCamera$1(this));
            this.ui.getTextureView().setVisibility(0);
            this.ui.getTextureView().setSurfaceTextureListener(this.cameraRenderer);
            this.ui.getTextureView().addOnLayoutChangeListener(new CameraActivity$startCamera$2(this));
            return;
        }
        ActivityCompat.requestPermissions(this, new String[]{"android.permission.CAMERA"}, cameraPermissionRequest);
    }

    /* access modifiers changed from: public */
    private final void updateTextureViewSize(int i, int i2) {
        float width = (float) this.ui.getTextureView().getWidth();
        float height = (float) this.ui.getTextureView().getHeight();
        float f = ((((float) i2) / ((float) i)) * width) / height;
        float f2 = (float) 2;
        float f3 = width / f2;
        float f4 = height / f2;
        Matrix matrix = new Matrix();
        matrix.setScale(1.0f, f, f3, f4);
        this.ui.getPreviewImageView().setImageMatrix(matrix);
        this.ui.getTextureView().setTransform(matrix);
    }
}
