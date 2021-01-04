package com.liber8tech.tago.android.activity;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import com.davemorrissey.labs.subscaleview.ImageSource;
import com.liber8tech.tago.DIExtensionsKt;
import com.liber8tech.tago.R;
import com.liber8tech.tago.service.ImageEditorService;
import java.util.HashMap;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.anko.AnkoContext;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u000b\u001a\u00020\fH\u0016J\r\u0010\r\u001a\u00020\u000eH\u0016¢\u0006\u0002\u0010\u000fJ\u0014\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011H\u0016J\n\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u0012\u0010\u0016\u001a\u00020\u00132\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0014J\b\u0010\u0019\u001a\u00020\u0013H\u0014R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u000e\u0010\t\u001a\u00020\nX\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/liber8tech/tago/android/activity/ImageEditorActivity;", "Lcom/liber8tech/tago/android/activity/BaseActivity;", "()V", "imageEditorService", "Lcom/liber8tech/tago/service/ImageEditorService;", "getImageEditorService", "()Lcom/liber8tech/tago/service/ImageEditorService;", "setImageEditorService", "(Lcom/liber8tech/tago/service/ImageEditorService;)V", "ui", "Lcom/liber8tech/tago/android/activity/ImageEditorActivityUI;", "getContentView", "Landroid/widget/FrameLayout;", "getToolbarLeftIcon", "", "()Ljava/lang/Integer;", "getToolbarLeftIconClick", "Lkotlin/Function1;", "Landroid/view/View;", "", "getToolbarTitle", "", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: ImageEditorActivity.kt */
public final class ImageEditorActivity extends BaseActivity {
    private HashMap _$_findViewCache;
    @Inject
    @NotNull
    public ImageEditorService imageEditorService;
    private final ImageEditorActivityUI ui = new ImageEditorActivityUI();

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

    /* access modifiers changed from: protected */
    @Override // com.liber8tech.tago.android.activity.BaseActivity, android.support.v4.app.SupportActivity, com.trello.rxlifecycle2.components.support.RxAppCompatActivity, android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        DIExtensionsKt.getComponent(this).inject(this);
        ImageEditorService imageEditorService2 = this.imageEditorService;
        if (imageEditorService2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("imageEditorService");
        }
        Bitmap cameraImage = imageEditorService2.getCameraImage();
        if (cameraImage != null) {
            this.ui.getEditorView().setImage(ImageSource.bitmap(cameraImage));
        }
        this.ui.getUseButton().setOnClickListener(new ImageEditorActivity$inlined$sam$i$android_view_View_OnClickListener$0(new ImageEditorActivity$onCreate$2(this)));
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
    @Nullable
    public String getToolbarTitle() {
        return getString(R.string.camera);
    }

    @Override // com.liber8tech.tago.android.activity.BaseActivity, com.liber8tech.tago.android.activity.ToolbarElements
    @NotNull
    public Integer getToolbarLeftIcon() {
        return Integer.valueOf((int) R.drawable.button_back);
    }

    @Override // com.liber8tech.tago.android.activity.BaseActivity, com.liber8tech.tago.android.activity.ToolbarElements
    @NotNull
    public Function1<View, Unit> getToolbarLeftIconClick() {
        return new ImageEditorActivity$getToolbarLeftIconClick$1(this);
    }
}
