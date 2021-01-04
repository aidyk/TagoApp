package com.liber8tech.tago.android.ui;

import android.content.Context;
import android.support.constraint.ConstraintLayout;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.Switch;
import android.widget.TextView;
import com.liber8tech.tago.R;
import com.liber8tech.tago.android.activity.SettingsActivity;
import com.liber8tech.tago.android.drawable.DevicePreview;
import com.liber8tech.tago.android.view.SettingsRowItem;
import com.liber8tech.tago.android.view.TagoRowItem;
import com.liber8tech.tago.model.TagoDevice;
import com.liber8tech.tago.util.extension.AndroidExtensionsKt;
import com.liber8tech.tago.util.extension.TypefacesExtensionKt;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
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
import org.jetbrains.anko._RelativeLayout;
import org.jetbrains.anko._ScrollView;
import org.jetbrains.anko.internals.AnkoInternals;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0016\u0010,\u001a\u00020\u00072\u0006\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u000200J\u0006\u00101\u001a\u00020\u0007J\u0016\u00102\u001a\u0002032\f\u00104\u001a\b\u0012\u0004\u0012\u00020\u000205H\u0016J\u000e\u00106\u001a\u00020\u00072\u0006\u00107\u001a\u00020\u000fR&\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR.\u0010\f\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00070\rX\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R&\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\t\"\u0004\b\u0016\u0010\u000bR\u000e\u0010\u0017\u001a\u00020\u0018X.¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0006X.¢\u0006\u0002\n\u0000R&\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\t\"\u0004\b\u001c\u0010\u000bR&\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\t\"\u0004\b\u001f\u0010\u000bR\u000e\u0010 \u001a\u00020\u0018X.¢\u0006\u0002\n\u0000R&\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\t\"\u0004\b#\u0010\u000bR&\u0010$\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\t\"\u0004\b&\u0010\u000bR&\u0010'\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\t\"\u0004\b)\u0010\u000bR\u000e\u0010*\u001a\u00020+X.¢\u0006\u0002\n\u0000¨\u00068"}, d2 = {"Lcom/liber8tech/tago/android/ui/SettingsActivityUI;", "Lorg/jetbrains/anko/AnkoComponent;", "Lcom/liber8tech/tago/android/activity/SettingsActivity;", "()V", "addTagoOnClick", "Lkotlin/Function1;", "Landroid/view/View;", "", "getAddTagoOnClick", "()Lkotlin/jvm/functions/Function1;", "setAddTagoOnClick", "(Lkotlin/jvm/functions/Function1;)V", "autoUploadOnClick", "Lkotlin/Function2;", "Landroid/widget/CompoundButton;", "", "getAutoUploadOnClick", "()Lkotlin/jvm/functions/Function2;", "setAutoUploadOnClick", "(Lkotlin/jvm/functions/Function2;)V", "changePasswordOnClick", "getChangePasswordOnClick", "setChangePasswordOnClick", "deviceList", "Landroid/widget/LinearLayout;", "divider", "kioskOnClick", "getKioskOnClick", "setKioskOnClick", "logoutOnClick", "getLogoutOnClick", "setLogoutOnClick", "myDeviceList", "profileOnClick", "getProfileOnClick", "setProfileOnClick", "resetTagoOnClick", "getResetTagoOnClick", "setResetTagoOnClick", "restoreOnClick", "getRestoreOnClick", "setRestoreOnClick", "switch", "Landroid/widget/Switch;", "addMyTagoRow", "ctx", "Landroid/content/Context;", "item", "Lcom/liber8tech/tago/model/TagoDevice;", "clearTagoList", "createView", "Landroid/widget/ScrollView;", "ui", "Lorg/jetbrains/anko/AnkoContext;", "setAutoUploadValue", "enabled", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: SettingsActivityUI.kt */
public final class SettingsActivityUI implements AnkoComponent<SettingsActivity> {
    @NotNull
    private Function1<? super View, Unit> addTagoOnClick = SettingsActivityUI$addTagoOnClick$1.INSTANCE;
    @NotNull
    private Function2<? super CompoundButton, ? super Boolean, Unit> autoUploadOnClick = SettingsActivityUI$autoUploadOnClick$1.INSTANCE;
    @NotNull
    private Function1<? super View, Unit> changePasswordOnClick = SettingsActivityUI$changePasswordOnClick$1.INSTANCE;
    private LinearLayout deviceList;
    private View divider;
    @NotNull
    private Function1<? super View, Unit> kioskOnClick = SettingsActivityUI$kioskOnClick$1.INSTANCE;
    @NotNull
    private Function1<? super View, Unit> logoutOnClick = SettingsActivityUI$logoutOnClick$1.INSTANCE;
    private LinearLayout myDeviceList;
    @NotNull
    private Function1<? super View, Unit> profileOnClick = SettingsActivityUI$profileOnClick$1.INSTANCE;
    @NotNull
    private Function1<? super View, Unit> resetTagoOnClick = SettingsActivityUI$resetTagoOnClick$1.INSTANCE;
    @NotNull
    private Function1<? super View, Unit> restoreOnClick = SettingsActivityUI$restoreOnClick$1.INSTANCE;

    /* renamed from: switch  reason: not valid java name */
    private Switch f1switch;

    /* JADX DEBUG: Type inference failed for r0v0. Raw type applied. Possible types: kotlin.jvm.functions.Function1<? super android.view.View, kotlin.Unit>, kotlin.jvm.functions.Function1<android.view.View, kotlin.Unit> */
    @NotNull
    public final Function1<View, Unit> getLogoutOnClick() {
        return this.logoutOnClick;
    }

    public final void setLogoutOnClick(@NotNull Function1<? super View, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(function1, "<set-?>");
        this.logoutOnClick = function1;
    }

    /* JADX DEBUG: Type inference failed for r0v0. Raw type applied. Possible types: kotlin.jvm.functions.Function1<? super android.view.View, kotlin.Unit>, kotlin.jvm.functions.Function1<android.view.View, kotlin.Unit> */
    @NotNull
    public final Function1<View, Unit> getChangePasswordOnClick() {
        return this.changePasswordOnClick;
    }

    public final void setChangePasswordOnClick(@NotNull Function1<? super View, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(function1, "<set-?>");
        this.changePasswordOnClick = function1;
    }

    /* JADX DEBUG: Type inference failed for r0v0. Raw type applied. Possible types: kotlin.jvm.functions.Function1<? super android.view.View, kotlin.Unit>, kotlin.jvm.functions.Function1<android.view.View, kotlin.Unit> */
    @NotNull
    public final Function1<View, Unit> getAddTagoOnClick() {
        return this.addTagoOnClick;
    }

    public final void setAddTagoOnClick(@NotNull Function1<? super View, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(function1, "<set-?>");
        this.addTagoOnClick = function1;
    }

    /* JADX DEBUG: Type inference failed for r0v0. Raw type applied. Possible types: kotlin.jvm.functions.Function1<? super android.view.View, kotlin.Unit>, kotlin.jvm.functions.Function1<android.view.View, kotlin.Unit> */
    @NotNull
    public final Function1<View, Unit> getResetTagoOnClick() {
        return this.resetTagoOnClick;
    }

    public final void setResetTagoOnClick(@NotNull Function1<? super View, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(function1, "<set-?>");
        this.resetTagoOnClick = function1;
    }

    /* JADX DEBUG: Type inference failed for r0v0. Raw type applied. Possible types: kotlin.jvm.functions.Function1<? super android.view.View, kotlin.Unit>, kotlin.jvm.functions.Function1<android.view.View, kotlin.Unit> */
    @NotNull
    public final Function1<View, Unit> getRestoreOnClick() {
        return this.restoreOnClick;
    }

    public final void setRestoreOnClick(@NotNull Function1<? super View, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(function1, "<set-?>");
        this.restoreOnClick = function1;
    }

    /* JADX DEBUG: Type inference failed for r0v0. Raw type applied. Possible types: kotlin.jvm.functions.Function1<? super android.view.View, kotlin.Unit>, kotlin.jvm.functions.Function1<android.view.View, kotlin.Unit> */
    @NotNull
    public final Function1<View, Unit> getKioskOnClick() {
        return this.kioskOnClick;
    }

    public final void setKioskOnClick(@NotNull Function1<? super View, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(function1, "<set-?>");
        this.kioskOnClick = function1;
    }

    /* JADX DEBUG: Type inference failed for r0v0. Raw type applied. Possible types: kotlin.jvm.functions.Function1<? super android.view.View, kotlin.Unit>, kotlin.jvm.functions.Function1<android.view.View, kotlin.Unit> */
    @NotNull
    public final Function1<View, Unit> getProfileOnClick() {
        return this.profileOnClick;
    }

    public final void setProfileOnClick(@NotNull Function1<? super View, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(function1, "<set-?>");
        this.profileOnClick = function1;
    }

    /* JADX DEBUG: Type inference failed for r0v0. Raw type applied. Possible types: kotlin.jvm.functions.Function2<? super android.widget.CompoundButton, ? super java.lang.Boolean, kotlin.Unit>, kotlin.jvm.functions.Function2<android.widget.CompoundButton, java.lang.Boolean, kotlin.Unit> */
    @NotNull
    public final Function2<CompoundButton, Boolean, Unit> getAutoUploadOnClick() {
        return this.autoUploadOnClick;
    }

    public final void setAutoUploadOnClick(@NotNull Function2<? super CompoundButton, ? super Boolean, Unit> function2) {
        Intrinsics.checkParameterIsNotNull(function2, "<set-?>");
        this.autoUploadOnClick = function2;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [org.jetbrains.anko.AnkoContext<com.liber8tech.tago.android.activity.SettingsActivity>] */
    @Override // org.jetbrains.anko.AnkoComponent
    @NotNull
    public ScrollView createView(@NotNull AnkoContext<? extends SettingsActivity> ankoContext) {
        Intrinsics.checkParameterIsNotNull(ankoContext, "ui");
        AnkoContext<? extends SettingsActivity> ankoContext2 = ankoContext;
        _ScrollView invoke = C$$Anko$Factories$Sdk15ViewGroup.INSTANCE.getSCROLL_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(ankoContext2), 0));
        _ScrollView _scrollview = invoke;
        _LinearLayout invoke2 = C$$Anko$Factories$CustomViews.INSTANCE.getVERTICAL_LAYOUT_FACTORY().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_scrollview), 0));
        _LinearLayout _linearlayout = invoke2;
        _LinearLayout _linearlayout2 = _linearlayout;
        View initiateView = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0), SettingsRowItem.class);
        ((SettingsRowItem) initiateView).setText(ankoContext.getCtx().getString(R.string.devices));
        AnkoInternals.INSTANCE.addView(_linearlayout2, initiateView);
        _LinearLayout invoke3 = C$$Anko$Factories$CustomViews.INSTANCE.getVERTICAL_LAYOUT_FACTORY().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0));
        _LinearLayout _linearlayout3 = invoke3;
        _LinearLayout _linearlayout4 = _linearlayout3;
        _LinearLayout invoke4 = C$$Anko$Factories$CustomViews.INSTANCE.getVERTICAL_LAYOUT_FACTORY().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout4), 0));
        AnkoInternals.INSTANCE.addView(_linearlayout4, invoke4);
        this.myDeviceList = invoke4;
        View invoke5 = C$$Anko$Factories$Sdk15View.INSTANCE.getVIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout4), 0));
        Context context = invoke5.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "context");
        Sdk15PropertiesKt.setBackgroundColor(invoke5, AndroidExtensionsKt.getColorCompat(context, R.color.gray_divider));
        invoke5.setVisibility(8);
        AnkoInternals.INSTANCE.addView(_linearlayout4, invoke5);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.width = CustomLayoutPropertiesKt.getMatchParent();
        _LinearLayout _linearlayout5 = _linearlayout3;
        Context context2 = _linearlayout5.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context2, "context");
        layoutParams.height = DimensionsKt.dip(context2, 1);
        Context context3 = _linearlayout5.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context3, "context");
        layoutParams.setMarginStart(DimensionsKt.dip(context3, 16));
        Context context4 = _linearlayout5.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context4, "context");
        layoutParams.setMarginEnd(DimensionsKt.dip(context4, 16));
        invoke5.setLayoutParams(layoutParams);
        this.divider = invoke5;
        _LinearLayout _linearlayout6 = _linearlayout3;
        _LinearLayout _linearlayout7 = _linearlayout6;
        Object systemService = AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout7), 0).getSystemService("layout_inflater");
        if (systemService != null) {
            View inflate = ((LayoutInflater) systemService).inflate(R.layout.settings_view, (ViewGroup) _linearlayout6, false);
            if (inflate != null) {
                ConstraintLayout constraintLayout = (ConstraintLayout) inflate;
                View findViewById = constraintLayout.findViewById(R.id.addTago);
                Intrinsics.checkExpressionValueIsNotNull(findViewById, "findViewById(id)");
                TextView textView = (TextView) findViewById;
                TypefacesExtensionKt.regular(textView);
                textView.setOnClickListener(new SettingsActivityUI$inlined$sam$i$android_view_View_OnClickListener$0(new SettingsActivityUI$createView$$inlined$with$lambda$1(textView, ankoContext, this)));
                Unit unit = Unit.INSTANCE;
                View findViewById2 = constraintLayout.findViewById(R.id.blankTago);
                Intrinsics.checkExpressionValueIsNotNull(findViewById2, "findViewById(id)");
                ((ImageView) findViewById2).setImageDrawable(DevicePreview.Companion.getUnknown());
                Unit unit2 = Unit.INSTANCE;
                View findViewById3 = constraintLayout.findViewById(R.id.resetTago);
                Intrinsics.checkExpressionValueIsNotNull(findViewById3, "findViewById(id)");
                TextView textView2 = (TextView) findViewById3;
                TypefacesExtensionKt.regular(textView2);
                textView2.setOnClickListener(new SettingsActivityUI$inlined$sam$i$android_view_View_OnClickListener$0(new SettingsActivityUI$createView$$inlined$with$lambda$2(textView2, ankoContext, this)));
                Unit unit3 = Unit.INSTANCE;
                AnkoInternals.INSTANCE.addView(_linearlayout7, inflate);
                AnkoInternals.INSTANCE.addView(_linearlayout2, invoke3);
                this.deviceList = invoke3;
                _RelativeLayout invoke6 = C$$Anko$Factories$Sdk15ViewGroup.INSTANCE.getRELATIVE_LAYOUT().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0));
                _RelativeLayout _relativelayout = invoke6;
                _RelativeLayout _relativelayout2 = _relativelayout;
                Context context5 = _relativelayout.getContext();
                Intrinsics.checkExpressionValueIsNotNull(context5, "context");
                Sdk15PropertiesKt.setBackgroundColor(_relativelayout2, AndroidExtensionsKt.getColorCompat(context5, R.color.black));
                _RelativeLayout _relativelayout3 = _relativelayout;
                View initiateView2 = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_relativelayout3), 0), SettingsRowItem.class);
                SettingsRowItem settingsRowItem = (SettingsRowItem) initiateView2;
                settingsRowItem.setText(ankoContext.getCtx().getString(R.string.auto_upload));
                AnkoInternals.INSTANCE.addView(_relativelayout3, initiateView2);
                RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
                layoutParams2.addRule(9);
                settingsRowItem.setLayoutParams(layoutParams2);
                Switch invoke7 = C$$Anko$Factories$Sdk15View.INSTANCE.getSWITCH().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_relativelayout3), 0));
                Switch r13 = invoke7;
                r13.setChecked(true);
                r13.setOnCheckedChangeListener(new SettingsActivityUI$inlined$sam$i$android_widget_CompoundButton_OnCheckedChangeListener$0(new SettingsActivityUI$createView$$inlined$with$lambda$3(ankoContext, this)));
                AnkoInternals.INSTANCE.addView(_relativelayout3, invoke7);
                Switch r132 = r13;
                RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
                layoutParams3.addRule(11);
                Context context6 = _relativelayout2.getContext();
                Intrinsics.checkExpressionValueIsNotNull(context6, "context");
                layoutParams3.setMarginEnd(DimensionsKt.dip(context6, 12));
                Context context7 = _relativelayout2.getContext();
                Intrinsics.checkExpressionValueIsNotNull(context7, "context");
                layoutParams3.topMargin = DimensionsKt.dip(context7, 8);
                r132.setLayoutParams(layoutParams3);
                this.f1switch = r132;
                AnkoInternals.INSTANCE.addView(_linearlayout2, invoke6);
                invoke6.setLayoutParams(new LinearLayout.LayoutParams(CustomLayoutPropertiesKt.getMatchParent(), CustomLayoutPropertiesKt.getWrapContent()));
                View invoke8 = C$$Anko$Factories$Sdk15View.INSTANCE.getVIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0));
                AnkoInternals.INSTANCE.addView(_linearlayout2, invoke8);
                LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, -2);
                layoutParams4.width = CustomLayoutPropertiesKt.getMatchParent();
                _LinearLayout _linearlayout8 = _linearlayout;
                Context context8 = _linearlayout8.getContext();
                Intrinsics.checkExpressionValueIsNotNull(context8, "context");
                layoutParams4.height = DimensionsKt.dip(context8, 1.5f);
                invoke8.setLayoutParams(layoutParams4);
                View initiateView3 = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0), SettingsRowItem.class);
                SettingsRowItem settingsRowItem2 = (SettingsRowItem) initiateView3;
                settingsRowItem2.setText(ankoContext.getCtx().getString(R.string.kiosk_mode));
                Context context9 = settingsRowItem2.getContext();
                Intrinsics.checkExpressionValueIsNotNull(context9, "context");
                settingsRowItem2.setRightIcon(AndroidExtensionsKt.tintedDrawable(context9, R.drawable.button_more, 17170443));
                settingsRowItem2.setOnClickListener(new SettingsActivityUI$inlined$sam$i$android_view_View_OnClickListener$0(new SettingsActivityUI$createView$$inlined$with$lambda$4(settingsRowItem2, ankoContext, this)));
                AnkoInternals.INSTANCE.addView(_linearlayout2, initiateView3);
                View invoke9 = C$$Anko$Factories$Sdk15View.INSTANCE.getVIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0));
                AnkoInternals.INSTANCE.addView(_linearlayout2, invoke9);
                LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-2, -2);
                layoutParams5.width = CustomLayoutPropertiesKt.getMatchParent();
                Context context10 = _linearlayout8.getContext();
                Intrinsics.checkExpressionValueIsNotNull(context10, "context");
                layoutParams5.height = DimensionsKt.dip(context10, 1.5f);
                invoke9.setLayoutParams(layoutParams5);
                View initiateView4 = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0), SettingsRowItem.class);
                SettingsRowItem settingsRowItem3 = (SettingsRowItem) initiateView4;
                settingsRowItem3.setText(ankoContext.getCtx().getString(R.string.change_password));
                Context context11 = settingsRowItem3.getContext();
                Intrinsics.checkExpressionValueIsNotNull(context11, "context");
                settingsRowItem3.setRightIcon(AndroidExtensionsKt.tintedDrawable(context11, R.drawable.button_more, 17170443));
                settingsRowItem3.setOnClickListener(new SettingsActivityUI$inlined$sam$i$android_view_View_OnClickListener$0(new SettingsActivityUI$createView$$inlined$with$lambda$5(settingsRowItem3, ankoContext, this)));
                AnkoInternals.INSTANCE.addView(_linearlayout2, initiateView4);
                View invoke10 = C$$Anko$Factories$Sdk15View.INSTANCE.getVIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0));
                AnkoInternals.INSTANCE.addView(_linearlayout2, invoke10);
                LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(-2, -2);
                layoutParams6.width = CustomLayoutPropertiesKt.getMatchParent();
                Context context12 = _linearlayout8.getContext();
                Intrinsics.checkExpressionValueIsNotNull(context12, "context");
                layoutParams6.height = DimensionsKt.dip(context12, 1.5f);
                invoke10.setLayoutParams(layoutParams6);
                View initiateView5 = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0), SettingsRowItem.class);
                SettingsRowItem settingsRowItem4 = (SettingsRowItem) initiateView5;
                settingsRowItem4.setText(ankoContext.getCtx().getString(R.string.profile));
                Context context13 = settingsRowItem4.getContext();
                Intrinsics.checkExpressionValueIsNotNull(context13, "context");
                settingsRowItem4.setRightIcon(AndroidExtensionsKt.tintedDrawable(context13, R.drawable.button_more, 17170443));
                settingsRowItem4.setOnClickListener(new SettingsActivityUI$inlined$sam$i$android_view_View_OnClickListener$0(new SettingsActivityUI$createView$$inlined$with$lambda$6(settingsRowItem4, ankoContext, this)));
                AnkoInternals.INSTANCE.addView(_linearlayout2, initiateView5);
                View invoke11 = C$$Anko$Factories$Sdk15View.INSTANCE.getVIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0));
                AnkoInternals.INSTANCE.addView(_linearlayout2, invoke11);
                LinearLayout.LayoutParams layoutParams7 = new LinearLayout.LayoutParams(-2, -2);
                layoutParams7.width = CustomLayoutPropertiesKt.getMatchParent();
                Context context14 = _linearlayout8.getContext();
                Intrinsics.checkExpressionValueIsNotNull(context14, "context");
                layoutParams7.height = DimensionsKt.dip(context14, 1.5f);
                invoke11.setLayoutParams(layoutParams7);
                View initiateView6 = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0), SettingsRowItem.class);
                SettingsRowItem settingsRowItem5 = (SettingsRowItem) initiateView6;
                settingsRowItem5.setText(ankoContext.getCtx().getString(R.string.about));
                Context context15 = settingsRowItem5.getContext();
                Intrinsics.checkExpressionValueIsNotNull(context15, "context");
                settingsRowItem5.setRightIcon(AndroidExtensionsKt.tintedDrawable(context15, R.drawable.button_more, 17170443));
                settingsRowItem5.setOnClickListener(new SettingsActivityUI$inlined$sam$i$android_view_View_OnClickListener$0(new SettingsActivityUI$createView$$inlined$with$lambda$7(ankoContext, this)));
                AnkoInternals.INSTANCE.addView(_linearlayout2, initiateView6);
                View invoke12 = C$$Anko$Factories$Sdk15View.INSTANCE.getVIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0));
                AnkoInternals.INSTANCE.addView(_linearlayout2, invoke12);
                LinearLayout.LayoutParams layoutParams8 = new LinearLayout.LayoutParams(-2, -2);
                layoutParams8.width = CustomLayoutPropertiesKt.getMatchParent();
                Context context16 = _linearlayout8.getContext();
                Intrinsics.checkExpressionValueIsNotNull(context16, "context");
                layoutParams8.height = DimensionsKt.dip(context16, 1.5f);
                invoke12.setLayoutParams(layoutParams8);
                View initiateView7 = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0), SettingsRowItem.class);
                SettingsRowItem settingsRowItem6 = (SettingsRowItem) initiateView7;
                settingsRowItem6.setText(ankoContext.getCtx().getString(R.string.contact_us));
                Context context17 = settingsRowItem6.getContext();
                Intrinsics.checkExpressionValueIsNotNull(context17, "context");
                settingsRowItem6.setRightIcon(AndroidExtensionsKt.tintedDrawable(context17, R.drawable.button_more, 17170443));
                settingsRowItem6.setOnClickListener(new SettingsActivityUI$inlined$sam$i$android_view_View_OnClickListener$0(new SettingsActivityUI$createView$$inlined$with$lambda$8(ankoContext, this)));
                AnkoInternals.INSTANCE.addView(_linearlayout2, initiateView7);
                View invoke13 = C$$Anko$Factories$Sdk15View.INSTANCE.getVIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0));
                AnkoInternals.INSTANCE.addView(_linearlayout2, invoke13);
                LinearLayout.LayoutParams layoutParams9 = new LinearLayout.LayoutParams(-2, -2);
                layoutParams9.width = CustomLayoutPropertiesKt.getMatchParent();
                Context context18 = _linearlayout8.getContext();
                Intrinsics.checkExpressionValueIsNotNull(context18, "context");
                layoutParams9.height = DimensionsKt.dip(context18, 1.5f);
                invoke13.setLayoutParams(layoutParams9);
                View initiateView8 = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0), SettingsRowItem.class);
                SettingsRowItem settingsRowItem7 = (SettingsRowItem) initiateView8;
                settingsRowItem7.setText(ankoContext.getCtx().getString(R.string.user_guide));
                settingsRowItem7.setOnClickListener(new SettingsActivityUI$inlined$sam$i$android_view_View_OnClickListener$0(new SettingsActivityUI$createView$$inlined$with$lambda$9(ankoContext, this)));
                AnkoInternals.INSTANCE.addView(_linearlayout2, initiateView8);
                View invoke14 = C$$Anko$Factories$Sdk15View.INSTANCE.getVIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0));
                AnkoInternals.INSTANCE.addView(_linearlayout2, invoke14);
                LinearLayout.LayoutParams layoutParams10 = new LinearLayout.LayoutParams(-2, -2);
                layoutParams10.width = CustomLayoutPropertiesKt.getMatchParent();
                Context context19 = _linearlayout8.getContext();
                Intrinsics.checkExpressionValueIsNotNull(context19, "context");
                layoutParams10.height = DimensionsKt.dip(context19, 1.5f);
                invoke14.setLayoutParams(layoutParams10);
                View initiateView9 = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0), SettingsRowItem.class);
                SettingsRowItem settingsRowItem8 = (SettingsRowItem) initiateView9;
                settingsRowItem8.setText(ankoContext.getCtx().getString(R.string.restore));
                settingsRowItem8.setOnClickListener(new SettingsActivityUI$inlined$sam$i$android_view_View_OnClickListener$0(new SettingsActivityUI$createView$$inlined$with$lambda$10(settingsRowItem8, ankoContext, this)));
                AnkoInternals.INSTANCE.addView(_linearlayout2, initiateView9);
                View invoke15 = C$$Anko$Factories$Sdk15View.INSTANCE.getVIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0));
                AnkoInternals.INSTANCE.addView(_linearlayout2, invoke15);
                LinearLayout.LayoutParams layoutParams11 = new LinearLayout.LayoutParams(-2, -2);
                layoutParams11.width = CustomLayoutPropertiesKt.getMatchParent();
                Context context20 = _linearlayout8.getContext();
                Intrinsics.checkExpressionValueIsNotNull(context20, "context");
                layoutParams11.height = DimensionsKt.dip(context20, 1.5f);
                invoke15.setLayoutParams(layoutParams11);
                View initiateView10 = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0), SettingsRowItem.class);
                SettingsRowItem settingsRowItem9 = (SettingsRowItem) initiateView10;
                settingsRowItem9.setText(ankoContext.getCtx().getString(R.string.logout));
                settingsRowItem9.setOnClickListener(new SettingsActivityUI$inlined$sam$i$android_view_View_OnClickListener$0(new SettingsActivityUI$createView$$inlined$with$lambda$11(settingsRowItem9, ankoContext, this)));
                AnkoInternals.INSTANCE.addView(_linearlayout2, initiateView10);
                AnkoInternals.INSTANCE.addView(_scrollview, invoke2);
                FrameLayout.LayoutParams layoutParams12 = new FrameLayout.LayoutParams(-2, -2);
                layoutParams12.width = CustomLayoutPropertiesKt.getMatchParent();
                layoutParams12.height = CustomLayoutPropertiesKt.getMatchParent();
                invoke2.setLayoutParams(layoutParams12);
                AnkoInternals.INSTANCE.addView(ankoContext2, invoke);
                _ScrollView _scrollview2 = invoke;
                _scrollview2.setLayoutParams(new ViewGroup.LayoutParams(CustomLayoutPropertiesKt.getMatchParent(), CustomLayoutPropertiesKt.getMatchParent()));
                return _scrollview2;
            }
            throw new TypeCastException("null cannot be cast to non-null type T");
        }
        throw new TypeCastException("null cannot be cast to non-null type android.view.LayoutInflater");
    }

    public final void addMyTagoRow(@NotNull Context context, @NotNull TagoDevice tagoDevice) {
        Intrinsics.checkParameterIsNotNull(context, "ctx");
        Intrinsics.checkParameterIsNotNull(tagoDevice, "item");
        View view = this.divider;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("divider");
        }
        view.setVisibility(0);
        LinearLayout linearLayout = this.myDeviceList;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("myDeviceList");
        }
        TagoRowItem createView = new TagoRowItemUI().createView(AnkoContext.Companion.create$default(AnkoContext.Companion, context, new TagoRowItem(context), false, 4, null));
        String name = tagoDevice.getName();
        if (name == null) {
            name = "";
        }
        createView.setTitle(name);
        createView.setTagoDrawable(tagoDevice.getIcon());
        createView.showLowBattery(tagoDevice.getLowBattery());
        TagoRowItem tagoRowItem = createView;
        tagoRowItem.setOnClickListener(new SettingsActivityUI$inlined$sam$i$android_view_View_OnClickListener$0(new SettingsActivityUI$addMyTagoRow$$inlined$apply$lambda$1(tagoDevice, context)));
        linearLayout.addView(tagoRowItem);
    }

    public final void clearTagoList() {
        LinearLayout linearLayout = this.myDeviceList;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("myDeviceList");
        }
        linearLayout.removeAllViews();
        View view = this.divider;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("divider");
        }
        view.setVisibility(8);
    }

    public final void setAutoUploadValue(boolean z) {
        Switch r0 = this.f1switch;
        if (r0 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("switch");
        }
        r0.setChecked(z);
    }
}
