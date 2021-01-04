package com.liber8tech.tago.android.activity;

import android.content.Context;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.widget.LinearLayout;
import com.liber8tech.tago.R;
import com.liber8tech.tago.util.extension.AndroidExtensionsKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.anko.AnkoComponent;
import org.jetbrains.anko.AnkoContext;
import org.jetbrains.anko.C$$Anko$Factories$CustomViews;
import org.jetbrains.anko.CustomLayoutPropertiesKt;
import org.jetbrains.anko.DimensionsKt;
import org.jetbrains.anko.Sdk15PropertiesKt;
import org.jetbrains.anko._LinearLayout;
import org.jetbrains.anko.internals.AnkoInternals;
import org.jetbrains.anko.recyclerview.v7.C$$Anko$Factories$RecyclerviewV7ViewGroup;
import org.jetbrains.anko.recyclerview.v7._RecyclerView;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0016\u0010\n\u001a\u00020\u000b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00020\rH\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\u000e"}, d2 = {"Lcom/liber8tech/tago/android/activity/StoreActivityUI;", "Lorg/jetbrains/anko/AnkoComponent;", "Lcom/liber8tech/tago/android/activity/StoreActivity;", "()V", "rowList", "Landroid/support/v7/widget/RecyclerView;", "getRowList", "()Landroid/support/v7/widget/RecyclerView;", "setRowList", "(Landroid/support/v7/widget/RecyclerView;)V", "createView", "Landroid/widget/LinearLayout;", "ui", "Lorg/jetbrains/anko/AnkoContext;", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: StoreActivity.kt */
public final class StoreActivityUI implements AnkoComponent<StoreActivity> {
    @NotNull
    public RecyclerView rowList;

    @NotNull
    public final RecyclerView getRowList() {
        RecyclerView recyclerView = this.rowList;
        if (recyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rowList");
        }
        return recyclerView;
    }

    public final void setRowList(@NotNull RecyclerView recyclerView) {
        Intrinsics.checkParameterIsNotNull(recyclerView, "<set-?>");
        this.rowList = recyclerView;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [org.jetbrains.anko.AnkoContext<com.liber8tech.tago.android.activity.StoreActivity>] */
    @Override // org.jetbrains.anko.AnkoComponent
    @NotNull
    public LinearLayout createView(@NotNull AnkoContext<? extends StoreActivity> ankoContext) {
        Intrinsics.checkParameterIsNotNull(ankoContext, "ui");
        AnkoContext<? extends StoreActivity> ankoContext2 = ankoContext;
        _LinearLayout invoke = C$$Anko$Factories$CustomViews.INSTANCE.getVERTICAL_LAYOUT_FACTORY().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(ankoContext2), 0));
        _LinearLayout _linearlayout = invoke;
        Context context = _linearlayout.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "context");
        Sdk15PropertiesKt.setBackgroundColor(_linearlayout, AndroidExtensionsKt.getColorCompat(context, R.color.black));
        _LinearLayout _linearlayout2 = _linearlayout;
        _RecyclerView invoke2 = C$$Anko$Factories$RecyclerviewV7ViewGroup.INSTANCE.getRECYCLER_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0));
        _RecyclerView _recyclerview = invoke2;
        _recyclerview.setLayoutManager(new LinearLayoutManager(_recyclerview.getContext()));
        _recyclerview.setHasFixedSize(true);
        _RecyclerView _recyclerview2 = _recyclerview;
        Context context2 = _recyclerview.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context2, "context");
        Sdk15PropertiesKt.setBackgroundColor(_recyclerview2, AndroidExtensionsKt.getColorCompat(context2, R.color.black));
        Context context3 = _recyclerview2.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context3, "context");
        int dip = DimensionsKt.dip(context3, 12);
        _recyclerview2.setPadding(dip, dip, dip, dip);
        AnkoInternals.INSTANCE.addView(_linearlayout2, invoke2);
        this.rowList = invoke2;
        AnkoInternals.INSTANCE.addView(ankoContext2, invoke);
        _LinearLayout _linearlayout3 = invoke;
        _linearlayout3.setLayoutParams(new LinearLayout.LayoutParams(CustomLayoutPropertiesKt.getMatchParent(), CustomLayoutPropertiesKt.getMatchParent()));
        return _linearlayout3;
    }
}
