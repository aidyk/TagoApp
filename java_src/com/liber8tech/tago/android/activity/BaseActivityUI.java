package com.liber8tech.tago.android.activity;

import android.view.View;
import android.widget.LinearLayout;
import com.liber8tech.tago.android.view.StyledToolbar;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.anko.AnkoComponent;
import org.jetbrains.anko.AnkoContext;
import org.jetbrains.anko.C$$Anko$Factories$CustomViews;
import org.jetbrains.anko._LinearLayout;
import org.jetbrains.anko.internals.AnkoInternals;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0016\u0010\u0010\u001a\u00020\u00052\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00020\u0012H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX.¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0013"}, d2 = {"Lcom/liber8tech/tago/android/activity/BaseActivityUI;", "Lorg/jetbrains/anko/AnkoComponent;", "Lcom/liber8tech/tago/android/activity/BaseActivity;", "()V", "root", "Landroid/widget/LinearLayout;", "getRoot", "()Landroid/widget/LinearLayout;", "setRoot", "(Landroid/widget/LinearLayout;)V", "toolbar", "Lcom/liber8tech/tago/android/view/StyledToolbar;", "getToolbar", "()Lcom/liber8tech/tago/android/view/StyledToolbar;", "setToolbar", "(Lcom/liber8tech/tago/android/view/StyledToolbar;)V", "createView", "ui", "Lorg/jetbrains/anko/AnkoContext;", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: BaseActivity.kt */
public final class BaseActivityUI implements AnkoComponent<BaseActivity> {
    @NotNull
    public LinearLayout root;
    @NotNull
    public StyledToolbar toolbar;

    @NotNull
    public final StyledToolbar getToolbar() {
        StyledToolbar styledToolbar = this.toolbar;
        if (styledToolbar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("toolbar");
        }
        return styledToolbar;
    }

    public final void setToolbar(@NotNull StyledToolbar styledToolbar) {
        Intrinsics.checkParameterIsNotNull(styledToolbar, "<set-?>");
        this.toolbar = styledToolbar;
    }

    @NotNull
    public final LinearLayout getRoot() {
        LinearLayout linearLayout = this.root;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("root");
        }
        return linearLayout;
    }

    public final void setRoot(@NotNull LinearLayout linearLayout) {
        Intrinsics.checkParameterIsNotNull(linearLayout, "<set-?>");
        this.root = linearLayout;
    }

    @Override // org.jetbrains.anko.AnkoComponent
    @NotNull
    public LinearLayout createView(@NotNull AnkoContext<? extends BaseActivity> ankoContext) {
        Intrinsics.checkParameterIsNotNull(ankoContext, "ui");
        AnkoContext<? extends BaseActivity> ankoContext2 = ankoContext;
        _LinearLayout invoke = C$$Anko$Factories$CustomViews.INSTANCE.getVERTICAL_LAYOUT_FACTORY().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(ankoContext2), 0));
        _LinearLayout _linearlayout = invoke;
        _LinearLayout _linearlayout2 = _linearlayout;
        View initiateView = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0), StyledToolbar.class);
        StyledToolbar styledToolbar = (StyledToolbar) initiateView;
        styledToolbar.setText(((BaseActivity) ankoContext.getOwner()).getToolbarTitle());
        styledToolbar.setLeftIcon(((BaseActivity) ankoContext.getOwner()).getToolbarLeftIcon());
        styledToolbar.setRightIcon(((BaseActivity) ankoContext.getOwner()).getToolbarRightIcon());
        styledToolbar.setLeftIconOnCLick(((BaseActivity) ankoContext.getOwner()).getToolbarLeftIconClick());
        styledToolbar.setRightIconOnCLick(((BaseActivity) ankoContext.getOwner()).getToolbarRightIconClick());
        styledToolbar.setTitleIconOnClick(((BaseActivity) ankoContext.getOwner()).getTitleOnClick());
        AnkoInternals.INSTANCE.addView(_linearlayout2, initiateView);
        this.toolbar = styledToolbar;
        _linearlayout.addView(((BaseActivity) ankoContext.getOwner()).getContentView());
        AnkoInternals.INSTANCE.addView(ankoContext2, invoke);
        this.root = invoke;
        LinearLayout linearLayout = this.root;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("root");
        }
        return linearLayout;
    }
}
