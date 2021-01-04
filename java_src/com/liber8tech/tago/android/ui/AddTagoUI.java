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
import com.liber8tech.tago.android.activity.AddTagoActivity;
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

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0019\u0012\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\u0002\u0010\u0007J\u0016\u0010\u0012\u001a\u00020\u00132\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00020\u0015H\u0016J\u0014\u0010\u0016\u001a\u00020\u00062\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00050\u0018R\u000e\u0010\b\u001a\u00020\tX.¢\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u00020\u000bX.¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0011X\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/liber8tech/tago/android/ui/AddTagoUI;", "Lorg/jetbrains/anko/AnkoComponent;", "Lcom/liber8tech/tago/android/activity/AddTagoActivity;", "onDeviceClick", "Lkotlin/Function1;", "Lcom/polidea/rxandroidble2/RxBleDevice;", "", "(Lkotlin/jvm/functions/Function1;)V", "dimView", "Landroid/view/View;", "recyclerView", "Landroid/support/v7/widget/RecyclerView;", "getRecyclerView", "()Landroid/support/v7/widget/RecyclerView;", "setRecyclerView", "(Landroid/support/v7/widget/RecyclerView;)V", "tagoAdapter", "Lcom/liber8tech/tago/android/adapter/AddTagoAdapter;", "createView", "Landroid/widget/FrameLayout;", "ui", "Lorg/jetbrains/anko/AnkoContext;", "setDevices", "devices", "", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: AddTagoUI.kt */
public final class AddTagoUI implements AnkoComponent<AddTagoActivity> {
    private View dimView;
    @NotNull
    public RecyclerView recyclerView;
    private final AddTagoAdapter tagoAdapter;

    public AddTagoUI(@NotNull Function1<? super RxBleDevice, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(function1, "onDeviceClick");
        this.tagoAdapter = new AddTagoAdapter(function1, false, 2, null);
    }

    @NotNull
    public final RecyclerView getRecyclerView() {
        RecyclerView recyclerView2 = this.recyclerView;
        if (recyclerView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recyclerView");
        }
        return recyclerView2;
    }

    public final void setRecyclerView(@NotNull RecyclerView recyclerView2) {
        Intrinsics.checkParameterIsNotNull(recyclerView2, "<set-?>");
        this.recyclerView = recyclerView2;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [org.jetbrains.anko.AnkoContext<com.liber8tech.tago.android.activity.AddTagoActivity>] */
    @Override // org.jetbrains.anko.AnkoComponent
    @NotNull
    public FrameLayout createView(@NotNull AnkoContext<? extends AddTagoActivity> ankoContext) {
        Intrinsics.checkParameterIsNotNull(ankoContext, "ui");
        AnkoContext<? extends AddTagoActivity> ankoContext2 = ankoContext;
        _FrameLayout invoke = C$$Anko$Factories$Sdk15ViewGroup.INSTANCE.getFRAME_LAYOUT().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(ankoContext2), 0));
        _FrameLayout _framelayout = invoke;
        _LinearLayout invoke2 = C$$Anko$Factories$CustomViews.INSTANCE.getVERTICAL_LAYOUT_FACTORY().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_framelayout), 0));
        _LinearLayout _linearlayout = invoke2;
        _LinearLayout _linearlayout2 = _linearlayout;
        Context context = _linearlayout2.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "context");
        int dip = DimensionsKt.dip(context, 20);
        Context context2 = _linearlayout2.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context2, "context");
        _linearlayout.setPadding(dip, 0, DimensionsKt.dip(context2, 20), 0);
        Sdk15PropertiesKt.setBackgroundColor(_linearlayout2, AndroidExtensionsKt.getColorCompat(ankoContext.getCtx(), R.color.background));
        _LinearLayout _linearlayout3 = _linearlayout;
        Space invoke3 = C$$Anko$Factories$Sdk15View.INSTANCE.getSPACE().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout3), 0));
        AnkoInternals.INSTANCE.addView(_linearlayout3, invoke3);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        Context context3 = _linearlayout2.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context3, "context");
        layoutParams.width = DimensionsKt.dip(context3, 0);
        layoutParams.height = 0;
        layoutParams.weight = 0.1f;
        invoke3.setLayoutParams(layoutParams);
        TextView invoke4 = C$$Anko$Factories$Sdk15View.INSTANCE.getTEXT_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout3), 0));
        TextView textView = invoke4;
        textView.setText(ankoContext.getCtx().getString(R.string.add_device_title));
        textView.setAllCaps(true);
        textView.setTextSize(20.0f);
        Context context4 = textView.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context4, "context");
        Sdk15PropertiesKt.setTextColor(textView, AndroidExtensionsKt.getColorCompat(context4, R.color.white));
        TypefacesExtensionKt.regular(textView);
        AnkoInternals.INSTANCE.addView(_linearlayout3, invoke4);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(CustomLayoutPropertiesKt.getWrapContent(), CustomLayoutPropertiesKt.getWrapContent());
        layoutParams2.gravity = 1;
        Context context5 = _linearlayout2.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context5, "context");
        layoutParams2.setMargins(0, 0, 0, DimensionsKt.dip(context5, 10));
        textView.setLayoutParams(layoutParams2);
        TextView invoke5 = C$$Anko$Factories$Sdk15View.INSTANCE.getTEXT_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout3), 0));
        TextView textView2 = invoke5;
        textView2.setText(ankoContext.getCtx().getString(R.string.add_device_subtitle));
        textView2.setTextSize(12.0f);
        Context context6 = textView2.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context6, "context");
        Sdk15PropertiesKt.setTextColor(textView2, AndroidExtensionsKt.getColorCompat(context6, R.color.white));
        textView2.setGravity(1);
        TypefacesExtensionKt.regular(textView2);
        AnkoInternals.INSTANCE.addView(_linearlayout3, invoke5);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(CustomLayoutPropertiesKt.getWrapContent(), CustomLayoutPropertiesKt.getWrapContent());
        layoutParams3.gravity = 1;
        textView2.setLayoutParams(layoutParams3);
        _RecyclerView invoke6 = C$$Anko$Factories$RecyclerviewV7ViewGroup.INSTANCE.getRECYCLER_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout3), 0));
        _RecyclerView _recyclerview = invoke6;
        _recyclerview.setLayoutManager(new LinearLayoutManager(ankoContext.getCtx()));
        _recyclerview.setHasFixedSize(true);
        _recyclerview.setAdapter(this.tagoAdapter);
        AnkoInternals.INSTANCE.addView(_linearlayout3, invoke6);
        _RecyclerView _recyclerview2 = invoke6;
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams4.width = CustomLayoutPropertiesKt.getMatchParent();
        layoutParams4.height = 0;
        layoutParams4.weight = 0.5f;
        _recyclerview2.setLayoutParams(layoutParams4);
        this.recyclerView = _recyclerview2;
        AnkoInternals.INSTANCE.addView(_framelayout, invoke2);
        View invoke7 = C$$Anko$Factories$Sdk15View.INSTANCE.getVIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_framelayout), 0));
        Sdk15PropertiesKt.setBackgroundColor(invoke7, Color.parseColor("#BE000000"));
        invoke7.setVisibility(8);
        invoke7.setOnTouchListener(new AddTagoUI$inlined$sam$i$android_view_View_OnTouchListener$0(AddTagoUI$createView$1$root$1$2$1.INSTANCE));
        AnkoInternals.INSTANCE.addView(_framelayout, invoke7);
        FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams5.width = CustomLayoutPropertiesKt.getMatchParent();
        layoutParams5.height = CustomLayoutPropertiesKt.getMatchParent();
        invoke7.setLayoutParams(layoutParams5);
        this.dimView = invoke7;
        AnkoInternals.INSTANCE.addView(ankoContext2, invoke);
        _FrameLayout _framelayout2 = invoke;
        _framelayout2.setLayoutParams(new ViewGroup.LayoutParams(CustomLayoutPropertiesKt.getMatchParent(), CustomLayoutPropertiesKt.getMatchParent()));
        return _framelayout2;
    }

    public final void setDevices(@NotNull List<? extends RxBleDevice> list) {
        Intrinsics.checkParameterIsNotNull(list, "devices");
        this.tagoAdapter.setDevices(list);
    }
}
