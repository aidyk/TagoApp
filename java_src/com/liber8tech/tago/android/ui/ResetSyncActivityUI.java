package com.liber8tech.tago.android.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.liber8tech.tago.R;
import com.liber8tech.tago.ViewExtensionsKt;
import com.liber8tech.tago.android.activity.ResetSyncActivity;
import com.liber8tech.tago.android.view.CircleProgressBar;
import com.liber8tech.tago.android.view.TagoView;
import com.liber8tech.tago.android.view.ViewDSLKt;
import com.liber8tech.tago.model.ArcKt;
import com.liber8tech.tago.util.extension.AndroidExtensionsKt;
import com.liber8tech.tago.util.extension.TypefacesExtensionKt;
import com.polidea.rxandroidble2.RxBleDevice;
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
import org.jetbrains.anko.internals.AnkoInternals;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0016\u0010\u0011\u001a\u00020\u00122\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00020\u0014H\u0016J\u000e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018J\u000e\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u0004\u001a\u00020\u001aR$\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0005@FX\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\fX.¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX.¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X.¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/liber8tech/tago/android/ui/ResetSyncActivityUI;", "Lorg/jetbrains/anko/AnkoComponent;", "Lcom/liber8tech/tago/android/activity/ResetSyncActivity;", "()V", "value", "", "dim", "getDim", "()Z", "setDim", "(Z)V", "dimView", "Landroid/view/View;", "progressBar", "Lcom/liber8tech/tago/android/view/CircleProgressBar;", "tagoView", "Landroid/widget/TextView;", "createView", "Landroid/widget/FrameLayout;", "ui", "Lorg/jetbrains/anko/AnkoContext;", "setDevice", "", "device", "Lcom/polidea/rxandroidble2/RxBleDevice;", "setProgress", "", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: ResetSyncActivityUI.kt */
public final class ResetSyncActivityUI implements AnkoComponent<ResetSyncActivity> {
    private boolean dim;
    private View dimView;
    private CircleProgressBar progressBar;
    private TextView tagoView;

    public final void setDevice(@NotNull RxBleDevice rxBleDevice) {
        Intrinsics.checkParameterIsNotNull(rxBleDevice, "device");
        TextView textView = this.tagoView;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tagoView");
        }
        textView.setText(rxBleDevice.getName());
        TextView textView2 = this.tagoView;
        if (textView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tagoView");
        }
        textView2.setCompoundDrawablesWithIntrinsicBounds(ArcKt.preview(rxBleDevice), (Drawable) null, (Drawable) null, (Drawable) null);
    }

    public final void setProgress(double d) {
        CircleProgressBar circleProgressBar = this.progressBar;
        if (circleProgressBar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("progressBar");
        }
        circleProgressBar.setProgress((float) d);
    }

    public final boolean getDim() {
        return this.dim;
    }

    public final void setDim(boolean z) {
        this.dim = z;
        View view = this.dimView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dimView");
        }
        view.setVisibility(z ? 0 : 8);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [org.jetbrains.anko.AnkoContext<com.liber8tech.tago.android.activity.ResetSyncActivity>] */
    @Override // org.jetbrains.anko.AnkoComponent
    @NotNull
    public FrameLayout createView(@NotNull AnkoContext<? extends ResetSyncActivity> ankoContext) {
        Intrinsics.checkParameterIsNotNull(ankoContext, "ui");
        AnkoContext<? extends ResetSyncActivity> ankoContext2 = ankoContext;
        _FrameLayout invoke = C$$Anko$Factories$Sdk15ViewGroup.INSTANCE.getFRAME_LAYOUT().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(ankoContext2), 0));
        _FrameLayout _framelayout = invoke;
        _LinearLayout invoke2 = C$$Anko$Factories$CustomViews.INSTANCE.getVERTICAL_LAYOUT_FACTORY().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_framelayout), 0));
        _LinearLayout _linearlayout = invoke2;
        Context context = _linearlayout.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "context");
        _linearlayout.setBackgroundColor(AndroidExtensionsKt.getColorCompat(context, R.color.black));
        _linearlayout.setWeightSum(3.0f);
        _linearlayout.setGravity(1);
        _LinearLayout _linearlayout2 = _linearlayout;
        TextView invoke3 = C$$Anko$Factories$Sdk15View.INSTANCE.getTEXT_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0));
        TextView textView = invoke3;
        Sdk15PropertiesKt.setTextResource(textView, R.string.reset_in_progress);
        textView.setTextSize(20.0f);
        Sdk15PropertiesKt.setTextColor(textView, -1);
        textView.setAllCaps(true);
        ViewExtensionsKt.gravityCenter(textView);
        TypefacesExtensionKt.regular(textView);
        AnkoInternals.INSTANCE.addView(_linearlayout2, invoke3);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.height = 0;
        layoutParams.weight = 1.0f;
        textView.setLayoutParams(layoutParams);
        _FrameLayout invoke4 = C$$Anko$Factories$Sdk15ViewGroup.INSTANCE.getFRAME_LAYOUT().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0));
        _FrameLayout _framelayout2 = invoke4;
        _FrameLayout _framelayout3 = _framelayout2;
        View initiateView = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_framelayout3), 0), CircleProgressBar.class);
        CircleProgressBar circleProgressBar = (CircleProgressBar) initiateView;
        Context context2 = circleProgressBar.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context2, "context");
        circleProgressBar.setProgressColor(AndroidExtensionsKt.getColorCompat(context2, R.color.darkGreen));
        CircleProgressBar circleProgressBar2 = circleProgressBar;
        Context context3 = circleProgressBar2.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context3, "context");
        circleProgressBar.setProgressSize(DimensionsKt.dip(context3, 5));
        Resources resources = circleProgressBar.getResources();
        Intrinsics.checkExpressionValueIsNotNull(resources, "resources");
        circleProgressBar.setTextSizePx(TypedValue.applyDimension(2, 17.5f, resources.getDisplayMetrics()));
        AnkoInternals.INSTANCE.addView(_framelayout3, initiateView);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
        _FrameLayout _framelayout4 = _framelayout2;
        Context context4 = _framelayout4.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context4, "context");
        layoutParams2.width = DimensionsKt.dip(context4, 70);
        Context context5 = _framelayout4.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context5, "context");
        layoutParams2.height = DimensionsKt.dip(context5, 70);
        layoutParams2.gravity = 17;
        circleProgressBar2.setLayoutParams(layoutParams2);
        this.progressBar = circleProgressBar2;
        AnkoInternals.INSTANCE.addView(_linearlayout2, invoke4);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.width = CustomLayoutPropertiesKt.getMatchParent();
        layoutParams3.height = 0;
        layoutParams3.weight = 1.0f;
        invoke4.setLayoutParams(layoutParams3);
        _FrameLayout invoke5 = C$$Anko$Factories$Sdk15ViewGroup.INSTANCE.getFRAME_LAYOUT().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0));
        _FrameLayout _framelayout5 = invoke5;
        TagoView tagoView$default = ViewDSLKt.tagoView$default(_framelayout5, 0, 1, null);
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams4.width = CustomLayoutPropertiesKt.getMatchParent();
        layoutParams4.height = CustomLayoutPropertiesKt.getWrapContent();
        layoutParams4.gravity = 16;
        _FrameLayout _framelayout6 = _framelayout5;
        Context context6 = _framelayout6.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context6, "context");
        int dip = DimensionsKt.dip(context6, 32);
        Context context7 = _framelayout6.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context7, "context");
        layoutParams4.setMargins(dip, 0, DimensionsKt.dip(context7, 32), 0);
        tagoView$default.setLayoutParams(layoutParams4);
        this.tagoView = tagoView$default;
        AnkoInternals.INSTANCE.addView(_linearlayout2, invoke5);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams5.width = CustomLayoutPropertiesKt.getMatchParent();
        layoutParams5.height = 0;
        layoutParams5.weight = 1.0f;
        invoke5.setLayoutParams(layoutParams5);
        AnkoInternals.INSTANCE.addView(_framelayout, invoke2);
        invoke2.setLayoutParams(new FrameLayout.LayoutParams(CustomLayoutPropertiesKt.getMatchParent(), CustomLayoutPropertiesKt.getMatchParent()));
        View invoke6 = C$$Anko$Factories$Sdk15View.INSTANCE.getVIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_framelayout), 0));
        Sdk15PropertiesKt.setBackgroundColor(invoke6, Color.parseColor("#BE000000"));
        invoke6.setVisibility(8);
        ViewExtensionsKt.stealTouchEvents(invoke6);
        AnkoInternals.INSTANCE.addView(_framelayout, invoke6);
        FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams6.width = CustomLayoutPropertiesKt.getMatchParent();
        layoutParams6.height = CustomLayoutPropertiesKt.getMatchParent();
        invoke6.setLayoutParams(layoutParams6);
        this.dimView = invoke6;
        AnkoInternals.INSTANCE.addView(ankoContext2, invoke);
        _FrameLayout _framelayout7 = invoke;
        _framelayout7.setLayoutParams(new ViewGroup.LayoutParams(CustomLayoutPropertiesKt.getMatchParent(), CustomLayoutPropertiesKt.getMatchParent()));
        return _framelayout7;
    }
}
