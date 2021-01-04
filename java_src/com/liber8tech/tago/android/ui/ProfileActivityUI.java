package com.liber8tech.tago.android.ui;

import android.content.Context;
import android.view.View;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import com.facebook.appevents.UserDataStore;
import com.liber8tech.tago.R;
import com.liber8tech.tago.android.activity.ProfileActivity;
import com.liber8tech.tago.android.adapter.ProfileSpinnerAdapter;
import com.liber8tech.tago.android.view.FormTitleView;
import com.liber8tech.tago.android.view.TagoButton;
import com.liber8tech.tago.android.view.TagoButtonColor;
import com.liber8tech.tago.android.view.TextInputView;
import com.liber8tech.tago.service.UpdateProfileData;
import com.liber8tech.tago.util.extension.AndroidExtensionsKt;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgression;
import kotlin.ranges.RangesKt;
import org.jetbrains.anko.AnkoComponent;
import org.jetbrains.anko.AnkoContext;
import org.jetbrains.anko.C$$Anko$Factories$CustomViews;
import org.jetbrains.anko.C$$Anko$Factories$Sdk15View;
import org.jetbrains.anko.C$$Anko$Factories$Sdk15ViewGroup;
import org.jetbrains.anko.CustomLayoutPropertiesKt;
import org.jetbrains.anko.DimensionsKt;
import org.jetbrains.anko.Sdk15PropertiesKt;
import org.jetbrains.anko._LinearLayout;
import org.jetbrains.anko._ScrollView;
import org.jetbrains.anko.internals.AnkoInternals;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0016\u00106\u001a\u0002072\f\u00108\u001a\b\u0012\u0004\u0012\u00020\u000209H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX.¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011X\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0013\u001a\u00020\u000bX.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\r\"\u0004\b\u0015\u0010\u000fR\u001a\u0010\u0016\u001a\u00020\u0017X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\u00020\u000bX.¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\r\"\u0004\b\u001e\u0010\u000fR\u0014\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011X\u0004¢\u0006\u0002\n\u0000R\u001a\u0010 \u001a\u00020\u0017X.¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\u0019\"\u0004\b\"\u0010\u001bR$\u0010%\u001a\u00020$2\u0006\u0010#\u001a\u00020$@FX\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R&\u0010*\u001a\u000e\u0012\u0004\u0012\u00020,\u0012\u0004\u0012\u00020-0+X\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\u001a\u00102\u001a\u00020\u0005X.¢\u0006\u000e\n\u0000\u001a\u0004\b3\u0010\u0007\"\u0004\b4\u0010\tR\u0014\u00105\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011X\u0004¢\u0006\u0002\n\u0000¨\u0006:"}, d2 = {"Lcom/liber8tech/tago/android/ui/ProfileActivityUI;", "Lorg/jetbrains/anko/AnkoComponent;", "Lcom/liber8tech/tago/android/activity/ProfileActivity;", "()V", "analyticsCheck", "Landroid/widget/CheckBox;", "getAnalyticsCheck", "()Landroid/widget/CheckBox;", "setAnalyticsCheck", "(Landroid/widget/CheckBox;)V", "birthYear", "Landroid/widget/Spinner;", "getBirthYear", "()Landroid/widget/Spinner;", "setBirthYear", "(Landroid/widget/Spinner;)V", "countries", "", "", UserDataStore.COUNTRY, "getCountry", "setCountry", "firstName", "Lcom/liber8tech/tago/android/view/TextInputView;", "getFirstName", "()Lcom/liber8tech/tago/android/view/TextInputView;", "setFirstName", "(Lcom/liber8tech/tago/android/view/TextInputView;)V", "gender", "getGender", "setGender", "genderList", "lastName", "getLastName", "setLastName", "value", "Lcom/liber8tech/tago/service/UpdateProfileData;", "profile", "getProfile", "()Lcom/liber8tech/tago/service/UpdateProfileData;", "setProfile", "(Lcom/liber8tech/tago/service/UpdateProfileData;)V", "saveOnClick", "Lkotlin/Function1;", "Landroid/view/View;", "", "getSaveOnClick", "()Lkotlin/jvm/functions/Function1;", "setSaveOnClick", "(Lkotlin/jvm/functions/Function1;)V", "subsCheck", "getSubsCheck", "setSubsCheck", "yearList", "createView", "Landroid/widget/ScrollView;", "ui", "Lorg/jetbrains/anko/AnkoContext;", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: ProfileActivityUI.kt */
public final class ProfileActivityUI implements AnkoComponent<ProfileActivity> {
    @NotNull
    public CheckBox analyticsCheck;
    @NotNull
    public Spinner birthYear;
    private final List<String> countries = new ArrayList();
    @NotNull
    public Spinner country;
    @NotNull
    public TextInputView firstName;
    @NotNull
    public Spinner gender;
    private final List<String> genderList = new ArrayList();
    @NotNull
    public TextInputView lastName;
    @NotNull
    private UpdateProfileData profile;
    @NotNull
    private Function1<? super View, Unit> saveOnClick = ProfileActivityUI$saveOnClick$1.INSTANCE;
    @NotNull
    public CheckBox subsCheck;
    private final List<String> yearList;

    public ProfileActivityUI() {
        IntProgression downTo = RangesKt.downTo(2018, 1900);
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(downTo, 10));
        Iterator it2 = downTo.iterator();
        while (it2.hasNext()) {
            arrayList.add(String.valueOf(((IntIterator) it2).nextInt()));
        }
        this.yearList = CollectionsKt.toMutableList((Collection) arrayList);
        this.profile = new UpdateProfileData(null, null, null, null, null, null, null, null, null, null, 1023, null);
    }

    @NotNull
    public final TextInputView getFirstName() {
        TextInputView textInputView = this.firstName;
        if (textInputView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("firstName");
        }
        return textInputView;
    }

    public final void setFirstName(@NotNull TextInputView textInputView) {
        Intrinsics.checkParameterIsNotNull(textInputView, "<set-?>");
        this.firstName = textInputView;
    }

    @NotNull
    public final TextInputView getLastName() {
        TextInputView textInputView = this.lastName;
        if (textInputView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("lastName");
        }
        return textInputView;
    }

    public final void setLastName(@NotNull TextInputView textInputView) {
        Intrinsics.checkParameterIsNotNull(textInputView, "<set-?>");
        this.lastName = textInputView;
    }

    @NotNull
    public final Spinner getBirthYear() {
        Spinner spinner = this.birthYear;
        if (spinner == null) {
            Intrinsics.throwUninitializedPropertyAccessException("birthYear");
        }
        return spinner;
    }

    public final void setBirthYear(@NotNull Spinner spinner) {
        Intrinsics.checkParameterIsNotNull(spinner, "<set-?>");
        this.birthYear = spinner;
    }

    @NotNull
    public final Spinner getCountry() {
        Spinner spinner = this.country;
        if (spinner == null) {
            Intrinsics.throwUninitializedPropertyAccessException(UserDataStore.COUNTRY);
        }
        return spinner;
    }

    public final void setCountry(@NotNull Spinner spinner) {
        Intrinsics.checkParameterIsNotNull(spinner, "<set-?>");
        this.country = spinner;
    }

    @NotNull
    public final Spinner getGender() {
        Spinner spinner = this.gender;
        if (spinner == null) {
            Intrinsics.throwUninitializedPropertyAccessException("gender");
        }
        return spinner;
    }

    public final void setGender(@NotNull Spinner spinner) {
        Intrinsics.checkParameterIsNotNull(spinner, "<set-?>");
        this.gender = spinner;
    }

    @NotNull
    public final CheckBox getSubsCheck() {
        CheckBox checkBox = this.subsCheck;
        if (checkBox == null) {
            Intrinsics.throwUninitializedPropertyAccessException("subsCheck");
        }
        return checkBox;
    }

    public final void setSubsCheck(@NotNull CheckBox checkBox) {
        Intrinsics.checkParameterIsNotNull(checkBox, "<set-?>");
        this.subsCheck = checkBox;
    }

    @NotNull
    public final CheckBox getAnalyticsCheck() {
        CheckBox checkBox = this.analyticsCheck;
        if (checkBox == null) {
            Intrinsics.throwUninitializedPropertyAccessException("analyticsCheck");
        }
        return checkBox;
    }

    public final void setAnalyticsCheck(@NotNull CheckBox checkBox) {
        Intrinsics.checkParameterIsNotNull(checkBox, "<set-?>");
        this.analyticsCheck = checkBox;
    }

    /* JADX DEBUG: Type inference failed for r0v0. Raw type applied. Possible types: kotlin.jvm.functions.Function1<? super android.view.View, kotlin.Unit>, kotlin.jvm.functions.Function1<android.view.View, kotlin.Unit> */
    @NotNull
    public final Function1<View, Unit> getSaveOnClick() {
        return this.saveOnClick;
    }

    public final void setSaveOnClick(@NotNull Function1<? super View, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(function1, "<set-?>");
        this.saveOnClick = function1;
    }

    @NotNull
    public final UpdateProfileData getProfile() {
        return this.profile;
    }

    public final void setProfile(@NotNull UpdateProfileData updateProfileData) {
        Intrinsics.checkParameterIsNotNull(updateProfileData, "value");
        String firstName2 = updateProfileData.getFirstName();
        if (firstName2 != null) {
            TextInputView textInputView = this.firstName;
            if (textInputView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("firstName");
            }
            textInputView.setText(firstName2);
        }
        String lastName2 = updateProfileData.getLastName();
        if (lastName2 != null) {
            TextInputView textInputView2 = this.lastName;
            if (textInputView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("lastName");
            }
            textInputView2.setText(lastName2);
        }
        Integer birthYear2 = updateProfileData.getBirthYear();
        if (birthYear2 != null) {
            int intValue = birthYear2.intValue();
            Spinner spinner = this.birthYear;
            if (spinner == null) {
                Intrinsics.throwUninitializedPropertyAccessException("birthYear");
            }
            spinner.setSelection(this.yearList.indexOf(String.valueOf(intValue)));
        }
        String country2 = updateProfileData.getCountry();
        if (country2 != null) {
            Spinner spinner2 = this.country;
            if (spinner2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException(UserDataStore.COUNTRY);
            }
            spinner2.setSelection(this.countries.indexOf(country2));
        }
        String gender2 = updateProfileData.getGender();
        if (gender2 != null) {
            Spinner spinner3 = this.gender;
            if (spinner3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("gender");
            }
            spinner3.setSelection(this.genderList.indexOf(gender2));
        }
        Boolean newsletterSubscription = updateProfileData.getNewsletterSubscription();
        if (newsletterSubscription != null) {
            boolean booleanValue = newsletterSubscription.booleanValue();
            CheckBox checkBox = this.subsCheck;
            if (checkBox == null) {
                Intrinsics.throwUninitializedPropertyAccessException("subsCheck");
            }
            checkBox.setChecked(booleanValue);
        }
        Boolean analytics = updateProfileData.getAnalytics();
        if (analytics != null) {
            boolean booleanValue2 = analytics.booleanValue();
            CheckBox checkBox2 = this.analyticsCheck;
            if (checkBox2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("analyticsCheck");
            }
            checkBox2.setChecked(booleanValue2);
        }
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [org.jetbrains.anko.AnkoContext<com.liber8tech.tago.android.activity.ProfileActivity>] */
    @Override // org.jetbrains.anko.AnkoComponent
    @NotNull
    public ScrollView createView(@NotNull AnkoContext<? extends ProfileActivity> ankoContext) {
        Intrinsics.checkParameterIsNotNull(ankoContext, "ui");
        this.genderList.addAll(CollectionsKt.listOf((Object[]) new String[]{ankoContext.getCtx().getString(R.string.profile_default_selection), ankoContext.getCtx().getString(R.string.female), ankoContext.getCtx().getString(R.string.male)}));
        List<String> list = this.yearList;
        String string = ankoContext.getCtx().getString(R.string.profile_default_selection);
        Intrinsics.checkExpressionValueIsNotNull(string, "ui.ctx.getString(R.strin…rofile_default_selection)");
        list.add(0, string);
        List<String> list2 = this.countries;
        String string2 = ankoContext.getCtx().getString(R.string.profile_default_selection);
        Intrinsics.checkExpressionValueIsNotNull(string2, "ui.ctx.getString(R.strin…rofile_default_selection)");
        list2.add(string2);
        this.countries.addAll(1, TextStreamsKt.readLines(new BufferedReader(new InputStreamReader(ankoContext.getCtx().getAssets().open("countries.csv")))));
        AnkoContext<? extends ProfileActivity> ankoContext2 = ankoContext;
        _ScrollView invoke = C$$Anko$Factories$Sdk15ViewGroup.INSTANCE.getSCROLL_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(ankoContext2), 0));
        _ScrollView _scrollview = invoke;
        _LinearLayout invoke2 = C$$Anko$Factories$CustomViews.INSTANCE.getVERTICAL_LAYOUT_FACTORY().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_scrollview), 0));
        _LinearLayout _linearlayout = invoke2;
        _LinearLayout _linearlayout2 = _linearlayout;
        View initiateView = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0), TextInputView.class);
        TextInputView textInputView = (TextInputView) initiateView;
        String string3 = textInputView.getContext().getString(R.string.profile_first);
        Intrinsics.checkExpressionValueIsNotNull(string3, "context.getString(R.string.profile_first)");
        if (string3 != null) {
            String upperCase = string3.toUpperCase();
            Intrinsics.checkExpressionValueIsNotNull(upperCase, "(this as java.lang.String).toUpperCase()");
            textInputView.setHintText(upperCase);
            AnkoInternals.INSTANCE.addView(_linearlayout2, initiateView);
            this.firstName = textInputView;
            View initiateView2 = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0), TextInputView.class);
            TextInputView textInputView2 = (TextInputView) initiateView2;
            String string4 = textInputView2.getContext().getString(R.string.profile_last);
            Intrinsics.checkExpressionValueIsNotNull(string4, "context.getString(R.string.profile_last)");
            if (string4 != null) {
                String upperCase2 = string4.toUpperCase();
                Intrinsics.checkExpressionValueIsNotNull(upperCase2, "(this as java.lang.String).toUpperCase()");
                textInputView2.setHintText(upperCase2);
                AnkoInternals.INSTANCE.addView(_linearlayout2, initiateView2);
                this.lastName = textInputView2;
                View initiateView3 = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0), FormTitleView.class);
                FormTitleView formTitleView = (FormTitleView) initiateView3;
                String string5 = formTitleView.getContext().getString(R.string.profile_birth);
                Intrinsics.checkExpressionValueIsNotNull(string5, "context.getString(R.string.profile_birth)");
                if (string5 != null) {
                    String upperCase3 = string5.toUpperCase();
                    Intrinsics.checkExpressionValueIsNotNull(upperCase3, "(this as java.lang.String).toUpperCase()");
                    formTitleView.setText(upperCase3);
                    AnkoInternals.INSTANCE.addView(_linearlayout2, initiateView3);
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(CustomLayoutPropertiesKt.getWrapContent(), CustomLayoutPropertiesKt.getWrapContent());
                    _LinearLayout _linearlayout3 = _linearlayout;
                    Context context = _linearlayout3.getContext();
                    Intrinsics.checkExpressionValueIsNotNull(context, "context");
                    layoutParams.setMarginStart(DimensionsKt.dip(context, 16));
                    Context context2 = _linearlayout3.getContext();
                    Intrinsics.checkExpressionValueIsNotNull(context2, "context");
                    layoutParams.topMargin = DimensionsKt.dip(context2, 8);
                    formTitleView.setLayoutParams(layoutParams);
                    Spinner invoke3 = C$$Anko$Factories$Sdk15View.INSTANCE.getSPINNER().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0));
                    Spinner spinner = invoke3;
                    spinner.setAdapter((SpinnerAdapter) new ProfileSpinnerAdapter(this.yearList));
                    AnkoInternals.INSTANCE.addView(_linearlayout2, invoke3);
                    Spinner spinner2 = spinner;
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(CustomLayoutPropertiesKt.getMatchParent(), CustomLayoutPropertiesKt.getWrapContent());
                    Context context3 = _linearlayout3.getContext();
                    Intrinsics.checkExpressionValueIsNotNull(context3, "context");
                    layoutParams2.setMarginStart(DimensionsKt.dip(context3, 16));
                    spinner2.setLayoutParams(layoutParams2);
                    this.birthYear = spinner2;
                    View invoke4 = C$$Anko$Factories$Sdk15View.INSTANCE.getVIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0));
                    Context context4 = invoke4.getContext();
                    Intrinsics.checkExpressionValueIsNotNull(context4, "context");
                    Sdk15PropertiesKt.setBackgroundColor(invoke4, AndroidExtensionsKt.getColorCompat(context4, R.color.gray_divider));
                    AnkoInternals.INSTANCE.addView(_linearlayout2, invoke4);
                    LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams3.width = CustomLayoutPropertiesKt.getMatchParent();
                    Context context5 = _linearlayout3.getContext();
                    Intrinsics.checkExpressionValueIsNotNull(context5, "context");
                    layoutParams3.height = DimensionsKt.dip(context5, 1.5f);
                    Context context6 = _linearlayout3.getContext();
                    Intrinsics.checkExpressionValueIsNotNull(context6, "context");
                    layoutParams3.setMarginStart(DimensionsKt.dip(context6, 16));
                    Context context7 = _linearlayout3.getContext();
                    Intrinsics.checkExpressionValueIsNotNull(context7, "context");
                    layoutParams3.setMarginEnd(DimensionsKt.dip(context7, 16));
                    invoke4.setLayoutParams(layoutParams3);
                    View initiateView4 = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0), FormTitleView.class);
                    FormTitleView formTitleView2 = (FormTitleView) initiateView4;
                    String string6 = formTitleView2.getContext().getString(R.string.profile_country);
                    Intrinsics.checkExpressionValueIsNotNull(string6, "context.getString(R.string.profile_country)");
                    if (string6 != null) {
                        String upperCase4 = string6.toUpperCase();
                        Intrinsics.checkExpressionValueIsNotNull(upperCase4, "(this as java.lang.String).toUpperCase()");
                        formTitleView2.setText(upperCase4);
                        AnkoInternals.INSTANCE.addView(_linearlayout2, initiateView4);
                        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(CustomLayoutPropertiesKt.getWrapContent(), CustomLayoutPropertiesKt.getWrapContent());
                        Context context8 = _linearlayout3.getContext();
                        Intrinsics.checkExpressionValueIsNotNull(context8, "context");
                        layoutParams4.setMarginStart(DimensionsKt.dip(context8, 16));
                        Context context9 = _linearlayout3.getContext();
                        Intrinsics.checkExpressionValueIsNotNull(context9, "context");
                        layoutParams4.topMargin = DimensionsKt.dip(context9, 8);
                        formTitleView2.setLayoutParams(layoutParams4);
                        Spinner invoke5 = C$$Anko$Factories$Sdk15View.INSTANCE.getSPINNER().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0));
                        Spinner spinner3 = invoke5;
                        spinner3.setAdapter((SpinnerAdapter) new ProfileSpinnerAdapter(this.countries));
                        AnkoInternals.INSTANCE.addView(_linearlayout2, invoke5);
                        Spinner spinner4 = spinner3;
                        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(CustomLayoutPropertiesKt.getMatchParent(), CustomLayoutPropertiesKt.getWrapContent());
                        Context context10 = _linearlayout3.getContext();
                        Intrinsics.checkExpressionValueIsNotNull(context10, "context");
                        layoutParams5.setMarginStart(DimensionsKt.dip(context10, 16));
                        spinner4.setLayoutParams(layoutParams5);
                        this.country = spinner4;
                        View invoke6 = C$$Anko$Factories$Sdk15View.INSTANCE.getVIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0));
                        Context context11 = invoke6.getContext();
                        Intrinsics.checkExpressionValueIsNotNull(context11, "context");
                        Sdk15PropertiesKt.setBackgroundColor(invoke6, AndroidExtensionsKt.getColorCompat(context11, R.color.gray_divider));
                        AnkoInternals.INSTANCE.addView(_linearlayout2, invoke6);
                        LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(-2, -2);
                        layoutParams6.width = CustomLayoutPropertiesKt.getMatchParent();
                        Context context12 = _linearlayout3.getContext();
                        Intrinsics.checkExpressionValueIsNotNull(context12, "context");
                        layoutParams6.height = DimensionsKt.dip(context12, 1.5f);
                        Context context13 = _linearlayout3.getContext();
                        Intrinsics.checkExpressionValueIsNotNull(context13, "context");
                        layoutParams6.setMarginStart(DimensionsKt.dip(context13, 16));
                        Context context14 = _linearlayout3.getContext();
                        Intrinsics.checkExpressionValueIsNotNull(context14, "context");
                        layoutParams6.setMarginEnd(DimensionsKt.dip(context14, 16));
                        invoke6.setLayoutParams(layoutParams6);
                        View initiateView5 = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0), FormTitleView.class);
                        FormTitleView formTitleView3 = (FormTitleView) initiateView5;
                        String string7 = formTitleView3.getContext().getString(R.string.profile_gender);
                        Intrinsics.checkExpressionValueIsNotNull(string7, "context.getString(R.string.profile_gender)");
                        if (string7 != null) {
                            String upperCase5 = string7.toUpperCase();
                            Intrinsics.checkExpressionValueIsNotNull(upperCase5, "(this as java.lang.String).toUpperCase()");
                            formTitleView3.setText(upperCase5);
                            AnkoInternals.INSTANCE.addView(_linearlayout2, initiateView5);
                            LinearLayout.LayoutParams layoutParams7 = new LinearLayout.LayoutParams(CustomLayoutPropertiesKt.getWrapContent(), CustomLayoutPropertiesKt.getWrapContent());
                            Context context15 = _linearlayout3.getContext();
                            Intrinsics.checkExpressionValueIsNotNull(context15, "context");
                            layoutParams7.setMarginStart(DimensionsKt.dip(context15, 16));
                            Context context16 = _linearlayout3.getContext();
                            Intrinsics.checkExpressionValueIsNotNull(context16, "context");
                            layoutParams7.topMargin = DimensionsKt.dip(context16, 8);
                            formTitleView3.setLayoutParams(layoutParams7);
                            Spinner invoke7 = C$$Anko$Factories$Sdk15View.INSTANCE.getSPINNER().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0));
                            Spinner spinner5 = invoke7;
                            spinner5.setAdapter((SpinnerAdapter) new ProfileSpinnerAdapter(this.genderList));
                            AnkoInternals.INSTANCE.addView(_linearlayout2, invoke7);
                            Spinner spinner6 = spinner5;
                            LinearLayout.LayoutParams layoutParams8 = new LinearLayout.LayoutParams(CustomLayoutPropertiesKt.getMatchParent(), CustomLayoutPropertiesKt.getWrapContent());
                            Context context17 = _linearlayout3.getContext();
                            Intrinsics.checkExpressionValueIsNotNull(context17, "context");
                            layoutParams8.setMarginStart(DimensionsKt.dip(context17, 16));
                            spinner6.setLayoutParams(layoutParams8);
                            this.gender = spinner6;
                            View invoke8 = C$$Anko$Factories$Sdk15View.INSTANCE.getVIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0));
                            Context context18 = invoke8.getContext();
                            Intrinsics.checkExpressionValueIsNotNull(context18, "context");
                            Sdk15PropertiesKt.setBackgroundColor(invoke8, AndroidExtensionsKt.getColorCompat(context18, R.color.gray_divider));
                            AnkoInternals.INSTANCE.addView(_linearlayout2, invoke8);
                            LinearLayout.LayoutParams layoutParams9 = new LinearLayout.LayoutParams(-2, -2);
                            layoutParams9.width = CustomLayoutPropertiesKt.getMatchParent();
                            Context context19 = _linearlayout3.getContext();
                            Intrinsics.checkExpressionValueIsNotNull(context19, "context");
                            layoutParams9.height = DimensionsKt.dip(context19, 1.5f);
                            Context context20 = _linearlayout3.getContext();
                            Intrinsics.checkExpressionValueIsNotNull(context20, "context");
                            layoutParams9.setMarginStart(DimensionsKt.dip(context20, 16));
                            Context context21 = _linearlayout3.getContext();
                            Intrinsics.checkExpressionValueIsNotNull(context21, "context");
                            layoutParams9.setMarginEnd(DimensionsKt.dip(context21, 16));
                            invoke8.setLayoutParams(layoutParams9);
                            View initiateView6 = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0), com.liber8tech.tago.android.view.CheckBox.class);
                            com.liber8tech.tago.android.view.CheckBox checkBox = (com.liber8tech.tago.android.view.CheckBox) initiateView6;
                            checkBox.setText(checkBox.getContext().getString(R.string.profile_subscribe));
                            AnkoInternals.INSTANCE.addView(_linearlayout2, initiateView6);
                            com.liber8tech.tago.android.view.CheckBox checkBox2 = checkBox;
                            LinearLayout.LayoutParams layoutParams10 = new LinearLayout.LayoutParams(-2, -2);
                            Context context22 = _linearlayout3.getContext();
                            Intrinsics.checkExpressionValueIsNotNull(context22, "context");
                            layoutParams10.setMarginStart(DimensionsKt.dip(context22, 16));
                            Context context23 = _linearlayout3.getContext();
                            Intrinsics.checkExpressionValueIsNotNull(context23, "context");
                            layoutParams10.topMargin = DimensionsKt.dip(context23, 16);
                            checkBox2.setLayoutParams(layoutParams10);
                            this.subsCheck = checkBox2;
                            View initiateView7 = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0), com.liber8tech.tago.android.view.CheckBox.class);
                            com.liber8tech.tago.android.view.CheckBox checkBox3 = (com.liber8tech.tago.android.view.CheckBox) initiateView7;
                            checkBox3.setText(checkBox3.getContext().getString(R.string.profile_analytics));
                            AnkoInternals.INSTANCE.addView(_linearlayout2, initiateView7);
                            com.liber8tech.tago.android.view.CheckBox checkBox4 = checkBox3;
                            LinearLayout.LayoutParams layoutParams11 = new LinearLayout.LayoutParams(-2, -2);
                            Context context24 = _linearlayout3.getContext();
                            Intrinsics.checkExpressionValueIsNotNull(context24, "context");
                            layoutParams11.setMarginStart(DimensionsKt.dip(context24, 16));
                            Context context25 = _linearlayout3.getContext();
                            Intrinsics.checkExpressionValueIsNotNull(context25, "context");
                            layoutParams11.topMargin = DimensionsKt.dip(context25, 16);
                            checkBox4.setLayoutParams(layoutParams11);
                            this.analyticsCheck = checkBox4;
                            View initiateView8 = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0), TagoButton.class);
                            TagoButton tagoButton = (TagoButton) initiateView8;
                            tagoButton.setText(tagoButton.getContext().getString(R.string.save));
                            tagoButton.setColor(TagoButtonColor.GOLD);
                            TagoButton tagoButton2 = tagoButton;
                            tagoButton2.setOnClickListener(new ProfileActivityUI$inlined$sam$i$android_view_View_OnClickListener$0(new ProfileActivityUI$createView$$inlined$with$lambda$1(tagoButton, this, ankoContext)));
                            AnkoInternals.INSTANCE.addView(_linearlayout2, initiateView8);
                            LinearLayout.LayoutParams layoutParams12 = new LinearLayout.LayoutParams(-2, -2);
                            Context context26 = _linearlayout3.getContext();
                            Intrinsics.checkExpressionValueIsNotNull(context26, "context");
                            layoutParams12.topMargin = DimensionsKt.dip(context26, 56);
                            Context context27 = _linearlayout3.getContext();
                            Intrinsics.checkExpressionValueIsNotNull(context27, "context");
                            layoutParams12.setMarginStart(DimensionsKt.dip(context27, 20));
                            Context context28 = _linearlayout3.getContext();
                            Intrinsics.checkExpressionValueIsNotNull(context28, "context");
                            layoutParams12.setMarginEnd(DimensionsKt.dip(context28, 20));
                            layoutParams12.width = CustomLayoutPropertiesKt.getMatchParent();
                            tagoButton2.setLayoutParams(layoutParams12);
                            AnkoInternals.INSTANCE.addView(_scrollview, invoke2);
                            AnkoInternals.INSTANCE.addView(ankoContext2, invoke);
                            return invoke;
                        }
                        throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
                    }
                    throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
                }
                throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
            }
            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
        }
        throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
    }
}
