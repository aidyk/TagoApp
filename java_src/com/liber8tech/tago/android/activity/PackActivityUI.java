package com.liber8tech.tago.android.activity;

import android.content.Context;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.liber8tech.tago.R;
import com.liber8tech.tago.android.view.TagoButton;
import com.liber8tech.tago.android.view.TagoButtonColor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.anko.AnkoComponent;
import org.jetbrains.anko.AnkoContext;
import org.jetbrains.anko.C$$Anko$Factories$Sdk15View;
import org.jetbrains.anko.C$$Anko$Factories$Sdk15ViewGroup;
import org.jetbrains.anko.CustomLayoutPropertiesKt;
import org.jetbrains.anko.DimensionsKt;
import org.jetbrains.anko._FrameLayout;
import org.jetbrains.anko._ScrollView;
import org.jetbrains.anko.internals.AnkoInternals;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0016\u0010\u0018\u001a\u00020\u00192\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00020\u001bH\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX.¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR&\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011X\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006\u001c"}, d2 = {"Lcom/liber8tech/tago/android/activity/PackActivityUI;", "Lorg/jetbrains/anko/AnkoComponent;", "Lcom/liber8tech/tago/android/activity/PackActivity;", "()V", "patternsImage", "Landroid/widget/ImageView;", "getPatternsImage", "()Landroid/widget/ImageView;", "setPatternsImage", "(Landroid/widget/ImageView;)V", "purchaseButton", "Landroid/widget/Button;", "getPurchaseButton", "()Landroid/widget/Button;", "setPurchaseButton", "(Landroid/widget/Button;)V", "purchaseButtonClick", "Lkotlin/Function1;", "Landroid/view/View;", "", "getPurchaseButtonClick", "()Lkotlin/jvm/functions/Function1;", "setPurchaseButtonClick", "(Lkotlin/jvm/functions/Function1;)V", "createView", "Landroid/widget/FrameLayout;", "ui", "Lorg/jetbrains/anko/AnkoContext;", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: PackActivity.kt */
public final class PackActivityUI implements AnkoComponent<PackActivity> {
    @NotNull
    public ImageView patternsImage;
    @NotNull
    public Button purchaseButton;
    @NotNull
    private Function1<? super View, Unit> purchaseButtonClick = PackActivityUI$purchaseButtonClick$1.INSTANCE;

    @NotNull
    public final ImageView getPatternsImage() {
        ImageView imageView = this.patternsImage;
        if (imageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("patternsImage");
        }
        return imageView;
    }

    public final void setPatternsImage(@NotNull ImageView imageView) {
        Intrinsics.checkParameterIsNotNull(imageView, "<set-?>");
        this.patternsImage = imageView;
    }

    @NotNull
    public final Button getPurchaseButton() {
        Button button = this.purchaseButton;
        if (button == null) {
            Intrinsics.throwUninitializedPropertyAccessException("purchaseButton");
        }
        return button;
    }

    public final void setPurchaseButton(@NotNull Button button) {
        Intrinsics.checkParameterIsNotNull(button, "<set-?>");
        this.purchaseButton = button;
    }

    /* JADX DEBUG: Type inference failed for r0v0. Raw type applied. Possible types: kotlin.jvm.functions.Function1<? super android.view.View, kotlin.Unit>, kotlin.jvm.functions.Function1<android.view.View, kotlin.Unit> */
    @NotNull
    public final Function1<View, Unit> getPurchaseButtonClick() {
        return this.purchaseButtonClick;
    }

    public final void setPurchaseButtonClick(@NotNull Function1<? super View, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(function1, "<set-?>");
        this.purchaseButtonClick = function1;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [org.jetbrains.anko.AnkoContext<com.liber8tech.tago.android.activity.PackActivity>] */
    @Override // org.jetbrains.anko.AnkoComponent
    @NotNull
    public FrameLayout createView(@NotNull AnkoContext<? extends PackActivity> ankoContext) {
        Intrinsics.checkParameterIsNotNull(ankoContext, "ui");
        AnkoContext<? extends PackActivity> ankoContext2 = ankoContext;
        _FrameLayout invoke = C$$Anko$Factories$Sdk15ViewGroup.INSTANCE.getFRAME_LAYOUT().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(ankoContext2), 0));
        _FrameLayout _framelayout = invoke;
        _FrameLayout _framelayout2 = _framelayout;
        _ScrollView invoke2 = C$$Anko$Factories$Sdk15ViewGroup.INSTANCE.getSCROLL_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_framelayout2), 0));
        _ScrollView _scrollview = invoke2;
        _scrollview.setFillViewport(true);
        _ScrollView _scrollview2 = _scrollview;
        ImageView invoke3 = C$$Anko$Factories$Sdk15View.INSTANCE.getIMAGE_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_scrollview2), 0));
        AnkoInternals.INSTANCE.addView(_scrollview2, invoke3);
        ImageView imageView = invoke3;
        imageView.setLayoutParams(new FrameLayout.LayoutParams(1360, 5890));
        this.patternsImage = imageView;
        ImageView imageView2 = this.patternsImage;
        if (imageView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("patternsImage");
        }
        imageView2.setScaleType(ImageView.ScaleType.FIT_XY);
        AnkoInternals.INSTANCE.addView(_framelayout2, invoke2);
        invoke2.setLayoutParams(new FrameLayout.LayoutParams(CustomLayoutPropertiesKt.getMatchParent(), CustomLayoutPropertiesKt.getMatchParent()));
        View initiateView = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_framelayout2), 0), TagoButton.class);
        TagoButton tagoButton = (TagoButton) initiateView;
        tagoButton.setColor(TagoButtonColor.GREEN);
        tagoButton.setText(tagoButton.getContext().getString(R.string.free));
        TagoButton tagoButton2 = tagoButton;
        tagoButton2.setOnClickListener(new PackActivityUI$inlined$sam$i$android_view_View_OnClickListener$0(new PackActivityUI$createView$$inlined$with$lambda$1(tagoButton, this)));
        AnkoInternals.INSTANCE.addView(_framelayout2, initiateView);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        _FrameLayout _framelayout3 = _framelayout;
        Context context = _framelayout3.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "context");
        layoutParams.bottomMargin = DimensionsKt.dip(context, 64);
        Context context2 = _framelayout3.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context2, "context");
        layoutParams.setMarginStart(DimensionsKt.dip(context2, 20));
        Context context3 = _framelayout3.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context3, "context");
        layoutParams.setMarginEnd(DimensionsKt.dip(context3, 20));
        layoutParams.width = CustomLayoutPropertiesKt.getMatchParent();
        layoutParams.gravity = 80;
        tagoButton2.setLayoutParams(layoutParams);
        this.purchaseButton = tagoButton2;
        AnkoInternals.INSTANCE.addView(ankoContext2, invoke);
        _FrameLayout _framelayout4 = invoke;
        _framelayout4.setLayoutParams(new FrameLayout.LayoutParams(CustomLayoutPropertiesKt.getMatchParent(), CustomLayoutPropertiesKt.getMatchParent()));
        return _framelayout4;
    }
}
