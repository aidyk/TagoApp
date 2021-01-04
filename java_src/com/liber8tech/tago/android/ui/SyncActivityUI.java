package com.liber8tech.tago.android.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.facebook.share.internal.MessengerShareContentUtility;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.liber8tech.tago.PicassoExtensionsKt;
import com.liber8tech.tago.R;
import com.liber8tech.tago.ViewExtensionsKt;
import com.liber8tech.tago.android.activity.SyncActivity;
import com.liber8tech.tago.android.view.CircleProgressBar;
import com.liber8tech.tago.android.view.TagoButton;
import com.liber8tech.tago.android.view.TagoRowItem;
import com.liber8tech.tago.util.extension.AndroidExtensionsKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
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

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0016\u0010&\u001a\u00020\f2\f\u0010'\u001a\b\u0012\u0004\u0012\u00020\u00020(H\u0016J\u000e\u0010)\u001a\u00020\r2\u0006\u0010*\u001a\u00020+J\u000e\u0010,\u001a\u00020\r2\u0006\u0010-\u001a\u00020.J\u000e\u0010/\u001a\u00020\r2\u0006\u00100\u001a\u00020.J\u000e\u00101\u001a\u00020\r2\u0006\u0010\u0018\u001a\u000202R\u001a\u0010\u0004\u001a\u00020\u0005X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR&\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000bX\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R$\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u0019@FX\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u000e\u0010\u001f\u001a\u00020\fX.¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X.¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020#X.¢\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020%X.¢\u0006\u0002\n\u0000¨\u00063"}, d2 = {"Lcom/liber8tech/tago/android/ui/SyncActivityUI;", "Lorg/jetbrains/anko/AnkoComponent;", "Lcom/liber8tech/tago/android/activity/SyncActivity;", "()V", "cancelButton", "Landroid/widget/Button;", "getCancelButton", "()Landroid/widget/Button;", "setCancelButton", "(Landroid/widget/Button;)V", "cancelOnClick", "Lkotlin/Function1;", "Landroid/view/View;", "", "getCancelOnClick", "()Lkotlin/jvm/functions/Function1;", "setCancelOnClick", "(Lkotlin/jvm/functions/Function1;)V", "detailText", "Landroid/widget/TextView;", "getDetailText", "()Landroid/widget/TextView;", "setDetailText", "(Landroid/widget/TextView;)V", "value", "", "dim", "getDim", "()Z", "setDim", "(Z)V", "dimView", MessengerShareContentUtility.MEDIA_IMAGE, "Landroid/widget/ImageView;", "progressBar", "Lcom/liber8tech/tago/android/view/CircleProgressBar;", "tago", "Lcom/liber8tech/tago/android/view/TagoRowItem;", "createView", "ui", "Lorg/jetbrains/anko/AnkoContext;", "setColor", TtmlNode.ATTR_TTS_COLOR, "Landroid/graphics/drawable/Drawable;", "setImage", "path", "", "setName", "name", "setProgressValue", "", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: SyncActivityUI.kt */
public final class SyncActivityUI implements AnkoComponent<SyncActivity> {
    @NotNull
    public Button cancelButton;
    @NotNull
    private Function1<? super View, Unit> cancelOnClick = SyncActivityUI$cancelOnClick$1.INSTANCE;
    @NotNull
    public TextView detailText;
    private boolean dim;
    private View dimView;
    private ImageView image;
    private CircleProgressBar progressBar;
    private TagoRowItem tago;

    @NotNull
    public final Button getCancelButton() {
        Button button = this.cancelButton;
        if (button == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cancelButton");
        }
        return button;
    }

    public final void setCancelButton(@NotNull Button button) {
        Intrinsics.checkParameterIsNotNull(button, "<set-?>");
        this.cancelButton = button;
    }

    @NotNull
    public final TextView getDetailText() {
        TextView textView = this.detailText;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("detailText");
        }
        return textView;
    }

    public final void setDetailText(@NotNull TextView textView) {
        Intrinsics.checkParameterIsNotNull(textView, "<set-?>");
        this.detailText = textView;
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

    /* JADX DEBUG: Type inference failed for r0v0. Raw type applied. Possible types: kotlin.jvm.functions.Function1<? super android.view.View, kotlin.Unit>, kotlin.jvm.functions.Function1<android.view.View, kotlin.Unit> */
    @NotNull
    public final Function1<View, Unit> getCancelOnClick() {
        return this.cancelOnClick;
    }

    public final void setCancelOnClick(@NotNull Function1<? super View, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(function1, "<set-?>");
        this.cancelOnClick = function1;
    }

    public final void setImage(@NotNull String str) {
        Intrinsics.checkParameterIsNotNull(str, "path");
        ImageView imageView = this.image;
        if (imageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException(MessengerShareContentUtility.MEDIA_IMAGE);
        }
        PicassoExtensionsKt.loadUrl(imageView, str).centerCrop().start();
    }

    public final void setName(@NotNull String str) {
        Intrinsics.checkParameterIsNotNull(str, "name");
        TagoRowItem tagoRowItem = this.tago;
        if (tagoRowItem == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tago");
        }
        tagoRowItem.setTitle(str);
    }

    public final void setColor(@NotNull Drawable drawable) {
        Intrinsics.checkParameterIsNotNull(drawable, TtmlNode.ATTR_TTS_COLOR);
        TagoRowItem tagoRowItem = this.tago;
        if (tagoRowItem == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tago");
        }
        tagoRowItem.setTagoDrawable(drawable);
    }

    public final void setProgressValue(double d) {
        CircleProgressBar circleProgressBar = this.progressBar;
        if (circleProgressBar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("progressBar");
        }
        circleProgressBar.setProgress((float) d);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [org.jetbrains.anko.AnkoContext<com.liber8tech.tago.android.activity.SyncActivity>] */
    @Override // org.jetbrains.anko.AnkoComponent
    @NotNull
    public View createView(@NotNull AnkoContext<? extends SyncActivity> ankoContext) {
        Intrinsics.checkParameterIsNotNull(ankoContext, "ui");
        AnkoContext<? extends SyncActivity> ankoContext2 = ankoContext;
        _FrameLayout invoke = C$$Anko$Factories$Sdk15ViewGroup.INSTANCE.getFRAME_LAYOUT().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(ankoContext2), 0));
        _FrameLayout _framelayout = invoke;
        _LinearLayout invoke2 = C$$Anko$Factories$CustomViews.INSTANCE.getVERTICAL_LAYOUT_FACTORY().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_framelayout), 0));
        _LinearLayout _linearlayout = invoke2;
        _LinearLayout _linearlayout2 = _linearlayout;
        View invoke3 = C$$Anko$Factories$Sdk15View.INSTANCE.getVIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0));
        AnkoInternals.INSTANCE.addView(_linearlayout2, invoke3);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        _LinearLayout _linearlayout3 = _linearlayout;
        Context context = _linearlayout3.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "context");
        layoutParams.width = DimensionsKt.dip(context, 0);
        layoutParams.height = 0;
        layoutParams.weight = 1.0f;
        invoke3.setLayoutParams(layoutParams);
        TextView invoke4 = C$$Anko$Factories$Sdk15View.INSTANCE.getTEXT_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0));
        TextView textView = invoke4;
        Context context2 = textView.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context2, "context");
        Sdk15PropertiesKt.setTextColor(textView, AndroidExtensionsKt.getColorCompat(context2, R.color.white));
        textView.setTextSize(18.0f);
        AnkoInternals.INSTANCE.addView(_linearlayout2, invoke4);
        TextView textView2 = textView;
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.gravity = 1;
        Context context3 = _linearlayout3.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context3, "context");
        layoutParams2.bottomMargin = DimensionsKt.dip(context3, 24);
        textView2.setLayoutParams(layoutParams2);
        this.detailText = textView2;
        View initiateView = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0), CircleProgressBar.class);
        CircleProgressBar circleProgressBar = (CircleProgressBar) initiateView;
        Context context4 = circleProgressBar.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context4, "context");
        circleProgressBar.setProgressColor(AndroidExtensionsKt.getColorCompat(context4, R.color.darkGreen));
        CircleProgressBar circleProgressBar2 = circleProgressBar;
        Context context5 = circleProgressBar2.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context5, "context");
        circleProgressBar.setProgressSize(DimensionsKt.dip(context5, 5));
        Resources resources = circleProgressBar.getResources();
        Intrinsics.checkExpressionValueIsNotNull(resources, "resources");
        circleProgressBar.setTextSizePx(TypedValue.applyDimension(2, 17.5f, resources.getDisplayMetrics()));
        AnkoInternals.INSTANCE.addView(_linearlayout2, initiateView);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        Context context6 = _linearlayout3.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context6, "context");
        layoutParams3.width = DimensionsKt.dip(context6, 70);
        Context context7 = _linearlayout3.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context7, "context");
        layoutParams3.height = DimensionsKt.dip(context7, 70);
        layoutParams3.gravity = 1;
        Context context8 = _linearlayout3.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context8, "context");
        layoutParams3.bottomMargin = DimensionsKt.dip(context8, 70);
        circleProgressBar2.setLayoutParams(layoutParams3);
        this.progressBar = circleProgressBar2;
        View initiateView2 = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0), TagoRowItem.class);
        TagoRowItem tagoRowItem = (TagoRowItem) initiateView2;
        tagoRowItem.showMoreIcon(false);
        AnkoInternals.INSTANCE.addView(_linearlayout2, initiateView2);
        TagoRowItem tagoRowItem2 = tagoRowItem;
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, -2);
        Context context9 = _linearlayout3.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context9, "context");
        layoutParams4.bottomMargin = DimensionsKt.dip(context9, 17);
        tagoRowItem2.setLayoutParams(layoutParams4);
        this.tago = tagoRowItem2;
        ImageView invoke5 = C$$Anko$Factories$Sdk15View.INSTANCE.getIMAGE_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0));
        ImageView imageView = invoke5;
        ImageView imageView2 = imageView;
        Context context10 = imageView2.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context10, "context");
        int dip = DimensionsKt.dip(context10, 20);
        Context context11 = imageView2.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context11, "context");
        imageView.setPadding(dip, 0, DimensionsKt.dip(context11, 20), 0);
        AnkoInternals.INSTANCE.addView(_linearlayout2, invoke5);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-2, -2);
        Context context12 = _linearlayout3.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context12, "context");
        layoutParams5.height = DimensionsKt.dip(context12, 62);
        layoutParams5.width = CustomLayoutPropertiesKt.getMatchParent();
        Context context13 = _linearlayout3.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context13, "context");
        layoutParams5.bottomMargin = DimensionsKt.dip(context13, 20);
        imageView2.setLayoutParams(layoutParams5);
        this.image = imageView2;
        View invoke6 = C$$Anko$Factories$Sdk15View.INSTANCE.getVIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0));
        AnkoInternals.INSTANCE.addView(_linearlayout2, invoke6);
        LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(-2, -2);
        Context context14 = _linearlayout3.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context14, "context");
        layoutParams6.width = DimensionsKt.dip(context14, 0);
        layoutParams6.height = 0;
        layoutParams6.weight = 1.0f;
        invoke6.setLayoutParams(layoutParams6);
        View initiateView3 = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0), TagoButton.class);
        TagoButton tagoButton = (TagoButton) initiateView3;
        tagoButton.setText(ankoContext.getCtx().getString(R.string.cancel));
        TagoButton tagoButton2 = tagoButton;
        tagoButton2.setOnClickListener(new SyncActivityUI$inlined$sam$i$android_view_View_OnClickListener$0(new SyncActivityUI$createView$$inlined$with$lambda$1(tagoButton, ankoContext, this)));
        AnkoInternals.INSTANCE.addView(_linearlayout2, initiateView3);
        LinearLayout.LayoutParams layoutParams7 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams7.height = CustomLayoutPropertiesKt.getWrapContent();
        layoutParams7.width = CustomLayoutPropertiesKt.getMatchParent();
        Context context15 = _linearlayout3.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context15, "context");
        layoutParams7.bottomMargin = DimensionsKt.dip(context15, 28);
        Context context16 = _linearlayout3.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context16, "context");
        layoutParams7.setMarginEnd(DimensionsKt.dip(context16, 20));
        Context context17 = _linearlayout3.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context17, "context");
        layoutParams7.setMarginStart(DimensionsKt.dip(context17, 20));
        tagoButton2.setLayoutParams(layoutParams7);
        this.cancelButton = tagoButton2;
        AnkoInternals.INSTANCE.addView(_framelayout, invoke2);
        View invoke7 = C$$Anko$Factories$Sdk15View.INSTANCE.getVIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_framelayout), 0));
        Sdk15PropertiesKt.setBackgroundColor(invoke7, Color.parseColor("#BE000000"));
        invoke7.setVisibility(8);
        ViewExtensionsKt.stealTouchEvents(invoke7);
        AnkoInternals.INSTANCE.addView(_framelayout, invoke7);
        FrameLayout.LayoutParams layoutParams8 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams8.width = CustomLayoutPropertiesKt.getMatchParent();
        layoutParams8.height = CustomLayoutPropertiesKt.getMatchParent();
        invoke7.setLayoutParams(layoutParams8);
        this.dimView = invoke7;
        AnkoInternals.INSTANCE.addView(ankoContext2, invoke);
        return invoke;
    }
}
