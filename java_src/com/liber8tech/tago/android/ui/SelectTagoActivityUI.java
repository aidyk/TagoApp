package com.liber8tech.tago.android.ui;

import android.content.Context;
import android.graphics.Color;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.facebook.share.internal.MessengerShareContentUtility;
import com.liber8tech.tago.PicassoExtensionsKt;
import com.liber8tech.tago.R;
import com.liber8tech.tago.android.activity.SelectTagoActivity;
import com.liber8tech.tago.android.adapter.TagoAdapter;
import com.liber8tech.tago.android.view.TagoButton;
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

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0019\u0012\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\u0002\u0010\u0007J\u0016\u0010\u001b\u001a\u00020\u001c2\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00020\u001eH\u0016J\u000e\u0010\u001f\u001a\u00020\u00062\u0006\u0010 \u001a\u00020!J\u0014\u0010\"\u001a\u00020\u00062\f\u0010#\u001a\b\u0012\u0004\u0012\u00020\u00050$J\u0014\u0010%\u001a\u00020\u00062\f\u0010#\u001a\b\u0012\u0004\u0012\u00020\u00050$R&\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00060\u0004X\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\u0007R$\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000e@FX\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u000e\u0010\u0014\u001a\u00020\tX.¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X.¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X.¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0004¢\u0006\u0002\n\u0000¨\u0006&"}, d2 = {"Lcom/liber8tech/tago/android/ui/SelectTagoActivityUI;", "Lorg/jetbrains/anko/AnkoComponent;", "Lcom/liber8tech/tago/android/activity/SelectTagoActivity;", "onDeviceClick", "Lkotlin/Function1;", "Lcom/polidea/rxandroidble2/RxBleDevice;", "", "(Lkotlin/jvm/functions/Function1;)V", "cancelOnClick", "Landroid/view/View;", "getCancelOnClick", "()Lkotlin/jvm/functions/Function1;", "setCancelOnClick", "value", "", "dim", "getDim", "()Z", "setDim", "(Z)V", "dimView", MessengerShareContentUtility.MEDIA_IMAGE, "Landroid/widget/ImageView;", "recyclerView", "Landroid/support/v7/widget/RecyclerView;", "tagoAdapter", "Lcom/liber8tech/tago/android/adapter/TagoAdapter;", "createView", "Landroid/widget/FrameLayout;", "ui", "Lorg/jetbrains/anko/AnkoContext;", "setImage", "path", "", "setNearByDevices", "devices", "", "setOwnDevices", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: SelectTagoActivityUI.kt */
public final class SelectTagoActivityUI implements AnkoComponent<SelectTagoActivity> {
    @NotNull
    private Function1<? super View, Unit> cancelOnClick = SelectTagoActivityUI$cancelOnClick$1.INSTANCE;
    private boolean dim;
    private View dimView;
    private ImageView image;
    private RecyclerView recyclerView;
    private final TagoAdapter tagoAdapter;

    public SelectTagoActivityUI(@NotNull Function1<? super RxBleDevice, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(function1, "onDeviceClick");
        this.tagoAdapter = new TagoAdapter(function1);
    }

    /* JADX DEBUG: Type inference failed for r0v0. Raw type applied. Possible types: kotlin.jvm.functions.Function1<? super android.view.View, kotlin.Unit>, kotlin.jvm.functions.Function1<android.view.View, kotlin.Unit> */
    @NotNull
    public final Function1<View, Unit> getCancelOnClick() {
        return this.cancelOnClick;
    }

    public final void setCancelOnClick(@NotNull Function1<? super View, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(function1, "<set-?>");
        this.cancelOnClick = function1;
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

    public final void setOwnDevices(@NotNull List<? extends RxBleDevice> list) {
        Intrinsics.checkParameterIsNotNull(list, "devices");
        this.tagoAdapter.setOwnDevices(list);
    }

    public final void setNearByDevices(@NotNull List<? extends RxBleDevice> list) {
        Intrinsics.checkParameterIsNotNull(list, "devices");
        this.tagoAdapter.setNearByDevices(list);
    }

    public final void setImage(@NotNull String str) {
        Intrinsics.checkParameterIsNotNull(str, "path");
        ImageView imageView = this.image;
        if (imageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException(MessengerShareContentUtility.MEDIA_IMAGE);
        }
        PicassoExtensionsKt.loadUrl(imageView, str).centerCrop().start();
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [org.jetbrains.anko.AnkoContext<com.liber8tech.tago.android.activity.SelectTagoActivity>] */
    @Override // org.jetbrains.anko.AnkoComponent
    @NotNull
    public FrameLayout createView(@NotNull AnkoContext<? extends SelectTagoActivity> ankoContext) {
        Intrinsics.checkParameterIsNotNull(ankoContext, "ui");
        AnkoContext<? extends SelectTagoActivity> ankoContext2 = ankoContext;
        _FrameLayout invoke = C$$Anko$Factories$Sdk15ViewGroup.INSTANCE.getFRAME_LAYOUT().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(ankoContext2), 0));
        _FrameLayout _framelayout = invoke;
        _LinearLayout invoke2 = C$$Anko$Factories$CustomViews.INSTANCE.getVERTICAL_LAYOUT_FACTORY().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_framelayout), 0));
        _LinearLayout _linearlayout = invoke2;
        _LinearLayout _linearlayout2 = _linearlayout;
        Context context = _linearlayout2.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "context");
        int dip = DimensionsKt.dip(context, 24);
        Context context2 = _linearlayout2.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context2, "context");
        int dip2 = DimensionsKt.dip(context2, 24);
        Context context3 = _linearlayout2.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context3, "context");
        _linearlayout.setPadding(dip, 0, dip2, DimensionsKt.dip(context3, 24));
        _LinearLayout _linearlayout3 = _linearlayout;
        _RecyclerView invoke3 = C$$Anko$Factories$RecyclerviewV7ViewGroup.INSTANCE.getRECYCLER_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout3), 0));
        _RecyclerView _recyclerview = invoke3;
        _recyclerview.setLayoutManager(new LinearLayoutManager(ankoContext.getCtx()));
        _recyclerview.setHasFixedSize(true);
        _recyclerview.setAdapter(this.tagoAdapter);
        AnkoInternals.INSTANCE.addView(_linearlayout3, invoke3);
        _RecyclerView _recyclerview2 = invoke3;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.width = CustomLayoutPropertiesKt.getMatchParent();
        layoutParams.height = 0;
        layoutParams.weight = 0.5f;
        _recyclerview2.setLayoutParams(layoutParams);
        this.recyclerView = _recyclerview2;
        ImageView invoke4 = C$$Anko$Factories$Sdk15View.INSTANCE.getIMAGE_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout3), 0));
        AnkoInternals.INSTANCE.addView(_linearlayout3, invoke4);
        ImageView imageView = invoke4;
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        Context context4 = _linearlayout2.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context4, "context");
        layoutParams2.height = DimensionsKt.dip(context4, 62);
        layoutParams2.width = CustomLayoutPropertiesKt.getMatchParent();
        Context context5 = _linearlayout2.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context5, "context");
        layoutParams2.bottomMargin = DimensionsKt.dip(context5, 20);
        imageView.setLayoutParams(layoutParams2);
        this.image = imageView;
        View initiateView = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout3), 0), TagoButton.class);
        TagoButton tagoButton = (TagoButton) initiateView;
        tagoButton.setText(R.string.cancel);
        tagoButton.setOnClickListener(new SelectTagoActivityUI$inlined$sam$i$android_view_View_OnClickListener$0(new SelectTagoActivityUI$createView$$inlined$with$lambda$1(tagoButton, ankoContext, this)));
        AnkoInternals.INSTANCE.addView(_linearlayout3, initiateView);
        AnkoInternals.INSTANCE.addView(_framelayout, invoke2);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams3.width = CustomLayoutPropertiesKt.getMatchParent();
        layoutParams3.height = CustomLayoutPropertiesKt.getMatchParent();
        invoke2.setLayoutParams(layoutParams3);
        View invoke5 = C$$Anko$Factories$Sdk15View.INSTANCE.getVIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_framelayout), 0));
        Sdk15PropertiesKt.setBackgroundColor(invoke5, Color.parseColor("#BE000000"));
        invoke5.setVisibility(8);
        invoke5.setOnTouchListener(new SelectTagoActivityUI$inlined$sam$i$android_view_View_OnTouchListener$0(SelectTagoActivityUI$createView$1$root$1$3$1.INSTANCE));
        AnkoInternals.INSTANCE.addView(_framelayout, invoke5);
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams4.width = CustomLayoutPropertiesKt.getMatchParent();
        layoutParams4.height = CustomLayoutPropertiesKt.getMatchParent();
        invoke5.setLayoutParams(layoutParams4);
        this.dimView = invoke5;
        AnkoInternals.INSTANCE.addView(ankoContext2, invoke);
        _FrameLayout _framelayout2 = invoke;
        _framelayout2.setLayoutParams(new ViewGroup.LayoutParams(CustomLayoutPropertiesKt.getMatchParent(), CustomLayoutPropertiesKt.getMatchParent()));
        return _framelayout2;
    }
}
