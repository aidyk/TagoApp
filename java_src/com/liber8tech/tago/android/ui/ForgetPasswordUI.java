package com.liber8tech.tago.android.ui;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import com.liber8tech.tago.R;
import com.liber8tech.tago.android.activity.ForgetPasswordActivity;
import com.liber8tech.tago.android.view.TagoButton;
import com.liber8tech.tago.android.view.TagoButtonColor;
import com.liber8tech.tago.android.view.TextInputView;
import com.liber8tech.tago.util.extension.AndroidExtensionsKt;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.anko.AnkoComponent;
import org.jetbrains.anko.AnkoContext;
import org.jetbrains.anko.C$$Anko$Factories$Sdk15ViewGroup;
import org.jetbrains.anko.CustomLayoutPropertiesKt;
import org.jetbrains.anko.DimensionsKt;
import org.jetbrains.anko.Sdk15PropertiesKt;
import org.jetbrains.anko._FrameLayout;
import org.jetbrains.anko.internals.AnkoInternals;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0016\u0010\u0010\u001a\u00020\u00112\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00020\u0013H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX.¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0014"}, d2 = {"Lcom/liber8tech/tago/android/ui/ForgetPasswordUI;", "Lorg/jetbrains/anko/AnkoComponent;", "Lcom/liber8tech/tago/android/activity/ForgetPasswordActivity;", "()V", "emailInput", "Lcom/liber8tech/tago/android/view/TextInputView;", "getEmailInput", "()Lcom/liber8tech/tago/android/view/TextInputView;", "setEmailInput", "(Lcom/liber8tech/tago/android/view/TextInputView;)V", "forgotPasswordBtn", "Lcom/liber8tech/tago/android/view/TagoButton;", "getForgotPasswordBtn", "()Lcom/liber8tech/tago/android/view/TagoButton;", "setForgotPasswordBtn", "(Lcom/liber8tech/tago/android/view/TagoButton;)V", "createView", "Landroid/widget/FrameLayout;", "ui", "Lorg/jetbrains/anko/AnkoContext;", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: ForgetPasswordUI.kt */
public final class ForgetPasswordUI implements AnkoComponent<ForgetPasswordActivity> {
    @NotNull
    public TextInputView emailInput;
    @NotNull
    public TagoButton forgotPasswordBtn;

    @NotNull
    public final TagoButton getForgotPasswordBtn() {
        TagoButton tagoButton = this.forgotPasswordBtn;
        if (tagoButton == null) {
            Intrinsics.throwUninitializedPropertyAccessException("forgotPasswordBtn");
        }
        return tagoButton;
    }

    public final void setForgotPasswordBtn(@NotNull TagoButton tagoButton) {
        Intrinsics.checkParameterIsNotNull(tagoButton, "<set-?>");
        this.forgotPasswordBtn = tagoButton;
    }

    @NotNull
    public final TextInputView getEmailInput() {
        TextInputView textInputView = this.emailInput;
        if (textInputView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("emailInput");
        }
        return textInputView;
    }

    public final void setEmailInput(@NotNull TextInputView textInputView) {
        Intrinsics.checkParameterIsNotNull(textInputView, "<set-?>");
        this.emailInput = textInputView;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [org.jetbrains.anko.AnkoContext<com.liber8tech.tago.android.activity.ForgetPasswordActivity>] */
    @Override // org.jetbrains.anko.AnkoComponent
    @NotNull
    public FrameLayout createView(@NotNull AnkoContext<? extends ForgetPasswordActivity> ankoContext) {
        Intrinsics.checkParameterIsNotNull(ankoContext, "ui");
        AnkoContext<? extends ForgetPasswordActivity> ankoContext2 = ankoContext;
        _FrameLayout invoke = C$$Anko$Factories$Sdk15ViewGroup.INSTANCE.getFRAME_LAYOUT().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(ankoContext2), 0));
        _FrameLayout _framelayout = invoke;
        _FrameLayout _framelayout2 = _framelayout;
        Context context = _framelayout.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "context");
        Sdk15PropertiesKt.setBackgroundColor(_framelayout2, AndroidExtensionsKt.getColorCompat(context, R.color.background));
        _FrameLayout _framelayout3 = _framelayout;
        View initiateView = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_framelayout3), 0), TextInputView.class);
        TextInputView textInputView = (TextInputView) initiateView;
        String string = ankoContext.getCtx().getString(R.string.auth_email);
        Intrinsics.checkExpressionValueIsNotNull(string, "ctx.getString(R.string.auth_email)");
        if (string != null) {
            String upperCase = string.toUpperCase();
            Intrinsics.checkExpressionValueIsNotNull(upperCase, "(this as java.lang.String).toUpperCase()");
            textInputView.setHintText(upperCase);
            textInputView.setTextEnabled(true);
            textInputView.setTextInputType(32);
            AnkoInternals.INSTANCE.addView(_framelayout3, initiateView);
            TextInputView textInputView2 = textInputView;
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            Context context2 = _framelayout2.getContext();
            Intrinsics.checkExpressionValueIsNotNull(context2, "context");
            layoutParams.setMarginStart(DimensionsKt.dip(context2, 20));
            Context context3 = _framelayout2.getContext();
            Intrinsics.checkExpressionValueIsNotNull(context3, "context");
            layoutParams.setMarginEnd(DimensionsKt.dip(context3, 20));
            layoutParams.width = CustomLayoutPropertiesKt.getMatchParent();
            layoutParams.gravity = 17;
            textInputView2.setLayoutParams(layoutParams);
            this.emailInput = textInputView2;
            View initiateView2 = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_framelayout3), 0), TagoButton.class);
            TagoButton tagoButton = (TagoButton) initiateView2;
            tagoButton.setColor(TagoButtonColor.GOLD);
            tagoButton.setText(tagoButton.getContext().getString(R.string.send_reset_email));
            AnkoInternals.INSTANCE.addView(_framelayout3, initiateView2);
            TagoButton tagoButton2 = tagoButton;
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
            Context context4 = _framelayout2.getContext();
            Intrinsics.checkExpressionValueIsNotNull(context4, "context");
            layoutParams2.setMarginStart(DimensionsKt.dip(context4, 20));
            Context context5 = _framelayout2.getContext();
            Intrinsics.checkExpressionValueIsNotNull(context5, "context");
            layoutParams2.setMarginEnd(DimensionsKt.dip(context5, 20));
            Context context6 = _framelayout2.getContext();
            Intrinsics.checkExpressionValueIsNotNull(context6, "context");
            layoutParams2.bottomMargin = DimensionsKt.dip(context6, 64);
            layoutParams2.width = CustomLayoutPropertiesKt.getMatchParent();
            layoutParams2.gravity = 81;
            tagoButton2.setLayoutParams(layoutParams2);
            this.forgotPasswordBtn = tagoButton2;
            AnkoInternals.INSTANCE.addView(ankoContext2, invoke);
            _FrameLayout _framelayout4 = invoke;
            _framelayout4.setLayoutParams(new FrameLayout.LayoutParams(CustomLayoutPropertiesKt.getMatchParent(), CustomLayoutPropertiesKt.getMatchParent()));
            return _framelayout4;
        }
        throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
    }
}
