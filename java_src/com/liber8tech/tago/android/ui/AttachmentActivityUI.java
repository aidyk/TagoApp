package com.liber8tech.tago.android.ui;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.liber8tech.tago.R;
import com.liber8tech.tago.android.activity.AttachmentActivity;
import com.liber8tech.tago.util.extension.AndroidExtensionsKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.anko.AnkoComponent;
import org.jetbrains.anko.AnkoContext;
import org.jetbrains.anko.C$$Anko$Factories$CustomViews;
import org.jetbrains.anko.C$$Anko$Factories$Sdk15View;
import org.jetbrains.anko.CustomLayoutPropertiesKt;
import org.jetbrains.anko.CustomViewPropertiesKt;
import org.jetbrains.anko.DimensionsKt;
import org.jetbrains.anko._LinearLayout;
import org.jetbrains.anko.internals.AnkoInternals;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0016\u0010\u0010\u001a\u00020\u00112\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00020\u0013H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX.¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0014"}, d2 = {"Lcom/liber8tech/tago/android/ui/AttachmentActivityUI;", "Lorg/jetbrains/anko/AnkoComponent;", "Lcom/liber8tech/tago/android/activity/AttachmentActivity;", "()V", "loader", "Landroid/widget/ProgressBar;", "getLoader", "()Landroid/widget/ProgressBar;", "setLoader", "(Landroid/widget/ProgressBar;)V", "morePages", "Landroid/widget/TextView;", "getMorePages", "()Landroid/widget/TextView;", "setMorePages", "(Landroid/widget/TextView;)V", "createView", "Landroid/widget/LinearLayout;", "ui", "Lorg/jetbrains/anko/AnkoContext;", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: AttachmentActivityUI.kt */
public final class AttachmentActivityUI implements AnkoComponent<AttachmentActivity> {
    @NotNull
    public ProgressBar loader;
    @NotNull
    public TextView morePages;

    @NotNull
    public final TextView getMorePages() {
        TextView textView = this.morePages;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("morePages");
        }
        return textView;
    }

    public final void setMorePages(@NotNull TextView textView) {
        Intrinsics.checkParameterIsNotNull(textView, "<set-?>");
        this.morePages = textView;
    }

    @NotNull
    public final ProgressBar getLoader() {
        ProgressBar progressBar = this.loader;
        if (progressBar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loader");
        }
        return progressBar;
    }

    public final void setLoader(@NotNull ProgressBar progressBar) {
        Intrinsics.checkParameterIsNotNull(progressBar, "<set-?>");
        this.loader = progressBar;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [org.jetbrains.anko.AnkoContext<com.liber8tech.tago.android.activity.AttachmentActivity>] */
    @Override // org.jetbrains.anko.AnkoComponent
    @NotNull
    public LinearLayout createView(@NotNull AnkoContext<? extends AttachmentActivity> ankoContext) {
        Intrinsics.checkParameterIsNotNull(ankoContext, "ui");
        AnkoContext<? extends AttachmentActivity> ankoContext2 = ankoContext;
        _LinearLayout invoke = C$$Anko$Factories$CustomViews.INSTANCE.getVERTICAL_LAYOUT_FACTORY().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(ankoContext2), 0));
        _LinearLayout _linearlayout = invoke;
        _LinearLayout _linearlayout2 = _linearlayout;
        TextView invoke2 = C$$Anko$Factories$Sdk15View.INSTANCE.getTEXT_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0));
        TextView textView = invoke2;
        CustomViewPropertiesKt.setTextColorResource(textView, R.color.white);
        textView.setGravity(17);
        textView.setTextSize(16.0f);
        textView.setText(_linearlayout.getContext().getString(R.string.attachment_title));
        AnkoInternals.INSTANCE.addView(_linearlayout2, invoke2);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.width = CustomLayoutPropertiesKt.getMatchParent();
        layoutParams.height = CustomLayoutPropertiesKt.getWrapContent();
        _LinearLayout _linearlayout3 = _linearlayout;
        Context context = _linearlayout3.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "context");
        layoutParams.topMargin = DimensionsKt.dip(context, 64);
        textView.setLayoutParams(layoutParams);
        TextView invoke3 = C$$Anko$Factories$Sdk15View.INSTANCE.getTEXT_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0));
        TextView textView2 = invoke3;
        TextView textView3 = textView2;
        textView3.setVisibility(4);
        CustomViewPropertiesKt.setTextColorResource(textView2, R.color.gray);
        textView2.setGravity(17);
        textView2.setTextSize(14.0f);
        textView2.setText(_linearlayout.getContext().getString(R.string.attachment_details));
        AnkoInternals.INSTANCE.addView(_linearlayout2, invoke3);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.width = CustomLayoutPropertiesKt.getMatchParent();
        layoutParams2.height = CustomLayoutPropertiesKt.getWrapContent();
        Context context2 = _linearlayout3.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context2, "context");
        layoutParams2.topMargin = DimensionsKt.dip(context2, 64);
        Context context3 = _linearlayout3.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context3, "context");
        layoutParams2.setMarginStart(DimensionsKt.dip(context3, 32));
        Context context4 = _linearlayout3.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context4, "context");
        layoutParams2.setMarginEnd(DimensionsKt.dip(context4, 32));
        textView3.setLayoutParams(layoutParams2);
        this.morePages = textView3;
        ProgressBar invoke4 = C$$Anko$Factories$Sdk15View.INSTANCE.getPROGRESS_BAR().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0));
        ProgressBar progressBar = invoke4;
        progressBar.setVisibility(4);
        progressBar.setIndeterminate(true);
        Drawable indeterminateDrawable = progressBar.getIndeterminateDrawable();
        if (indeterminateDrawable != null) {
            Context context5 = progressBar.getContext();
            Intrinsics.checkExpressionValueIsNotNull(context5, "context");
            indeterminateDrawable.setColorFilter(AndroidExtensionsKt.getColorCompat(context5, R.color.green), PorterDuff.Mode.MULTIPLY);
        }
        AnkoInternals.INSTANCE.addView(_linearlayout2, invoke4);
        ProgressBar progressBar2 = progressBar;
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        Context context6 = _linearlayout3.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context6, "context");
        layoutParams3.width = DimensionsKt.dip(context6, 96);
        Context context7 = _linearlayout3.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context7, "context");
        layoutParams3.height = DimensionsKt.dip(context7, 96);
        layoutParams3.gravity = 1;
        Context context8 = _linearlayout3.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context8, "context");
        layoutParams3.topMargin = DimensionsKt.dip(context8, 64);
        progressBar2.setLayoutParams(layoutParams3);
        this.loader = progressBar2;
        AnkoInternals.INSTANCE.addView(ankoContext2, invoke);
        return invoke;
    }
}
