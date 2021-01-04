package com.liber8tech.tago.android.ui;

import android.content.Context;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.liber8tech.tago.R;
import com.liber8tech.tago.android.activity.TagoDetailsActivity;
import com.liber8tech.tago.android.view.TagoButton;
import com.liber8tech.tago.android.view.TagoButtonColor;
import com.liber8tech.tago.android.view.TextInputView;
import com.liber8tech.tago.model.TagoDevice;
import com.liber8tech.tago.util.extension.AndroidExtensionsKt;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
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

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0016\u00101\u001a\u0002022\f\u00103\u001a\b\u0012\u0004\u0012\u00020\u000204H\u0016J\u0016\u00105\u001a\u00020\u00162\u0006\u00106\u001a\u0002072\u0006\u00108\u001a\u000209R\u001a\u0010\u0004\u001a\u00020\u0005X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u0005X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\tR\u001a\u0010\r\u001a\u00020\u000eX.¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R&\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00160\u0014X\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR,\u0010\u001b\u001a\u0014\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u00160\u001cX\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001a\u0010\"\u001a\u00020\u0005X.¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u0007\"\u0004\b$\u0010\tR\u001a\u0010%\u001a\u00020\u0005X.¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\u0007\"\u0004\b'\u0010\tR&\u0010(\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00160\u0014X\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010\u0018\"\u0004\b*\u0010\u001aR\u001a\u0010+\u001a\u00020\u000eX.¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010\u0010\"\u0004\b-\u0010\u0012R\u001a\u0010.\u001a\u00020\u0005X.¢\u0006\u000e\n\u0000\u001a\u0004\b/\u0010\u0007\"\u0004\b0\u0010\t¨\u0006:"}, d2 = {"Lcom/liber8tech/tago/android/ui/TagoDetailsUI;", "Lorg/jetbrains/anko/AnkoComponent;", "Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;", "()V", "battery", "Lcom/liber8tech/tago/android/view/TextInputView;", "getBattery", "()Lcom/liber8tech/tago/android/view/TextInputView;", "setBattery", "(Lcom/liber8tech/tago/android/view/TextInputView;)V", TtmlNode.ATTR_TTS_COLOR, "getColor", "setColor", "deleteButton", "Landroid/widget/Button;", "getDeleteButton", "()Landroid/widget/Button;", "setDeleteButton", "(Landroid/widget/Button;)V", "deleteOnClick", "Lkotlin/Function1;", "Landroid/view/View;", "", "getDeleteOnClick", "()Lkotlin/jvm/functions/Function1;", "setDeleteOnClick", "(Lkotlin/jvm/functions/Function1;)V", "editTextFocusChange", "Lkotlin/Function2;", "", "getEditTextFocusChange", "()Lkotlin/jvm/functions/Function2;", "setEditTextFocusChange", "(Lkotlin/jvm/functions/Function2;)V", "mac", "getMac", "setMac", "name", "getName", "setName", "save", "getSave", "setSave", "saveButton", "getSaveButton", "setSaveButton", "size", "getSize", "setSize", "createView", "Landroid/widget/LinearLayout;", "ui", "Lorg/jetbrains/anko/AnkoContext;", "setTago", "ctx", "Landroid/content/Context;", "device", "Lcom/liber8tech/tago/model/TagoDevice;", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: TagoDetailsUI.kt */
public final class TagoDetailsUI implements AnkoComponent<TagoDetailsActivity> {
    @NotNull
    public TextInputView battery;
    @NotNull
    public TextInputView color;
    @NotNull
    public Button deleteButton;
    @NotNull
    private Function1<? super View, Unit> deleteOnClick = TagoDetailsUI$deleteOnClick$1.INSTANCE;
    @NotNull
    private Function2<? super View, ? super Boolean, Unit> editTextFocusChange = TagoDetailsUI$editTextFocusChange$1.INSTANCE;
    @NotNull
    public TextInputView mac;
    @NotNull
    public TextInputView name;
    @NotNull
    private Function1<? super View, Unit> save = TagoDetailsUI$save$1.INSTANCE;
    @NotNull
    public Button saveButton;
    @NotNull
    public TextInputView size;

    @NotNull
    public final TextInputView getName() {
        TextInputView textInputView = this.name;
        if (textInputView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("name");
        }
        return textInputView;
    }

    public final void setName(@NotNull TextInputView textInputView) {
        Intrinsics.checkParameterIsNotNull(textInputView, "<set-?>");
        this.name = textInputView;
    }

    @NotNull
    public final TextInputView getColor() {
        TextInputView textInputView = this.color;
        if (textInputView == null) {
            Intrinsics.throwUninitializedPropertyAccessException(TtmlNode.ATTR_TTS_COLOR);
        }
        return textInputView;
    }

    public final void setColor(@NotNull TextInputView textInputView) {
        Intrinsics.checkParameterIsNotNull(textInputView, "<set-?>");
        this.color = textInputView;
    }

    @NotNull
    public final TextInputView getSize() {
        TextInputView textInputView = this.size;
        if (textInputView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("size");
        }
        return textInputView;
    }

    public final void setSize(@NotNull TextInputView textInputView) {
        Intrinsics.checkParameterIsNotNull(textInputView, "<set-?>");
        this.size = textInputView;
    }

    @NotNull
    public final TextInputView getBattery() {
        TextInputView textInputView = this.battery;
        if (textInputView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("battery");
        }
        return textInputView;
    }

    public final void setBattery(@NotNull TextInputView textInputView) {
        Intrinsics.checkParameterIsNotNull(textInputView, "<set-?>");
        this.battery = textInputView;
    }

    @NotNull
    public final TextInputView getMac() {
        TextInputView textInputView = this.mac;
        if (textInputView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mac");
        }
        return textInputView;
    }

    public final void setMac(@NotNull TextInputView textInputView) {
        Intrinsics.checkParameterIsNotNull(textInputView, "<set-?>");
        this.mac = textInputView;
    }

    @NotNull
    public final Button getDeleteButton() {
        Button button = this.deleteButton;
        if (button == null) {
            Intrinsics.throwUninitializedPropertyAccessException("deleteButton");
        }
        return button;
    }

    public final void setDeleteButton(@NotNull Button button) {
        Intrinsics.checkParameterIsNotNull(button, "<set-?>");
        this.deleteButton = button;
    }

    @NotNull
    public final Button getSaveButton() {
        Button button = this.saveButton;
        if (button == null) {
            Intrinsics.throwUninitializedPropertyAccessException("saveButton");
        }
        return button;
    }

    public final void setSaveButton(@NotNull Button button) {
        Intrinsics.checkParameterIsNotNull(button, "<set-?>");
        this.saveButton = button;
    }

    /* JADX DEBUG: Type inference failed for r0v0. Raw type applied. Possible types: kotlin.jvm.functions.Function1<? super android.view.View, kotlin.Unit>, kotlin.jvm.functions.Function1<android.view.View, kotlin.Unit> */
    @NotNull
    public final Function1<View, Unit> getDeleteOnClick() {
        return this.deleteOnClick;
    }

    public final void setDeleteOnClick(@NotNull Function1<? super View, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(function1, "<set-?>");
        this.deleteOnClick = function1;
    }

    /* JADX DEBUG: Type inference failed for r0v0. Raw type applied. Possible types: kotlin.jvm.functions.Function1<? super android.view.View, kotlin.Unit>, kotlin.jvm.functions.Function1<android.view.View, kotlin.Unit> */
    @NotNull
    public final Function1<View, Unit> getSave() {
        return this.save;
    }

    public final void setSave(@NotNull Function1<? super View, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(function1, "<set-?>");
        this.save = function1;
    }

    /* JADX DEBUG: Type inference failed for r0v0. Raw type applied. Possible types: kotlin.jvm.functions.Function2<? super android.view.View, ? super java.lang.Boolean, kotlin.Unit>, kotlin.jvm.functions.Function2<android.view.View, java.lang.Boolean, kotlin.Unit> */
    @NotNull
    public final Function2<View, Boolean, Unit> getEditTextFocusChange() {
        return this.editTextFocusChange;
    }

    public final void setEditTextFocusChange(@NotNull Function2<? super View, ? super Boolean, Unit> function2) {
        Intrinsics.checkParameterIsNotNull(function2, "<set-?>");
        this.editTextFocusChange = function2;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [org.jetbrains.anko.AnkoContext<com.liber8tech.tago.android.activity.TagoDetailsActivity>] */
    @Override // org.jetbrains.anko.AnkoComponent
    @NotNull
    public LinearLayout createView(@NotNull AnkoContext<? extends TagoDetailsActivity> ankoContext) {
        Intrinsics.checkParameterIsNotNull(ankoContext, "ui");
        AnkoContext<? extends TagoDetailsActivity> ankoContext2 = ankoContext;
        _LinearLayout invoke = C$$Anko$Factories$CustomViews.INSTANCE.getVERTICAL_LAYOUT_FACTORY().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(ankoContext2), 0));
        _LinearLayout _linearlayout = invoke;
        _LinearLayout _linearlayout2 = _linearlayout;
        Context context = _linearlayout.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "context");
        Sdk15PropertiesKt.setBackgroundColor(_linearlayout2, AndroidExtensionsKt.getColorCompat(context, R.color.background));
        _LinearLayout _linearlayout3 = _linearlayout;
        View initiateView = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout3), 0), TextInputView.class);
        TextInputView textInputView = (TextInputView) initiateView;
        String string = textInputView.getContext().getString(R.string.name);
        Intrinsics.checkExpressionValueIsNotNull(string, "context.getString(R.string.name)");
        if (string != null) {
            String upperCase = string.toUpperCase();
            Intrinsics.checkExpressionValueIsNotNull(upperCase, "(this as java.lang.String).toUpperCase()");
            textInputView.setHintText(upperCase);
            Context context2 = textInputView.getContext();
            Intrinsics.checkExpressionValueIsNotNull(context2, "context");
            textInputView.setIcon(AndroidExtensionsKt.getDrawableCompat(context2, R.drawable.ic_edit_white_24dp));
            textInputView.getEditText().setOnFocusChangeListener(new TagoDetailsUI$inlined$sam$i$android_view_View_OnFocusChangeListener$0(new TagoDetailsUI$createView$$inlined$with$lambda$1(this)));
            AnkoInternals.INSTANCE.addView(_linearlayout3, initiateView);
            this.name = textInputView;
            View initiateView2 = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout3), 0), TextInputView.class);
            TextInputView textInputView2 = (TextInputView) initiateView2;
            String string2 = textInputView2.getContext().getString(R.string.color);
            Intrinsics.checkExpressionValueIsNotNull(string2, "context.getString(R.string.color)");
            if (string2 != null) {
                String upperCase2 = string2.toUpperCase();
                Intrinsics.checkExpressionValueIsNotNull(upperCase2, "(this as java.lang.String).toUpperCase()");
                textInputView2.setHintText(upperCase2);
                textInputView2.setTextEnabled(false);
                AnkoInternals.INSTANCE.addView(_linearlayout3, initiateView2);
                this.color = textInputView2;
                View initiateView3 = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout3), 0), TextInputView.class);
                TextInputView textInputView3 = (TextInputView) initiateView3;
                String string3 = textInputView3.getContext().getString(R.string.size);
                Intrinsics.checkExpressionValueIsNotNull(string3, "context.getString(R.string.size)");
                if (string3 != null) {
                    String upperCase3 = string3.toUpperCase();
                    Intrinsics.checkExpressionValueIsNotNull(upperCase3, "(this as java.lang.String).toUpperCase()");
                    textInputView3.setHintText(upperCase3);
                    textInputView3.setTextEnabled(false);
                    AnkoInternals.INSTANCE.addView(_linearlayout3, initiateView3);
                    this.size = textInputView3;
                    View initiateView4 = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout3), 0), TextInputView.class);
                    TextInputView textInputView4 = (TextInputView) initiateView4;
                    String string4 = textInputView4.getContext().getString(R.string.battery);
                    Intrinsics.checkExpressionValueIsNotNull(string4, "context.getString(R.string.battery)");
                    if (string4 != null) {
                        String upperCase4 = string4.toUpperCase();
                        Intrinsics.checkExpressionValueIsNotNull(upperCase4, "(this as java.lang.String).toUpperCase()");
                        textInputView4.setHintText(upperCase4);
                        textInputView4.setTextEnabled(false);
                        AnkoInternals.INSTANCE.addView(_linearlayout3, initiateView4);
                        this.battery = textInputView4;
                        View initiateView5 = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout3), 0), TextInputView.class);
                        TextInputView textInputView5 = (TextInputView) initiateView5;
                        String string5 = textInputView5.getContext().getString(R.string.bluetooth);
                        Intrinsics.checkExpressionValueIsNotNull(string5, "context.getString(R.string.bluetooth)");
                        if (string5 != null) {
                            String upperCase5 = string5.toUpperCase();
                            Intrinsics.checkExpressionValueIsNotNull(upperCase5, "(this as java.lang.String).toUpperCase()");
                            textInputView5.setHintText(upperCase5);
                            textInputView5.setTextEnabled(false);
                            AnkoInternals.INSTANCE.addView(_linearlayout3, initiateView5);
                            this.mac = textInputView5;
                            View initiateView6 = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout3), 0), TagoButton.class);
                            TagoButton tagoButton = (TagoButton) initiateView6;
                            tagoButton.setText(tagoButton.getContext().getString(R.string.delete));
                            tagoButton.setColor(TagoButtonColor.RED);
                            TagoButton tagoButton2 = tagoButton;
                            tagoButton2.setOnClickListener(new TagoDetailsUI$inlined$sam$i$android_view_View_OnClickListener$0(new TagoDetailsUI$createView$$inlined$with$lambda$2(tagoButton, this)));
                            AnkoInternals.INSTANCE.addView(_linearlayout3, initiateView6);
                            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                            Context context3 = _linearlayout2.getContext();
                            Intrinsics.checkExpressionValueIsNotNull(context3, "context");
                            layoutParams.topMargin = DimensionsKt.dip(context3, 56);
                            Context context4 = _linearlayout2.getContext();
                            Intrinsics.checkExpressionValueIsNotNull(context4, "context");
                            layoutParams.setMarginStart(DimensionsKt.dip(context4, 20));
                            Context context5 = _linearlayout2.getContext();
                            Intrinsics.checkExpressionValueIsNotNull(context5, "context");
                            layoutParams.setMarginEnd(DimensionsKt.dip(context5, 20));
                            layoutParams.width = CustomLayoutPropertiesKt.getMatchParent();
                            tagoButton2.setLayoutParams(layoutParams);
                            this.deleteButton = tagoButton2;
                            View initiateView7 = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout3), 0), TagoButton.class);
                            TagoButton tagoButton3 = (TagoButton) initiateView7;
                            tagoButton3.setText(tagoButton3.getContext().getString(R.string.save));
                            tagoButton3.setColor(TagoButtonColor.GOLD);
                            TagoButton tagoButton4 = tagoButton3;
                            tagoButton4.setOnClickListener(new TagoDetailsUI$inlined$sam$i$android_view_View_OnClickListener$0(new TagoDetailsUI$createView$$inlined$with$lambda$3(tagoButton3, this)));
                            tagoButton4.setVisibility(8);
                            AnkoInternals.INSTANCE.addView(_linearlayout3, initiateView7);
                            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
                            Context context6 = _linearlayout2.getContext();
                            Intrinsics.checkExpressionValueIsNotNull(context6, "context");
                            layoutParams2.topMargin = DimensionsKt.dip(context6, 56);
                            Context context7 = _linearlayout2.getContext();
                            Intrinsics.checkExpressionValueIsNotNull(context7, "context");
                            layoutParams2.setMarginStart(DimensionsKt.dip(context7, 20));
                            Context context8 = _linearlayout2.getContext();
                            Intrinsics.checkExpressionValueIsNotNull(context8, "context");
                            layoutParams2.setMarginEnd(DimensionsKt.dip(context8, 20));
                            layoutParams2.width = CustomLayoutPropertiesKt.getMatchParent();
                            tagoButton4.setLayoutParams(layoutParams2);
                            this.saveButton = tagoButton4;
                            AnkoInternals.INSTANCE.addView(ankoContext2, invoke);
                            _LinearLayout _linearlayout4 = invoke;
                            _linearlayout4.setLayoutParams(new LinearLayout.LayoutParams(CustomLayoutPropertiesKt.getMatchParent(), CustomLayoutPropertiesKt.getMatchParent()));
                            return _linearlayout4;
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

    public final void setTago(@NotNull Context context, @NotNull TagoDevice tagoDevice) {
        Intrinsics.checkParameterIsNotNull(context, "ctx");
        Intrinsics.checkParameterIsNotNull(tagoDevice, "device");
        TextInputView textInputView = this.name;
        if (textInputView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("name");
        }
        String name2 = tagoDevice.getName();
        if (name2 == null) {
            name2 = "";
        }
        textInputView.setText(name2);
        TextInputView textInputView2 = this.size;
        if (textInputView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("size");
        }
        String size2 = tagoDevice.getSize();
        if (size2 == null) {
            size2 = "";
        }
        textInputView2.setText(size2);
        TextInputView textInputView3 = this.color;
        if (textInputView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException(TtmlNode.ATTR_TTS_COLOR);
        }
        String color2 = tagoDevice.getColor();
        if (color2 == null) {
            color2 = "";
        }
        textInputView3.setText(color2);
        if (tagoDevice.getLowBattery()) {
            TextInputView textInputView4 = this.battery;
            if (textInputView4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("battery");
            }
            String string = context.getString(R.string.low_battery);
            Intrinsics.checkExpressionValueIsNotNull(string, "ctx.getString(R.string.low_battery)");
            textInputView4.setText(string);
        } else {
            TextInputView textInputView5 = this.battery;
            if (textInputView5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("battery");
            }
            String string2 = context.getString(R.string.normal_battery);
            Intrinsics.checkExpressionValueIsNotNull(string2, "ctx.getString(R.string.normal_battery)");
            textInputView5.setText(string2);
        }
        TextInputView textInputView6 = this.mac;
        if (textInputView6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mac");
        }
        textInputView6.setText(tagoDevice.getIdentifier());
    }
}
