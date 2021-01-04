package com.liber8tech.tago.android.activity;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView;
import com.liber8tech.tago.Constants;
import com.liber8tech.tago.R;
import com.liber8tech.tago.android.view.TagoButton;
import com.liber8tech.tago.android.view.TagoButtonColor;
import com.liber8tech.tago.util.extension.AndroidExtensionsKt;
import com.liber8tech.tago.util.extension.TypefacesExtensionKt;
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
import org.jetbrains.anko._LinearLayout;
import org.jetbrains.anko._RelativeLayout;
import org.jetbrains.anko.internals.AnkoInternals;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0016\u0010%\u001a\u00020\u00112\f\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00020'H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX.¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u0017X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\u00020\u0011X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0013\"\u0004\b\u001e\u0010\u0015R\u001a\u0010\u001f\u001a\u00020 X.¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$¨\u0006("}, d2 = {"Lcom/liber8tech/tago/android/activity/ImageEditorActivityUI;", "Lorg/jetbrains/anko/AnkoComponent;", "Lcom/liber8tech/tago/android/activity/ImageEditorActivity;", "()V", "editorView", "Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;", "getEditorView", "()Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;", "setEditorView", "(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)V", "progressBar", "Landroid/widget/ProgressBar;", "getProgressBar", "()Landroid/widget/ProgressBar;", "setProgressBar", "(Landroid/widget/ProgressBar;)V", "rootLayout", "Landroid/widget/FrameLayout;", "getRootLayout", "()Landroid/widget/FrameLayout;", "setRootLayout", "(Landroid/widget/FrameLayout;)V", "targetAreaView", "Landroid/view/View;", "getTargetAreaView", "()Landroid/view/View;", "setTargetAreaView", "(Landroid/view/View;)V", "topLayout", "getTopLayout", "setTopLayout", "useButton", "Lcom/liber8tech/tago/android/view/TagoButton;", "getUseButton", "()Lcom/liber8tech/tago/android/view/TagoButton;", "setUseButton", "(Lcom/liber8tech/tago/android/view/TagoButton;)V", "createView", "ui", "Lorg/jetbrains/anko/AnkoContext;", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: ImageEditorActivity.kt */
public final class ImageEditorActivityUI implements AnkoComponent<ImageEditorActivity> {
    @NotNull
    public SubsamplingScaleImageView editorView;
    @NotNull
    public ProgressBar progressBar;
    @NotNull
    public FrameLayout rootLayout;
    @NotNull
    public View targetAreaView;
    @NotNull
    public FrameLayout topLayout;
    @NotNull
    public TagoButton useButton;

    @NotNull
    public final SubsamplingScaleImageView getEditorView() {
        SubsamplingScaleImageView subsamplingScaleImageView = this.editorView;
        if (subsamplingScaleImageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editorView");
        }
        return subsamplingScaleImageView;
    }

    public final void setEditorView(@NotNull SubsamplingScaleImageView subsamplingScaleImageView) {
        Intrinsics.checkParameterIsNotNull(subsamplingScaleImageView, "<set-?>");
        this.editorView = subsamplingScaleImageView;
    }

    @NotNull
    public final TagoButton getUseButton() {
        TagoButton tagoButton = this.useButton;
        if (tagoButton == null) {
            Intrinsics.throwUninitializedPropertyAccessException("useButton");
        }
        return tagoButton;
    }

    public final void setUseButton(@NotNull TagoButton tagoButton) {
        Intrinsics.checkParameterIsNotNull(tagoButton, "<set-?>");
        this.useButton = tagoButton;
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
    public final FrameLayout getTopLayout() {
        FrameLayout frameLayout = this.topLayout;
        if (frameLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("topLayout");
        }
        return frameLayout;
    }

    public final void setTopLayout(@NotNull FrameLayout frameLayout) {
        Intrinsics.checkParameterIsNotNull(frameLayout, "<set-?>");
        this.topLayout = frameLayout;
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

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [org.jetbrains.anko.AnkoContext<com.liber8tech.tago.android.activity.ImageEditorActivity>] */
    @Override // org.jetbrains.anko.AnkoComponent
    @NotNull
    public FrameLayout createView(@NotNull AnkoContext<? extends ImageEditorActivity> ankoContext) {
        Intrinsics.checkParameterIsNotNull(ankoContext, "ui");
        AnkoContext<? extends ImageEditorActivity> ankoContext2 = ankoContext;
        _FrameLayout invoke = C$$Anko$Factories$Sdk15ViewGroup.INSTANCE.getFRAME_LAYOUT().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(ankoContext2), 0));
        _FrameLayout _framelayout = invoke;
        _FrameLayout _framelayout2 = _framelayout;
        View initiateView = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_framelayout2), 0), SubsamplingScaleImageView.class);
        SubsamplingScaleImageView subsamplingScaleImageView = (SubsamplingScaleImageView) initiateView;
        subsamplingScaleImageView.setMinimumScaleType(2);
        AnkoInternals.INSTANCE.addView(_framelayout2, initiateView);
        this.editorView = subsamplingScaleImageView;
        _RelativeLayout invoke2 = C$$Anko$Factories$Sdk15ViewGroup.INSTANCE.getRELATIVE_LAYOUT().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_framelayout2), 0));
        _RelativeLayout _relativelayout = invoke2;
        View invoke3 = C$$Anko$Factories$Sdk15View.INSTANCE.getVIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_relativelayout), 0));
        invoke3.setId(View.generateViewId());
        AnkoInternals.INSTANCE.addView(_relativelayout, invoke3);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.width = CustomLayoutPropertiesKt.getMatchParent();
        layoutParams.height = (int) Constants.INSTANCE.getTagoCameraGapHeightPx();
        layoutParams.addRule(13);
        invoke3.setLayoutParams(layoutParams);
        this.targetAreaView = invoke3;
        _FrameLayout invoke4 = C$$Anko$Factories$Sdk15ViewGroup.INSTANCE.getFRAME_LAYOUT().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_relativelayout), 0));
        _FrameLayout _framelayout3 = invoke4;
        _framelayout3.setId(View.generateViewId());
        Context context = _framelayout3.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "context");
        Sdk15PropertiesKt.setBackgroundColor(_framelayout3, AndroidExtensionsKt.getColorCompat(context, R.color.cameraOverlay));
        _FrameLayout _framelayout4 = _framelayout3;
        ProgressBar invoke5 = C$$Anko$Factories$CustomViews.INSTANCE.getHORIZONTAL_PROGRESS_BAR_FACTORY().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_framelayout4), 0));
        ProgressBar progressBar2 = invoke5;
        progressBar2.setIndeterminate(true);
        ProgressBar progressBar3 = progressBar2;
        progressBar3.setVisibility(8);
        AnkoInternals.INSTANCE.addView(_framelayout4, invoke5);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams2.width = CustomLayoutPropertiesKt.getMatchParent();
        progressBar3.setLayoutParams(layoutParams2);
        this.progressBar = progressBar3;
        _LinearLayout invoke6 = C$$Anko$Factories$CustomViews.INSTANCE.getVERTICAL_LAYOUT_FACTORY().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_framelayout4), 0));
        _LinearLayout _linearlayout = invoke6;
        _LinearLayout _linearlayout2 = _linearlayout;
        ImageView invoke7 = C$$Anko$Factories$Sdk15View.INSTANCE.getIMAGE_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0));
        ImageView imageView = invoke7;
        Context context2 = imageView.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context2, "context");
        imageView.setImageDrawable(AndroidExtensionsKt.getDrawableCompat(context2, R.drawable.swipe_down));
        AnkoInternals.INSTANCE.addView(_linearlayout2, invoke7);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.gravity = 17;
        Context context3 = _linearlayout.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context3, "context");
        layoutParams3.bottomMargin = DimensionsKt.dip(context3, 18);
        imageView.setLayoutParams(layoutParams3);
        TextView invoke8 = C$$Anko$Factories$Sdk15View.INSTANCE.getTEXT_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0));
        TextView textView = invoke8;
        Sdk15PropertiesKt.setTextResource(textView, R.string.image_edit_tutorial);
        Context context4 = textView.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context4, "context");
        Sdk15PropertiesKt.setTextColor(textView, AndroidExtensionsKt.getColorCompat(context4, 17170443));
        TypefacesExtensionKt.regular(textView);
        textView.setTextSize(18.0f);
        textView.setAllCaps(true);
        textView.setGravity(17);
        AnkoInternals.INSTANCE.addView(_linearlayout2, invoke8);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams4.width = CustomLayoutPropertiesKt.getWrapContent();
        layoutParams4.height = CustomLayoutPropertiesKt.getWrapContent();
        textView.setLayoutParams(layoutParams4);
        AnkoInternals.INSTANCE.addView(_framelayout4, invoke6);
        FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams5.gravity = 17;
        invoke6.setLayoutParams(layoutParams5);
        AnkoInternals.INSTANCE.addView(_relativelayout, invoke4);
        _FrameLayout _framelayout5 = invoke4;
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams6.width = CustomLayoutPropertiesKt.getMatchParent();
        layoutParams6.height = CustomLayoutPropertiesKt.getWrapContent();
        layoutParams6.addRule(10);
        View view = this.targetAreaView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("targetAreaView");
        }
        layoutParams6.addRule(2, view.getId());
        _framelayout5.setLayoutParams(layoutParams6);
        this.topLayout = _framelayout5;
        View invoke9 = C$$Anko$Factories$Sdk15View.INSTANCE.getVIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_relativelayout), 0));
        Context context5 = invoke9.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context5, "context");
        Sdk15PropertiesKt.setBackgroundColor(invoke9, AndroidExtensionsKt.getColorCompat(context5, R.color.cameraOverlay));
        AnkoInternals.INSTANCE.addView(_relativelayout, invoke9);
        RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(CustomLayoutPropertiesKt.getMatchParent(), CustomLayoutPropertiesKt.getMatchParent());
        View view2 = this.targetAreaView;
        if (view2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("targetAreaView");
        }
        layoutParams7.addRule(3, view2.getId());
        layoutParams7.addRule(12);
        invoke9.setLayoutParams(layoutParams7);
        AnkoInternals.INSTANCE.addView(_framelayout2, invoke2);
        View initiateView2 = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_framelayout2), 0), TagoButton.class);
        TagoButton tagoButton = (TagoButton) initiateView2;
        tagoButton.setText(tagoButton.getContext().getString(R.string.camera_image_use));
        tagoButton.setColor(TagoButtonColor.GOLD);
        AnkoInternals.INSTANCE.addView(_framelayout2, initiateView2);
        TagoButton tagoButton2 = tagoButton;
        FrameLayout.LayoutParams layoutParams8 = new FrameLayout.LayoutParams(-2, -2);
        _FrameLayout _framelayout6 = _framelayout;
        Context context6 = _framelayout6.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context6, "context");
        layoutParams8.bottomMargin = DimensionsKt.dip(context6, 64);
        Context context7 = _framelayout6.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context7, "context");
        layoutParams8.setMarginStart(DimensionsKt.dip(context7, 20));
        Context context8 = _framelayout6.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context8, "context");
        layoutParams8.setMarginEnd(DimensionsKt.dip(context8, 20));
        layoutParams8.width = CustomLayoutPropertiesKt.getMatchParent();
        layoutParams8.gravity = 81;
        tagoButton2.setLayoutParams(layoutParams8);
        this.useButton = tagoButton2;
        AnkoInternals.INSTANCE.addView(ankoContext2, invoke);
        this.rootLayout = invoke;
        FrameLayout frameLayout = this.rootLayout;
        if (frameLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rootLayout");
        }
        return frameLayout;
    }
}
