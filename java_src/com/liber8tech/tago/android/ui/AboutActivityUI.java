package com.liber8tech.tago.android.ui;

import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;
import com.liber8tech.tago.R;
import com.liber8tech.tago.android.activity.AboutActivity;
import com.liber8tech.tago.android.view.SettingsRowItem;
import com.liber8tech.tago.android.view.TextInputView;
import com.liber8tech.tago.util.extension.AndroidExtensionsKt;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.anko.AnkoComponent;
import org.jetbrains.anko.AnkoContext;
import org.jetbrains.anko.C$$Anko$Factories$CustomViews;
import org.jetbrains.anko.CustomLayoutPropertiesKt;
import org.jetbrains.anko.DimensionsKt;
import org.jetbrains.anko.Sdk15PropertiesKt;
import org.jetbrains.anko._LinearLayout;
import org.jetbrains.anko.internals.AnkoInternals;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"Lcom/liber8tech/tago/android/ui/AboutActivityUI;", "Lorg/jetbrains/anko/AnkoComponent;", "Lcom/liber8tech/tago/android/activity/AboutActivity;", "()V", "createView", "Landroid/widget/LinearLayout;", "ui", "Lorg/jetbrains/anko/AnkoContext;", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: AboutActivityUI.kt */
public final class AboutActivityUI implements AnkoComponent<AboutActivity> {
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [org.jetbrains.anko.AnkoContext<com.liber8tech.tago.android.activity.AboutActivity>] */
    @Override // org.jetbrains.anko.AnkoComponent
    @NotNull
    public LinearLayout createView(@NotNull AnkoContext<? extends AboutActivity> ankoContext) {
        Intrinsics.checkParameterIsNotNull(ankoContext, "ui");
        AnkoContext<? extends AboutActivity> ankoContext2 = ankoContext;
        _LinearLayout invoke = C$$Anko$Factories$CustomViews.INSTANCE.getVERTICAL_LAYOUT_FACTORY().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(ankoContext2), 0));
        _LinearLayout _linearlayout = invoke;
        _LinearLayout _linearlayout2 = _linearlayout;
        Context context = _linearlayout.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "context");
        Sdk15PropertiesKt.setBackgroundColor(_linearlayout2, AndroidExtensionsKt.getColorCompat(context, R.color.background));
        _LinearLayout _linearlayout3 = _linearlayout;
        View initiateView = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout3), 0), SettingsRowItem.class);
        SettingsRowItem settingsRowItem = (SettingsRowItem) initiateView;
        settingsRowItem.setText(ankoContext.getCtx().getString(R.string.terms_of_cond));
        Context context2 = settingsRowItem.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context2, "context");
        settingsRowItem.setRightIcon(AndroidExtensionsKt.tintedDrawable(context2, R.drawable.button_more, 17170443));
        SettingsRowItem settingsRowItem2 = settingsRowItem;
        settingsRowItem2.setOnClickListener(new AboutActivityUI$inlined$sam$i$android_view_View_OnClickListener$0(new AboutActivityUI$$special$$inlined$verticalLayout$lambda$1(ankoContext)));
        AnkoInternals.INSTANCE.addView(_linearlayout3, initiateView);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.width = CustomLayoutPropertiesKt.getMatchParent();
        Context context3 = _linearlayout2.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context3, "context");
        layoutParams.height = DimensionsKt.dip(context3, 45);
        settingsRowItem2.setLayoutParams(layoutParams);
        View initiateView2 = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout3), 0), SettingsRowItem.class);
        SettingsRowItem settingsRowItem3 = (SettingsRowItem) initiateView2;
        settingsRowItem3.setText(ankoContext.getCtx().getString(R.string.priv_pol));
        Context context4 = settingsRowItem3.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context4, "context");
        settingsRowItem3.setRightIcon(AndroidExtensionsKt.tintedDrawable(context4, R.drawable.button_more, 17170443));
        SettingsRowItem settingsRowItem4 = settingsRowItem3;
        settingsRowItem4.setOnClickListener(new AboutActivityUI$inlined$sam$i$android_view_View_OnClickListener$0(new AboutActivityUI$$special$$inlined$verticalLayout$lambda$2(ankoContext)));
        AnkoInternals.INSTANCE.addView(_linearlayout3, initiateView2);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.width = CustomLayoutPropertiesKt.getMatchParent();
        Context context5 = _linearlayout2.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context5, "context");
        layoutParams2.height = DimensionsKt.dip(context5, 45);
        Context context6 = _linearlayout2.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context6, "context");
        layoutParams2.topMargin = DimensionsKt.dip(context6, 1);
        settingsRowItem4.setLayoutParams(layoutParams2);
        View initiateView3 = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout3), 0), TextInputView.class);
        TextInputView textInputView = (TextInputView) initiateView3;
        String string = ankoContext.getCtx().getString(R.string.version);
        Intrinsics.checkExpressionValueIsNotNull(string, "ctx.getString(R.string.version)");
        if (string != null) {
            String upperCase = string.toUpperCase();
            Intrinsics.checkExpressionValueIsNotNull(upperCase, "(this as java.lang.String).toUpperCase()");
            textInputView.setHintText(upperCase);
            textInputView.setText(AndroidExtensionsKt.appVersionName(ankoContext.getCtx()) + " (" + AndroidExtensionsKt.appVersionCode(ankoContext.getCtx()) + ')');
            textInputView.setTextEnabled(false);
            AnkoInternals.INSTANCE.addView(_linearlayout3, initiateView3);
            AnkoInternals.INSTANCE.addView(ankoContext2, invoke);
            _LinearLayout _linearlayout4 = invoke;
            _linearlayout4.setLayoutParams(new LinearLayout.LayoutParams(CustomLayoutPropertiesKt.getMatchParent(), CustomLayoutPropertiesKt.getMatchParent()));
            return _linearlayout4;
        }
        throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
    }
}
