package com.liber8tech.tago.android.ui;

import android.content.Context;
import android.graphics.Color;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.Space;
import android.widget.TextView;
import com.liber8tech.tago.R;
import com.liber8tech.tago.ViewExtensionsKt;
import com.liber8tech.tago.android.activity.KioskActivity;
import com.liber8tech.tago.android.adapter.AddTagoAdapter;
import com.liber8tech.tago.util.extension.AndroidExtensionsKt;
import com.liber8tech.tago.util.extension.TypefacesExtensionKt;
import com.polidea.rxandroidble2.RxBleDevice;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.anko.AnkoComponent;
import org.jetbrains.anko.AnkoContext;
import org.jetbrains.anko.C$$Anko$Factories$CustomViews;
import org.jetbrains.anko.C$$Anko$Factories$Sdk15View;
import org.jetbrains.anko.C$$Anko$Factories$Sdk15ViewGroup;
import org.jetbrains.anko.CustomLayoutPropertiesKt;
import org.jetbrains.anko.DimensionsKt;
import org.jetbrains.anko.Sdk15PropertiesKt;
import org.jetbrains.anko._FrameLayout;
import org.jetbrains.anko._LinearLayout;
import org.jetbrains.anko.internals.AnkoInternals;
import org.jetbrains.anko.recyclerview.v7.C$$Anko$Factories$RecyclerviewV7ViewGroup;
import org.jetbrains.anko.recyclerview.v7._RecyclerView;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0019\u0012\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\u0002\u0010\u0007J\u0016\u0010\u0019\u001a\u00020\u001a2\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00020\u001cH\u0016J\u0014\u0010\u001d\u001a\u00020\u00062\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00050\u001fR$\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\t@FX\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0016X.¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0004¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Lcom/liber8tech/tago/android/ui/KioskActivityUI;", "Lorg/jetbrains/anko/AnkoComponent;", "Lcom/liber8tech/tago/android/activity/KioskActivity;", "onDeviceClick", "Lkotlin/Function1;", "Lcom/polidea/rxandroidble2/RxBleDevice;", "", "(Lkotlin/jvm/functions/Function1;)V", "value", "", "dim", "getDim", "()Z", "setDim", "(Z)V", "dimView", "Landroid/view/View;", "getDimView", "()Landroid/view/View;", "setDimView", "(Landroid/view/View;)V", "recyclerView", "Landroid/support/v7/widget/RecyclerView;", "tagoAdapter", "Lcom/liber8tech/tago/android/adapter/AddTagoAdapter;", "createView", "Landroid/widget/FrameLayout;", "ui", "Lorg/jetbrains/anko/AnkoContext;", "setDevices", "devices", "", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: KioskActivityUI.kt */
public final class KioskActivityUI implements AnkoComponent<KioskActivity> {
    private boolean dim;
    @NotNull
    public View dimView;
    private RecyclerView recyclerView;
    private final AddTagoAdapter tagoAdapter;

    public KioskActivityUI(@NotNull Function1<? super RxBleDevice, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(function1, "onDeviceClick");
        this.tagoAdapter = new AddTagoAdapter(function1, true);
    }

    @NotNull
    public final View getDimView() {
        View view = this.dimView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dimView");
        }
        return view;
    }

    public final void setDimView(@NotNull View view) {
        Intrinsics.checkParameterIsNotNull(view, "<set-?>");
        this.dimView = view;
    }

    public final boolean getDim() {
        return this.dim;
    }

    public final void setDim(boolean z) {
        this.dim = z;
        View view = this.dimView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dimView");
        }
        view.setVisibility(z ? 0 : 8);
    }

    public final void setDevices(@NotNull List<? extends RxBleDevice> list) {
        Intrinsics.checkParameterIsNotNull(list, "devices");
        this.tagoAdapter.setDevices(list);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [org.jetbrains.anko.AnkoContext<com.liber8tech.tago.android.activity.KioskActivity>] */
    @Override // org.jetbrains.anko.AnkoComponent
    @NotNull
    public FrameLayout createView(@NotNull AnkoContext<? extends KioskActivity> ankoContext) {
        Intrinsics.checkParameterIsNotNull(ankoContext, "ui");
        AnkoContext<? extends KioskActivity> ankoContext2 = ankoContext;
        _FrameLayout invoke = C$$Anko$Factories$Sdk15ViewGroup.INSTANCE.getFRAME_LAYOUT().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(ankoContext2), 0));
        _FrameLayout _framelayout = invoke;
        _LinearLayout invoke2 = C$$Anko$Factories$CustomViews.INSTANCE.getVERTICAL_LAYOUT_FACTORY().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_framelayout), 0));
        _LinearLayout _linearlayout = invoke2;
        _linearlayout.setGravity(1);
        _LinearLayout _linearlayout2 = _linearlayout;
        Space invoke3 = C$$Anko$Factories$Sdk15View.INSTANCE.getSPACE().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0));
        AnkoInternals.INSTANCE.addView(_linearlayout2, invoke3);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        _LinearLayout _linearlayout3 = _linearlayout;
        Context context = _linearlayout3.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "context");
        layoutParams.width = DimensionsKt.dip(context, 0);
        layoutParams.height = 0;
        layoutParams.weight = 0.1f;
        invoke3.setLayoutParams(layoutParams);
        TextView invoke4 = C$$Anko$Factories$Sdk15View.INSTANCE.getTEXT_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0));
        TextView textView = invoke4;
        textView.setText(ankoContext.getCtx().getString(R.string.reset_select_title));
        Context context2 = textView.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context2, "context");
        Sdk15PropertiesKt.setTextColor(textView, AndroidExtensionsKt.getColorCompat(context2, R.color.white));
        textView.setTextSize(20.0f);
        textView.setAllCaps(true);
        ViewExtensionsKt.gravityCenterHorizontal(textView);
        TypefacesExtensionKt.regular(textView);
        AnkoInternals.INSTANCE.addView(_linearlayout2, invoke4);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(CustomLayoutPropertiesKt.getMatchParent(), CustomLayoutPropertiesKt.getWrapContent());
        Context context3 = _linearlayout3.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context3, "context");
        int dip = DimensionsKt.dip(context3, 16);
        Context context4 = _linearlayout3.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context4, "context");
        int dip2 = DimensionsKt.dip(context4, 16);
        Context context5 = _linearlayout3.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context5, "context");
        layoutParams2.setMargins(dip, 0, dip2, DimensionsKt.dip(context5, 32));
        textView.setLayoutParams(layoutParams2);
        _RecyclerView invoke5 = C$$Anko$Factories$RecyclerviewV7ViewGroup.INSTANCE.getRECYCLER_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout2), 0));
        _RecyclerView _recyclerview = invoke5;
        _recyclerview.setLayoutManager(new LinearLayoutManager(ankoContext.getCtx()));
        _recyclerview.setHasFixedSize(true);
        _recyclerview.setAdapter(this.tagoAdapter);
        AnkoInternals.INSTANCE.addView(_linearlayout2, invoke5);
        _RecyclerView _recyclerview2 = invoke5;
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.width = CustomLayoutPropertiesKt.getMatchParent();
        layoutParams3.height = 0;
        layoutParams3.weight = 0.5f;
        Context context6 = _linearlayout3.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context6, "context");
        int dip3 = DimensionsKt.dip(context6, 16);
        Context context7 = _linearlayout3.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context7, "context");
        int dip4 = DimensionsKt.dip(context7, 16);
        Context context8 = _linearlayout3.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context8, "context");
        layoutParams3.setMargins(dip3, 0, dip4, DimensionsKt.dip(context8, 32));
        _recyclerview2.setLayoutParams(layoutParams3);
        this.recyclerView = _recyclerview2;
        AnkoInternals.INSTANCE.addView(_framelayout, invoke2);
        View invoke6 = C$$Anko$Factories$Sdk15View.INSTANCE.getVIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_framelayout), 0));
        Sdk15PropertiesKt.setBackgroundColor(invoke6, Color.parseColor("#BE000000"));
        invoke6.setVisibility(8);
        ViewExtensionsKt.stealTouchEvents(invoke6);
        AnkoInternals.INSTANCE.addView(_framelayout, invoke6);
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams4.width = CustomLayoutPropertiesKt.getMatchParent();
        layoutParams4.height = CustomLayoutPropertiesKt.getMatchParent();
        invoke6.setLayoutParams(layoutParams4);
        this.dimView = invoke6;
        AnkoInternals.INSTANCE.addView(ankoContext2, invoke);
        _FrameLayout _framelayout2 = invoke;
        _framelayout2.setLayoutParams(new ViewGroup.LayoutParams(CustomLayoutPropertiesKt.getMatchParent(), CustomLayoutPropertiesKt.getMatchParent()));
        return _framelayout2;
    }
}
