package com.liber8tech.tago.android.ui;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.liber8tech.tago.R;
import com.liber8tech.tago.ViewExtensionsKt;
import com.liber8tech.tago.android.activity.ResetActivity;
import com.liber8tech.tago.android.view.TagoButton;
import com.liber8tech.tago.android.view.TagoButtonColor;
import com.liber8tech.tago.util.extension.AndroidExtensionsKt;
import com.liber8tech.tago.util.extension.TypefacesExtensionKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.anko.AnkoComponent;
import org.jetbrains.anko.AnkoContext;
import org.jetbrains.anko.C$$Anko$Factories$CustomViews;
import org.jetbrains.anko.C$$Anko$Factories$Sdk15View;
import org.jetbrains.anko.CustomLayoutPropertiesKt;
import org.jetbrains.anko.DimensionsKt;
import org.jetbrains.anko.Sdk15PropertiesKt;
import org.jetbrains.anko._LinearLayout;
import org.jetbrains.anko.internals.AnkoInternals;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0016\u0010\f\u001a\u00020\r2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00020\u000fH\u0016R&\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006\u0010"}, d2 = {"Lcom/liber8tech/tago/android/ui/ResetActivityUI;", "Lorg/jetbrains/anko/AnkoComponent;", "Lcom/liber8tech/tago/android/activity/ResetActivity;", "()V", "nextOnClick", "Lkotlin/Function1;", "Landroid/view/View;", "", "getNextOnClick", "()Lkotlin/jvm/functions/Function1;", "setNextOnClick", "(Lkotlin/jvm/functions/Function1;)V", "createView", "Landroid/widget/LinearLayout;", "ui", "Lorg/jetbrains/anko/AnkoContext;", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: ResetActivityUI.kt */
public final class ResetActivityUI implements AnkoComponent<ResetActivity> {
    @NotNull
    private Function1<? super View, Unit> nextOnClick = ResetActivityUI$nextOnClick$1.INSTANCE;

    /* JADX DEBUG: Type inference failed for r0v0. Raw type applied. Possible types: kotlin.jvm.functions.Function1<? super android.view.View, kotlin.Unit>, kotlin.jvm.functions.Function1<android.view.View, kotlin.Unit> */
    @NotNull
    public final Function1<View, Unit> getNextOnClick() {
        return this.nextOnClick;
    }

    public final void setNextOnClick(@NotNull Function1<? super View, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(function1, "<set-?>");
        this.nextOnClick = function1;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [org.jetbrains.anko.AnkoContext<com.liber8tech.tago.android.activity.ResetActivity>] */
    @Override // org.jetbrains.anko.AnkoComponent
    @NotNull
    public LinearLayout createView(@NotNull AnkoContext<? extends ResetActivity> ankoContext) {
        Intrinsics.checkParameterIsNotNull(ankoContext, "ui");
        AnkoContext<? extends ResetActivity> ankoContext2 = ankoContext;
        _LinearLayout invoke = C$$Anko$Factories$CustomViews.INSTANCE.getVERTICAL_LAYOUT_FACTORY().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(ankoContext2), 0));
        _LinearLayout _linearlayout = invoke;
        Context context = _linearlayout.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "context");
        _linearlayout.setBackgroundColor(AndroidExtensionsKt.getColorCompat(context, R.color.black));
        _LinearLayout _linearlayout2 = _linearlayout;
        _LinearLayout invoke2 = C$$Anko$Factories$CustomViews.INSTANCE.getVERTICAL_LAYOUT_FACTORY().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0));
        _LinearLayout _linearlayout3 = invoke2;
        _linearlayout3.setGravity(17);
        _LinearLayout _linearlayout4 = _linearlayout3;
        ImageView invoke3 = C$$Anko$Factories$Sdk15View.INSTANCE.getIMAGE_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout4), 0));
        ImageView imageView = invoke3;
        imageView.setImageResource(R.drawable.icon_warning);
        AnkoInternals.INSTANCE.addView(_linearlayout4, invoke3);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        _LinearLayout _linearlayout5 = _linearlayout3;
        Context context2 = _linearlayout5.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context2, "context");
        layoutParams.width = DimensionsKt.dip(context2, 120);
        Context context3 = _linearlayout5.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context3, "context");
        layoutParams.height = DimensionsKt.dip(context3, 120);
        imageView.setLayoutParams(layoutParams);
        TextView invoke4 = C$$Anko$Factories$Sdk15View.INSTANCE.getTEXT_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout4), 0));
        TextView textView = invoke4;
        textView.setText(ankoContext.getCtx().getString(R.string.reset_title));
        Context context4 = textView.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context4, "context");
        Sdk15PropertiesKt.setTextColor(textView, AndroidExtensionsKt.getColorCompat(context4, R.color.white));
        textView.setTextSize(20.0f);
        ViewExtensionsKt.gravityCenterHorizontal(textView);
        TypefacesExtensionKt.regular(textView);
        AnkoInternals.INSTANCE.addView(_linearlayout4, invoke4);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        Context context5 = _linearlayout5.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context5, "context");
        int dip = DimensionsKt.dip(context5, 16);
        Context context6 = _linearlayout5.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context6, "context");
        int dip2 = DimensionsKt.dip(context6, 16);
        Context context7 = _linearlayout5.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context7, "context");
        layoutParams2.setMargins(dip, dip2, DimensionsKt.dip(context7, 16), 0);
        textView.setLayoutParams(layoutParams2);
        TextView invoke5 = C$$Anko$Factories$Sdk15View.INSTANCE.getTEXT_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout4), 0));
        TextView textView2 = invoke5;
        textView2.setText(ankoContext.getCtx().getString(R.string.reset_subtitle));
        Context context8 = textView2.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context8, "context");
        Sdk15PropertiesKt.setTextColor(textView2, AndroidExtensionsKt.getColorCompat(context8, R.color.white));
        textView2.setTextSize(12.0f);
        ViewExtensionsKt.gravityCenterHorizontal(textView2);
        TypefacesExtensionKt.regular(textView2);
        AnkoInternals.INSTANCE.addView(_linearlayout4, invoke5);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        Context context9 = _linearlayout5.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context9, "context");
        int dip3 = DimensionsKt.dip(context9, 16);
        Context context10 = _linearlayout5.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context10, "context");
        int dip4 = DimensionsKt.dip(context10, 32);
        Context context11 = _linearlayout5.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context11, "context");
        layoutParams3.setMargins(dip3, dip4, DimensionsKt.dip(context11, 16), 0);
        textView2.setLayoutParams(layoutParams3);
        AnkoInternals.INSTANCE.addView(_linearlayout2, invoke2);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams4.width = CustomLayoutPropertiesKt.getMatchParent();
        layoutParams4.height = 0;
        layoutParams4.weight = 1.0f;
        invoke2.setLayoutParams(layoutParams4);
        View initiateView = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0), TagoButton.class);
        TagoButton tagoButton = (TagoButton) initiateView;
        tagoButton.setText(ankoContext.getCtx().getString(R.string.next));
        tagoButton.setColor(TagoButtonColor.GOLD);
        TagoButton tagoButton2 = tagoButton;
        tagoButton2.setOnClickListener(new ResetActivityUI$inlined$sam$i$android_view_View_OnClickListener$0(new ResetActivityUI$createView$$inlined$with$lambda$1(tagoButton, ankoContext, this)));
        AnkoInternals.INSTANCE.addView(_linearlayout2, initiateView);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams5.width = CustomLayoutPropertiesKt.getMatchParent();
        _LinearLayout _linearlayout6 = _linearlayout;
        Context context12 = _linearlayout6.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context12, "context");
        int dip5 = DimensionsKt.dip(context12, 16);
        Context context13 = _linearlayout6.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context13, "context");
        int dip6 = DimensionsKt.dip(context13, 16);
        Context context14 = _linearlayout6.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context14, "context");
        layoutParams5.setMargins(dip5, 0, dip6, DimensionsKt.dip(context14, 32));
        tagoButton2.setLayoutParams(layoutParams5);
        AnkoInternals.INSTANCE.addView(ankoContext2, invoke);
        _LinearLayout _linearlayout7 = invoke;
        _linearlayout7.setLayoutParams(new ViewGroup.LayoutParams(CustomLayoutPropertiesKt.getMatchParent(), CustomLayoutPropertiesKt.getMatchParent()));
        return _linearlayout7;
    }
}
