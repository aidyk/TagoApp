package com.liber8tech.tago.android.ui;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.liber8tech.tago.R;
import com.liber8tech.tago.android.activity.AddTagoActivity;
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
import org.jetbrains.anko._LinearLayout;
import org.jetbrains.anko.internals.AnkoInternals;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"Lcom/liber8tech/tago/android/ui/BluetoothDisabledUI;", "Lorg/jetbrains/anko/AnkoComponent;", "Lcom/liber8tech/tago/android/activity/AddTagoActivity;", "()V", "createView", "Landroid/widget/LinearLayout;", "ui", "Lorg/jetbrains/anko/AnkoContext;", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: BluetoothDisabledUI.kt */
public final class BluetoothDisabledUI implements AnkoComponent<AddTagoActivity> {
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [org.jetbrains.anko.AnkoContext<com.liber8tech.tago.android.activity.AddTagoActivity>] */
    @Override // org.jetbrains.anko.AnkoComponent
    @NotNull
    public LinearLayout createView(@NotNull AnkoContext<? extends AddTagoActivity> ankoContext) {
        Intrinsics.checkParameterIsNotNull(ankoContext, "ui");
        AnkoContext<? extends AddTagoActivity> ankoContext2 = ankoContext;
        _LinearLayout invoke = C$$Anko$Factories$CustomViews.INSTANCE.getVERTICAL_LAYOUT_FACTORY().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(ankoContext2), 0));
        _LinearLayout _linearlayout = invoke;
        _linearlayout.setGravity(17);
        _LinearLayout _linearlayout2 = _linearlayout;
        _LinearLayout invoke2 = C$$Anko$Factories$Sdk15ViewGroup.INSTANCE.getLINEAR_LAYOUT().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0));
        _LinearLayout _linearlayout3 = invoke2;
        _linearlayout3.setGravity(16);
        _LinearLayout _linearlayout4 = _linearlayout3;
        ImageView invoke3 = C$$Anko$Factories$Sdk15View.INSTANCE.getIMAGE_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout4), 0));
        invoke3.setImageResource(R.drawable.icon_bluetooth);
        AnkoInternals.INSTANCE.addView(_linearlayout4, invoke3);
        View invoke4 = C$$Anko$Factories$Sdk15View.INSTANCE.getVIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout4), 0));
        AnkoInternals.INSTANCE.addView(_linearlayout4, invoke4);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.height = 0;
        Context context = _linearlayout3.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "context");
        layoutParams.width = DimensionsKt.dip(context, 32);
        invoke4.setLayoutParams(layoutParams);
        ImageView invoke5 = C$$Anko$Factories$Sdk15View.INSTANCE.getIMAGE_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout4), 0));
        invoke5.setImageResource(R.drawable.icon_location);
        AnkoInternals.INSTANCE.addView(_linearlayout4, invoke5);
        AnkoInternals.INSTANCE.addView(_linearlayout2, invoke2);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.width = CustomLayoutPropertiesKt.getWrapContent();
        layoutParams2.height = CustomLayoutPropertiesKt.getWrapContent();
        _LinearLayout _linearlayout5 = _linearlayout;
        Context context2 = _linearlayout5.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context2, "context");
        layoutParams2.setMargins(0, 0, 0, DimensionsKt.dip(context2, 64));
        invoke2.setLayoutParams(layoutParams2);
        TextView invoke6 = C$$Anko$Factories$Sdk15View.INSTANCE.getTEXT_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0));
        TextView textView = invoke6;
        textView.setText(textView.getContext().getString(R.string.bluetooth_off_title));
        textView.setTextSize(20.0f);
        Context context3 = textView.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context3, "context");
        Sdk15PropertiesKt.setTextColor(textView, AndroidExtensionsKt.getColorCompat(context3, R.color.white));
        TypefacesExtensionKt.regular(textView);
        AnkoInternals.INSTANCE.addView(_linearlayout2, invoke6);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(CustomLayoutPropertiesKt.getWrapContent(), CustomLayoutPropertiesKt.getWrapContent());
        Context context4 = _linearlayout5.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context4, "context");
        layoutParams3.setMargins(0, 0, 0, DimensionsKt.dip(context4, 16));
        textView.setLayoutParams(layoutParams3);
        TextView invoke7 = C$$Anko$Factories$Sdk15View.INSTANCE.getTEXT_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0));
        TextView textView2 = invoke7;
        textView2.setText(ankoContext.getCtx().getString(R.string.bluetooth_off_subtitle));
        textView2.setTextSize(12.0f);
        Context context5 = textView2.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context5, "context");
        Sdk15PropertiesKt.setTextColor(textView2, AndroidExtensionsKt.getColorCompat(context5, R.color.white));
        textView2.setGravity(1);
        TypefacesExtensionKt.regular(textView2);
        AnkoInternals.INSTANCE.addView(_linearlayout2, invoke7);
        textView2.setLayoutParams(new LinearLayout.LayoutParams(CustomLayoutPropertiesKt.getWrapContent(), CustomLayoutPropertiesKt.getWrapContent()));
        AnkoInternals.INSTANCE.addView(ankoContext2, invoke);
        _LinearLayout _linearlayout6 = invoke;
        _linearlayout6.setLayoutParams(new ViewGroup.LayoutParams(CustomLayoutPropertiesKt.getMatchParent(), CustomLayoutPropertiesKt.getMatchParent()));
        return _linearlayout6;
    }
}
