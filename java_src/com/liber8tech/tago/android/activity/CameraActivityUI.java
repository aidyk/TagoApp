package com.liber8tech.tago.android.activity;

import android.content.Context;
import android.view.TextureView;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.liber8tech.tago.Constants;
import com.liber8tech.tago.R;
import com.liber8tech.tago.util.extension.AndroidExtensionsKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.anko.AnkoComponent;
import org.jetbrains.anko.AnkoContext;
import org.jetbrains.anko.C$$Anko$Factories$CustomViews;
import org.jetbrains.anko.C$$Anko$Factories$Sdk15View;
import org.jetbrains.anko.C$$Anko$Factories$Sdk15ViewGroup;
import org.jetbrains.anko.CustomLayoutPropertiesKt;
import org.jetbrains.anko.DimensionsKt;
import org.jetbrains.anko.Sdk15PropertiesKt;
import org.jetbrains.anko._FrameLayout;
import org.jetbrains.anko._RelativeLayout;
import org.jetbrains.anko.internals.AnkoInternals;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0016\u0010%\u001a\u00020\u00112\f\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00020'H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX.¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u0005X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0007\"\u0004\b\u0018\u0010\tR\u001a\u0010\u0019\u001a\u00020\u001aX.¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001a\u0010\u001f\u001a\u00020 X.¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$¨\u0006("}, d2 = {"Lcom/liber8tech/tago/android/activity/CameraActivityUI;", "Lorg/jetbrains/anko/AnkoComponent;", "Lcom/liber8tech/tago/android/activity/CameraActivity;", "()V", "previewImageView", "Landroid/widget/ImageView;", "getPreviewImageView", "()Landroid/widget/ImageView;", "setPreviewImageView", "(Landroid/widget/ImageView;)V", "progressBar", "Landroid/widget/ProgressBar;", "getProgressBar", "()Landroid/widget/ProgressBar;", "setProgressBar", "(Landroid/widget/ProgressBar;)V", "rootLayout", "Landroid/widget/FrameLayout;", "getRootLayout", "()Landroid/widget/FrameLayout;", "setRootLayout", "(Landroid/widget/FrameLayout;)V", "shutterButton", "getShutterButton", "setShutterButton", "targetAreaView", "Landroid/view/View;", "getTargetAreaView", "()Landroid/view/View;", "setTargetAreaView", "(Landroid/view/View;)V", "textureView", "Landroid/view/TextureView;", "getTextureView", "()Landroid/view/TextureView;", "setTextureView", "(Landroid/view/TextureView;)V", "createView", "ui", "Lorg/jetbrains/anko/AnkoContext;", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: CameraActivity.kt */
public final class CameraActivityUI implements AnkoComponent<CameraActivity> {
    @NotNull
    public ImageView previewImageView;
    @NotNull
    public ProgressBar progressBar;
    @NotNull
    public FrameLayout rootLayout;
    @NotNull
    public ImageView shutterButton;
    @NotNull
    public View targetAreaView;
    @NotNull
    public TextureView textureView;

    @NotNull
    public final TextureView getTextureView() {
        TextureView textureView2 = this.textureView;
        if (textureView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("textureView");
        }
        return textureView2;
    }

    public final void setTextureView(@NotNull TextureView textureView2) {
        Intrinsics.checkParameterIsNotNull(textureView2, "<set-?>");
        this.textureView = textureView2;
    }

    @NotNull
    public final ImageView getShutterButton() {
        ImageView imageView = this.shutterButton;
        if (imageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("shutterButton");
        }
        return imageView;
    }

    public final void setShutterButton(@NotNull ImageView imageView) {
        Intrinsics.checkParameterIsNotNull(imageView, "<set-?>");
        this.shutterButton = imageView;
    }

    @NotNull
    public final FrameLayout getRootLayout() {
        FrameLayout frameLayout = this.rootLayout;
        if (frameLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rootLayout");
        }
        return frameLayout;
    }

    public final void setRootLayout(@NotNull FrameLayout frameLayout) {
        Intrinsics.checkParameterIsNotNull(frameLayout, "<set-?>");
        this.rootLayout = frameLayout;
    }

    @NotNull
    public final ProgressBar getProgressBar() {
        ProgressBar progressBar2 = this.progressBar;
        if (progressBar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("progressBar");
        }
        return progressBar2;
    }

    public final void setProgressBar(@NotNull ProgressBar progressBar2) {
        Intrinsics.checkParameterIsNotNull(progressBar2, "<set-?>");
        this.progressBar = progressBar2;
    }

    @NotNull
    public final ImageView getPreviewImageView() {
        ImageView imageView = this.previewImageView;
        if (imageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewImageView");
        }
        return imageView;
    }

    public final void setPreviewImageView(@NotNull ImageView imageView) {
        Intrinsics.checkParameterIsNotNull(imageView, "<set-?>");
        this.previewImageView = imageView;
    }

    @NotNull
    public final View getTargetAreaView() {
        View view = this.targetAreaView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("targetAreaView");
        }
        return view;
    }

    public final void setTargetAreaView(@NotNull View view) {
        Intrinsics.checkParameterIsNotNull(view, "<set-?>");
        this.targetAreaView = view;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [org.jetbrains.anko.AnkoContext<com.liber8tech.tago.android.activity.CameraActivity>] */
    @Override // org.jetbrains.anko.AnkoComponent
    @NotNull
    public FrameLayout createView(@NotNull AnkoContext<? extends CameraActivity> ankoContext) {
        Intrinsics.checkParameterIsNotNull(ankoContext, "ui");
        AnkoContext<? extends CameraActivity> ankoContext2 = ankoContext;
        _FrameLayout invoke = C$$Anko$Factories$Sdk15ViewGroup.INSTANCE.getFRAME_LAYOUT().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(ankoContext2), 0));
        _FrameLayout _framelayout = invoke;
        _FrameLayout _framelayout2 = _framelayout;
        TextureView invoke2 = C$$Anko$Factories$Sdk15View.INSTANCE.getTEXTURE_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_framelayout2), 0));
        TextureView textureView2 = invoke2;
        textureView2.setVisibility(8);
        AnkoInternals.INSTANCE.addView(_framelayout2, invoke2);
        this.textureView = textureView2;
        ImageView invoke3 = C$$Anko$Factories$Sdk15View.INSTANCE.getIMAGE_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_framelayout2), 0));
        ImageView imageView = invoke3;
        imageView.setVisibility(8);
        imageView.setScaleType(ImageView.ScaleType.MATRIX);
        AnkoInternals.INSTANCE.addView(_framelayout2, invoke3);
        this.previewImageView = imageView;
        _RelativeLayout invoke4 = C$$Anko$Factories$Sdk15ViewGroup.INSTANCE.getRELATIVE_LAYOUT().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_framelayout2), 0));
        _RelativeLayout _relativelayout = invoke4;
        View invoke5 = C$$Anko$Factories$Sdk15View.INSTANCE.getVIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_relativelayout), 0));
        invoke5.setId(View.generateViewId());
        AnkoInternals.INSTANCE.addView(_relativelayout, invoke5);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.width = CustomLayoutPropertiesKt.getMatchParent();
        layoutParams.height = (int) Constants.INSTANCE.getTagoCameraGapHeightPx();
        layoutParams.addRule(13);
        invoke5.setLayoutParams(layoutParams);
        this.targetAreaView = invoke5;
        View invoke6 = C$$Anko$Factories$Sdk15View.INSTANCE.getVIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_relativelayout), 0));
        Context context = invoke6.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "context");
        Sdk15PropertiesKt.setBackgroundColor(invoke6, AndroidExtensionsKt.getColorCompat(context, R.color.cameraOverlay));
        AnkoInternals.INSTANCE.addView(_relativelayout, invoke6);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(CustomLayoutPropertiesKt.getMatchParent(), CustomLayoutPropertiesKt.getMatchParent());
        View view = this.targetAreaView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("targetAreaView");
        }
        layoutParams2.addRule(3, view.getId());
        layoutParams2.addRule(12);
        invoke6.setLayoutParams(layoutParams2);
        View invoke7 = C$$Anko$Factories$Sdk15View.INSTANCE.getVIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_relativelayout), 0));
        Context context2 = invoke7.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context2, "context");
        Sdk15PropertiesKt.setBackgroundColor(invoke7, AndroidExtensionsKt.getColorCompat(context2, R.color.cameraOverlay));
        AnkoInternals.INSTANCE.addView(_relativelayout, invoke7);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(CustomLayoutPropertiesKt.getMatchParent(), CustomLayoutPropertiesKt.getMatchParent());
        View view2 = this.targetAreaView;
        if (view2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("targetAreaView");
        }
        layoutParams3.addRule(2, view2.getId());
        layoutParams3.addRule(10);
        invoke7.setLayoutParams(layoutParams3);
        AnkoInternals.INSTANCE.addView(_framelayout2, invoke4);
        ImageView invoke8 = C$$Anko$Factories$Sdk15View.INSTANCE.getIMAGE_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_framelayout2), 0));
        ImageView imageView2 = invoke8;
        imageView2.setBackgroundResource(R.drawable.shutter_button);
        AnkoInternals.INSTANCE.addView(_framelayout2, invoke8);
        ImageView imageView3 = imageView2;
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-2, -2);
        _FrameLayout _framelayout3 = _framelayout;
        Context context3 = _framelayout3.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context3, "context");
        layoutParams4.width = DimensionsKt.dip(context3, 70);
        Context context4 = _framelayout3.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context4, "context");
        layoutParams4.height = DimensionsKt.dip(context4, 70);
        layoutParams4.gravity = 81;
        Context context5 = _framelayout3.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context5, "context");
        layoutParams4.bottomMargin = DimensionsKt.dip(context5, 48);
        imageView3.setLayoutParams(layoutParams4);
        this.shutterButton = imageView3;
        ProgressBar invoke9 = C$$Anko$Factories$CustomViews.INSTANCE.getHORIZONTAL_PROGRESS_BAR_FACTORY().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_framelayout2), 0));
        ProgressBar progressBar2 = invoke9;
        ProgressBar progressBar3 = progressBar2;
        progressBar3.setPadding(progressBar3.getPaddingLeft(), -20, progressBar3.getPaddingRight(), progressBar3.getPaddingBottom());
        progressBar2.setIndeterminate(true);
        progressBar3.setVisibility(8);
        AnkoInternals.INSTANCE.addView(_framelayout2, invoke9);
        FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams5.width = CustomLayoutPropertiesKt.getMatchParent();
        progressBar3.setLayoutParams(layoutParams5);
        this.progressBar = progressBar3;
        AnkoInternals.INSTANCE.addView(ankoContext2, invoke);
        this.rootLayout = invoke;
        FrameLayout frameLayout = this.rootLayout;
        if (frameLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rootLayout");
        }
        return frameLayout;
    }
}
