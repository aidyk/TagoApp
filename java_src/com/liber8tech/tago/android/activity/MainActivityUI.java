package com.liber8tech.tago.android.activity;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.liber8tech.tago.R;
import com.liber8tech.tago.android.adapter.PatternAdapter;
import com.liber8tech.tago.android.view.CollectionSelectionItem;
import com.liber8tech.tago.android.view.PatternDividerItemDecoration;
import com.liber8tech.tago.android.view.PatternItemView;
import com.liber8tech.tago.model.Pattern;
import com.liber8tech.tago.util.extension.AndroidExtensionsKt;
import com.liber8tech.tago.util.extension.TypefacesExtensionKt;
import com.nikhilpanju.recyclerviewenhanced.RecyclerTouchListener;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
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
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001TB\u0019\u0012\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\u0002\u0010\u0007J\u0016\u0010:\u001a\u00020\u00062\u0006\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020>J\u0016\u0010?\u001a\u00020\"2\f\u0010@\u001a\b\u0012\u0004\u0012\u00020\u00020AH\u0016J\b\u0010B\u001a\u00020\u0006H\u0002J\u0006\u0010C\u001a\u00020\u0006J\u000e\u0010D\u001a\u00020\u00062\u0006\u0010;\u001a\u00020EJ\u000e\u0010F\u001a\u00020\u00062\u0006\u0010G\u001a\u00020\u0002JR\u0010H\u001a\u00020\u00062\u0006\u0010I\u001a\u00020E2\u0018\u0010J\u001a\u0014\u0012\u0004\u0012\u00020L\u0012\n\u0012\b\u0012\u0004\u0012\u00020N0M0K2\u0012\u0010O\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00042\u0014\u0010P\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004J\u000e\u0010Q\u001a\u00020\u00062\u0006\u0010G\u001a\u00020\u0002J\b\u0010R\u001a\u00020\u0006H\u0002J\b\u0010S\u001a\u00020\u0006H\u0002R\u001a\u0010\b\u001a\u00020\tX\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX.¢\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\u00020\u0011X.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u000e\u0010\u0016\u001a\u00020\u0011X.¢\u0006\u0002\n\u0000R\u001a\u0010\u0017\u001a\u00020\tX\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u000b\"\u0004\b\u0019\u0010\rR\u001a\u0010\u001a\u001a\u00020\u001bX.¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u000e\u0010 \u001a\u00020\u0011X.¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\"X.¢\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u001bX.¢\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u0011X.¢\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u001bX.¢\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u0011X.¢\u0006\u0002\n\u0000R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0004¢\u0006\u0002\n\u0000R\u000e\u0010'\u001a\u00020(X.¢\u0006\u0002\n\u0000R\u0010\u0010)\u001a\u0004\u0018\u00010*X\u000e¢\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020\u000fX.¢\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020\u001bX.¢\u0006\u0002\n\u0000R\u001a\u0010-\u001a\u00020\u0011X.¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010\u0013\"\u0004\b/\u0010\u0015R\u001a\u00100\u001a\u00020\"X.¢\u0006\u000e\n\u0000\u001a\u0004\b1\u00102\"\u0004\b3\u00104R\u000e\u00105\u001a\u000206X\u000e¢\u0006\u0002\n\u0000R\u001a\u00107\u001a\u00020\u0011X.¢\u0006\u000e\n\u0000\u001a\u0004\b8\u0010\u0013\"\u0004\b9\u0010\u0015¨\u0006U"}, d2 = {"Lcom/liber8tech/tago/android/activity/MainActivityUI;", "Lorg/jetbrains/anko/AnkoComponent;", "Lcom/liber8tech/tago/android/activity/MainActivity;", "galleryOnClick", "Lkotlin/Function1;", "Landroid/view/View;", "", "(Lkotlin/jvm/functions/Function1;)V", "collectionSelectorIsOpen", "", "getCollectionSelectorIsOpen", "()Z", "setCollectionSelectorIsOpen", "(Z)V", "collectionSelectorView", "Landroid/widget/LinearLayout;", "createdCollectionItem", "Landroid/widget/TextView;", "getCreatedCollectionItem", "()Landroid/widget/TextView;", "setCreatedCollectionItem", "(Landroid/widget/TextView;)V", "emptyView", "fabIsOpen", "getFabIsOpen", "setFabIsOpen", "fabMain", "Landroid/widget/ImageView;", "getFabMain", "()Landroid/widget/ImageView;", "setFabMain", "(Landroid/widget/ImageView;)V", "fabMainText", "fabOverlay", "Landroid/widget/FrameLayout;", "fabSecond", "fabSecondText", "fabThird", "fabThirdText", "list", "Landroid/support/v7/widget/RecyclerView;", "listTouchListener", "Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;", "mainView", "overlayBackground", "purchasedCollectionItem", "getPurchasedCollectionItem", "setPurchasedCollectionItem", "root", "getRoot", "()Landroid/widget/FrameLayout;", "setRoot", "(Landroid/widget/FrameLayout;)V", "screenHeight", "", "starterKitCollectionItem", "getStarterKitCollectionItem", "setStarterKitCollectionItem", "changeSelectedCollectionText", "context", "Landroid/content/Context;", "selectedCollection", "Lcom/liber8tech/tago/android/activity/MainActivityUI$SelectedCollection;", "createView", "ui", "Lorg/jetbrains/anko/AnkoContext;", "displayBlur", "fabHide", "fabShow", "Landroid/app/Activity;", "hideCollectionSelectorView", "mainActivity", "setPatterns", "activity", "mapOfPattern", "", "", "", "Lcom/liber8tech/tago/model/Pattern;", "onItemClick", "onDeleteClicked", "showCollectionSelectorView", "showEmptyListView", "showPatternList", "SelectedCollection", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: MainActivity.kt */
public final class MainActivityUI implements AnkoComponent<MainActivity> {
    private boolean collectionSelectorIsOpen;
    private LinearLayout collectionSelectorView;
    @NotNull
    public TextView createdCollectionItem;
    private TextView emptyView;
    private boolean fabIsOpen;
    @NotNull
    public ImageView fabMain;
    private TextView fabMainText;
    private FrameLayout fabOverlay;
    private ImageView fabSecond;
    private TextView fabSecondText;
    private ImageView fabThird;
    private TextView fabThirdText;
    private final Function1<View, Unit> galleryOnClick;
    private RecyclerView list;
    private RecyclerView.OnItemTouchListener listTouchListener;
    private LinearLayout mainView;
    private ImageView overlayBackground;
    @NotNull
    public TextView purchasedCollectionItem;
    @NotNull
    public FrameLayout root;
    private int screenHeight;
    @NotNull
    public TextView starterKitCollectionItem;

    /* JADX DEBUG: Multi-variable search result rejected for r2v0, resolved type: kotlin.jvm.functions.Function1<? super android.view.View, kotlin.Unit> */
    /* JADX WARN: Multi-variable type inference failed */
    public MainActivityUI(@NotNull Function1<? super View, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(function1, "galleryOnClick");
        this.galleryOnClick = function1;
    }

    @NotNull
    public static final /* synthetic */ RecyclerView access$getList$p(MainActivityUI mainActivityUI) {
        RecyclerView recyclerView = mainActivityUI.list;
        if (recyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("list");
        }
        return recyclerView;
    }

    public final boolean getFabIsOpen() {
        return this.fabIsOpen;
    }

    public final void setFabIsOpen(boolean z) {
        this.fabIsOpen = z;
    }

    public final boolean getCollectionSelectorIsOpen() {
        return this.collectionSelectorIsOpen;
    }

    public final void setCollectionSelectorIsOpen(boolean z) {
        this.collectionSelectorIsOpen = z;
    }

    @NotNull
    public final ImageView getFabMain() {
        ImageView imageView = this.fabMain;
        if (imageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fabMain");
        }
        return imageView;
    }

    public final void setFabMain(@NotNull ImageView imageView) {
        Intrinsics.checkParameterIsNotNull(imageView, "<set-?>");
        this.fabMain = imageView;
    }

    @NotNull
    public final TextView getCreatedCollectionItem() {
        TextView textView = this.createdCollectionItem;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("createdCollectionItem");
        }
        return textView;
    }

    public final void setCreatedCollectionItem(@NotNull TextView textView) {
        Intrinsics.checkParameterIsNotNull(textView, "<set-?>");
        this.createdCollectionItem = textView;
    }

    @NotNull
    public final TextView getStarterKitCollectionItem() {
        TextView textView = this.starterKitCollectionItem;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("starterKitCollectionItem");
        }
        return textView;
    }

    public final void setStarterKitCollectionItem(@NotNull TextView textView) {
        Intrinsics.checkParameterIsNotNull(textView, "<set-?>");
        this.starterKitCollectionItem = textView;
    }

    @NotNull
    public final TextView getPurchasedCollectionItem() {
        TextView textView = this.purchasedCollectionItem;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("purchasedCollectionItem");
        }
        return textView;
    }

    public final void setPurchasedCollectionItem(@NotNull TextView textView) {
        Intrinsics.checkParameterIsNotNull(textView, "<set-?>");
        this.purchasedCollectionItem = textView;
    }

    @NotNull
    public final FrameLayout getRoot() {
        FrameLayout frameLayout = this.root;
        if (frameLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("root");
        }
        return frameLayout;
    }

    public final void setRoot(@NotNull FrameLayout frameLayout) {
        Intrinsics.checkParameterIsNotNull(frameLayout, "<set-?>");
        this.root = frameLayout;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [org.jetbrains.anko.AnkoContext<com.liber8tech.tago.android.activity.MainActivity>] */
    @Override // org.jetbrains.anko.AnkoComponent
    @NotNull
    public FrameLayout createView(@NotNull AnkoContext<? extends MainActivity> ankoContext) {
        Intrinsics.checkParameterIsNotNull(ankoContext, "ui");
        AnkoContext<? extends MainActivity> ankoContext2 = ankoContext;
        _FrameLayout invoke = C$$Anko$Factories$Sdk15ViewGroup.INSTANCE.getFRAME_LAYOUT().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(ankoContext2), 0));
        _FrameLayout _framelayout = invoke;
        _FrameLayout _framelayout2 = _framelayout;
        _LinearLayout invoke2 = C$$Anko$Factories$CustomViews.INSTANCE.getVERTICAL_LAYOUT_FACTORY().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_framelayout2), 0));
        _LinearLayout _linearlayout = invoke2;
        _LinearLayout invoke3 = C$$Anko$Factories$CustomViews.INSTANCE.getVERTICAL_LAYOUT_FACTORY().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout), 0));
        _LinearLayout _linearlayout2 = invoke3;
        _LinearLayout _linearlayout3 = _linearlayout2;
        _linearlayout3.setVisibility(8);
        _LinearLayout _linearlayout4 = _linearlayout2;
        View initiateView = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout4), 0), CollectionSelectionItem.class);
        CollectionSelectionItem collectionSelectionItem = (CollectionSelectionItem) initiateView;
        collectionSelectionItem.setText(collectionSelectionItem.getContext().getString(R.string.purchased));
        AnkoInternals.INSTANCE.addView(_linearlayout4, initiateView);
        CollectionSelectionItem collectionSelectionItem2 = collectionSelectionItem;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        Context context = _linearlayout3.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "context");
        layoutParams.topMargin = DimensionsKt.dip(context, 36);
        Context context2 = _linearlayout3.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context2, "context");
        layoutParams.bottomMargin = DimensionsKt.dip(context2, 10);
        layoutParams.gravity = 17;
        collectionSelectionItem2.setLayoutParams(layoutParams);
        this.purchasedCollectionItem = collectionSelectionItem2;
        View initiateView2 = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout4), 0), CollectionSelectionItem.class);
        CollectionSelectionItem collectionSelectionItem3 = (CollectionSelectionItem) initiateView2;
        collectionSelectionItem3.setText(collectionSelectionItem3.getContext().getString(R.string.created));
        AnkoInternals.INSTANCE.addView(_linearlayout4, initiateView2);
        CollectionSelectionItem collectionSelectionItem4 = collectionSelectionItem3;
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        Context context3 = _linearlayout3.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context3, "context");
        layoutParams2.bottomMargin = DimensionsKt.dip(context3, 10);
        Context context4 = _linearlayout3.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context4, "context");
        layoutParams2.topMargin = DimensionsKt.dip(context4, 10);
        layoutParams2.gravity = 17;
        collectionSelectionItem4.setLayoutParams(layoutParams2);
        this.createdCollectionItem = collectionSelectionItem4;
        View initiateView3 = AnkoInternals.initiateView(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout4), 0), CollectionSelectionItem.class);
        CollectionSelectionItem collectionSelectionItem5 = (CollectionSelectionItem) initiateView3;
        collectionSelectionItem5.setText(collectionSelectionItem5.getContext().getString(R.string.starter_kit));
        AnkoInternals.INSTANCE.addView(_linearlayout4, initiateView3);
        CollectionSelectionItem collectionSelectionItem6 = collectionSelectionItem5;
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        Context context5 = _linearlayout3.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context5, "context");
        layoutParams3.topMargin = DimensionsKt.dip(context5, 10);
        Context context6 = _linearlayout3.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context6, "context");
        layoutParams3.bottomMargin = DimensionsKt.dip(context6, 38);
        layoutParams3.gravity = 17;
        collectionSelectionItem6.setLayoutParams(layoutParams3);
        this.starterKitCollectionItem = collectionSelectionItem6;
        AnkoInternals.INSTANCE.addView(_linearlayout, invoke3);
        this.collectionSelectorView = invoke3;
        _RecyclerView invoke4 = C$$Anko$Factories$RecyclerviewV7ViewGroup.INSTANCE.getRECYCLER_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout), 0));
        _RecyclerView _recyclerview = invoke4;
        _recyclerview.setLayoutManager(new LinearLayoutManager(ankoContext.getCtx()));
        _recyclerview.setHasFixedSize(true);
        Context context7 = _recyclerview.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context7, "context");
        Sdk15PropertiesKt.setBackgroundColor(_recyclerview, AndroidExtensionsKt.getColorCompat(context7, R.color.black));
        _recyclerview.addItemDecoration(new PatternDividerItemDecoration());
        _recyclerview.getViewTreeObserver().addOnPreDrawListener(new MainActivityUI$createView$$inlined$with$lambda$1(_recyclerview, ankoContext, this));
        AnkoInternals.INSTANCE.addView(_linearlayout, invoke4);
        _RecyclerView _recyclerview2 = invoke4;
        _recyclerview2.setLayoutParams(new LinearLayout.LayoutParams(CustomLayoutPropertiesKt.getMatchParent(), CustomLayoutPropertiesKt.getMatchParent()));
        this.list = _recyclerview2;
        TextView invoke5 = C$$Anko$Factories$Sdk15View.INSTANCE.getTEXT_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_linearlayout), 0));
        TextView textView = invoke5;
        TextView textView2 = textView;
        textView2.setVisibility(8);
        textView.setText(textView.getContext().getString(R.string.empty_collection));
        Context context8 = textView.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context8, "context");
        Sdk15PropertiesKt.setTextColor(textView, AndroidExtensionsKt.getColorCompat(context8, R.color.white));
        textView.setTextSize(18.0f);
        textView.setGravity(17);
        AnkoInternals.INSTANCE.addView(_linearlayout, invoke5);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(CustomLayoutPropertiesKt.getMatchParent(), CustomLayoutPropertiesKt.getMatchParent());
        layoutParams4.gravity = 17;
        textView2.setLayoutParams(layoutParams4);
        this.emptyView = textView2;
        AnkoInternals.INSTANCE.addView(_framelayout2, invoke2);
        _LinearLayout _linearlayout5 = invoke2;
        _linearlayout5.setLayoutParams(new FrameLayout.LayoutParams(CustomLayoutPropertiesKt.getMatchParent(), CustomLayoutPropertiesKt.getMatchParent()));
        this.mainView = _linearlayout5;
        _FrameLayout invoke6 = C$$Anko$Factories$Sdk15ViewGroup.INSTANCE.getFRAME_LAYOUT().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_framelayout2), 0));
        _FrameLayout _framelayout3 = invoke6;
        _FrameLayout _framelayout4 = _framelayout3;
        _framelayout4.setVisibility(8);
        _FrameLayout _framelayout5 = _framelayout3;
        ImageView invoke7 = C$$Anko$Factories$Sdk15View.INSTANCE.getIMAGE_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_framelayout5), 0));
        ImageView imageView = invoke7;
        imageView.setOnClickListener(new MainActivityUI$inlined$sam$i$android_view_View_OnClickListener$0(new MainActivityUI$createView$$inlined$with$lambda$2(ankoContext, this)));
        AnkoInternals.INSTANCE.addView(_framelayout5, invoke7);
        imageView.setLayoutParams(new FrameLayout.LayoutParams(CustomLayoutPropertiesKt.getMatchParent(), CustomLayoutPropertiesKt.getMatchParent()));
        this.overlayBackground = imageView;
        ImageView invoke8 = C$$Anko$Factories$Sdk15View.INSTANCE.getIMAGE_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_framelayout5), 0));
        ImageView imageView2 = invoke8;
        imageView2.setBackgroundResource(R.drawable.gallery_button);
        ImageView imageView3 = imageView2;
        imageView3.setOnClickListener(new MainActivityUI$inlined$sam$i$android_view_View_OnClickListener$0(new MainActivityUI$createView$$inlined$with$lambda$3(imageView2, ankoContext, this)));
        AnkoInternals.INSTANCE.addView(_framelayout5, invoke8);
        FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-2, -2);
        Context context9 = _framelayout4.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context9, "context");
        layoutParams5.width = DimensionsKt.dip(context9, 70);
        Context context10 = _framelayout4.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context10, "context");
        layoutParams5.height = DimensionsKt.dip(context10, 70);
        layoutParams5.gravity = 8388693;
        Context context11 = _framelayout4.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context11, "context");
        layoutParams5.bottomMargin = DimensionsKt.dip(context11, 188);
        Context context12 = _framelayout4.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context12, "context");
        layoutParams5.rightMargin = DimensionsKt.dip(context12, 24);
        imageView3.setLayoutParams(layoutParams5);
        this.fabThird = imageView3;
        TextView invoke9 = C$$Anko$Factories$Sdk15View.INSTANCE.getTEXT_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_framelayout5), 0));
        TextView textView3 = invoke9;
        textView3.setText(textView3.getResources().getString(R.string.gallery));
        Context context13 = textView3.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context13, "context");
        Sdk15PropertiesKt.setTextColor(textView3, AndroidExtensionsKt.getColorCompat(context13, 17170443));
        TypefacesExtensionKt.regular(textView3);
        textView3.setTextSize(13.0f);
        TextView textView4 = textView3;
        textView4.setOnClickListener(new MainActivityUI$inlined$sam$i$android_view_View_OnClickListener$0(new MainActivityUI$createView$$inlined$with$lambda$4(textView3, ankoContext, this)));
        AnkoInternals.INSTANCE.addView(_framelayout5, invoke9);
        FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(CustomLayoutPropertiesKt.getWrapContent(), CustomLayoutPropertiesKt.getWrapContent());
        layoutParams6.gravity = 8388693;
        Context context14 = _framelayout4.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context14, "context");
        layoutParams6.bottomMargin = DimensionsKt.dip(context14, 200);
        Context context15 = _framelayout4.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context15, "context");
        layoutParams6.rightMargin = DimensionsKt.dip(context15, 110);
        textView4.setLayoutParams(layoutParams6);
        this.fabThirdText = textView4;
        ImageView invoke10 = C$$Anko$Factories$Sdk15View.INSTANCE.getIMAGE_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_framelayout5), 0));
        ImageView imageView4 = invoke10;
        imageView4.setBackgroundResource(R.drawable.shop_button);
        AnkoInternals.INSTANCE.addView(_framelayout5, invoke10);
        ImageView imageView5 = imageView4;
        FrameLayout.LayoutParams layoutParams7 = new FrameLayout.LayoutParams(-2, -2);
        Context context16 = _framelayout4.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context16, "context");
        layoutParams7.width = DimensionsKt.dip(context16, 70);
        Context context17 = _framelayout4.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context17, "context");
        layoutParams7.height = DimensionsKt.dip(context17, 70);
        layoutParams7.gravity = 8388693;
        Context context18 = _framelayout4.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context18, "context");
        layoutParams7.bottomMargin = DimensionsKt.dip(context18, 110);
        Context context19 = _framelayout4.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context19, "context");
        layoutParams7.rightMargin = DimensionsKt.dip(context19, 24);
        imageView5.setLayoutParams(layoutParams7);
        this.fabSecond = imageView5;
        TextView invoke11 = C$$Anko$Factories$Sdk15View.INSTANCE.getTEXT_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_framelayout5), 0));
        TextView textView5 = invoke11;
        textView5.setText(textView5.getResources().getString(R.string.pattern_shop));
        Context context20 = textView5.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context20, "context");
        Sdk15PropertiesKt.setTextColor(textView5, AndroidExtensionsKt.getColorCompat(context20, 17170443));
        TypefacesExtensionKt.regular(textView5);
        textView5.setTextSize(13.0f);
        TextView textView6 = textView5;
        textView6.setOnClickListener(new MainActivityUI$inlined$sam$i$android_view_View_OnClickListener$0(new MainActivityUI$createView$1$1$2$8$1(textView5)));
        AnkoInternals.INSTANCE.addView(_framelayout5, invoke11);
        FrameLayout.LayoutParams layoutParams8 = new FrameLayout.LayoutParams(CustomLayoutPropertiesKt.getWrapContent(), CustomLayoutPropertiesKt.getWrapContent());
        layoutParams8.gravity = 8388693;
        Context context21 = _framelayout4.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context21, "context");
        layoutParams8.bottomMargin = DimensionsKt.dip(context21, 128);
        Context context22 = _framelayout4.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context22, "context");
        layoutParams8.rightMargin = DimensionsKt.dip(context22, 110);
        textView6.setLayoutParams(layoutParams8);
        this.fabSecondText = textView6;
        TextView invoke12 = C$$Anko$Factories$Sdk15View.INSTANCE.getTEXT_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_framelayout5), 0));
        TextView textView7 = invoke12;
        textView7.setText(textView7.getResources().getString(R.string.create_photo));
        Context context23 = textView7.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context23, "context");
        Sdk15PropertiesKt.setTextColor(textView7, AndroidExtensionsKt.getColorCompat(context23, 17170443));
        TypefacesExtensionKt.regular(textView7);
        textView7.setTextSize(13.0f);
        TextView textView8 = textView7;
        textView8.setOnClickListener(new MainActivityUI$inlined$sam$i$android_view_View_OnClickListener$0(new MainActivityUI$createView$1$1$2$10$1(textView7)));
        AnkoInternals.INSTANCE.addView(_framelayout5, invoke12);
        FrameLayout.LayoutParams layoutParams9 = new FrameLayout.LayoutParams(CustomLayoutPropertiesKt.getWrapContent(), CustomLayoutPropertiesKt.getWrapContent());
        layoutParams9.gravity = 8388693;
        Context context24 = _framelayout4.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context24, "context");
        layoutParams9.bottomMargin = DimensionsKt.dip(context24, 56);
        Context context25 = _framelayout4.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context25, "context");
        layoutParams9.rightMargin = DimensionsKt.dip(context25, 110);
        textView8.setLayoutParams(layoutParams9);
        this.fabMainText = textView8;
        AnkoInternals.INSTANCE.addView(_framelayout2, invoke6);
        this.fabOverlay = invoke6;
        ImageView invoke13 = C$$Anko$Factories$Sdk15View.INSTANCE.getIMAGE_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_framelayout2), 0));
        ImageView imageView6 = invoke13;
        imageView6.setBackgroundResource(R.drawable.add_button);
        AnkoInternals.INSTANCE.addView(_framelayout2, invoke13);
        ImageView imageView7 = imageView6;
        FrameLayout.LayoutParams layoutParams10 = new FrameLayout.LayoutParams(-2, -2);
        _FrameLayout _framelayout6 = _framelayout;
        Context context26 = _framelayout6.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context26, "context");
        layoutParams10.width = DimensionsKt.dip(context26, 70);
        Context context27 = _framelayout6.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context27, "context");
        layoutParams10.height = DimensionsKt.dip(context27, 70);
        layoutParams10.gravity = 8388693;
        Context context28 = _framelayout6.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context28, "context");
        layoutParams10.bottomMargin = DimensionsKt.dip(context28, 32);
        Context context29 = _framelayout6.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context29, "context");
        layoutParams10.rightMargin = DimensionsKt.dip(context29, 24);
        imageView7.setLayoutParams(layoutParams10);
        this.fabMain = imageView7;
        AnkoInternals.INSTANCE.addView(ankoContext2, invoke);
        this.root = invoke;
        FrameLayout frameLayout = this.root;
        if (frameLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("root");
        }
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(CustomLayoutPropertiesKt.getMatchParent(), CustomLayoutPropertiesKt.getMatchParent()));
        FrameLayout frameLayout2 = this.root;
        if (frameLayout2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("root");
        }
        return frameLayout2;
    }

    public final void setPatterns(@NotNull Activity activity, @NotNull Map<String, List<Pattern>> map, @NotNull Function1<? super View, Unit> function1, @Nullable Function1<? super View, Unit> function12) {
        RecyclerTouchListener recyclerTouchListener;
        Activity activity2 = activity;
        Function1<? super View, Unit> function13 = function1;
        Intrinsics.checkParameterIsNotNull(activity2, "activity");
        Intrinsics.checkParameterIsNotNull(map, "mapOfPattern");
        Intrinsics.checkParameterIsNotNull(function13, "onItemClick");
        int i = 1;
        if (!map.values().isEmpty()) {
            for (T t : map.entrySet()) {
                List mutableList = CollectionsKt.toMutableList((Collection) t.getValue());
                RecyclerView.OnItemTouchListener onItemTouchListener = this.listTouchListener;
                if (onItemTouchListener != null) {
                    RecyclerView recyclerView = this.list;
                    if (recyclerView == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("list");
                    }
                    recyclerView.removeOnItemTouchListener(onItemTouchListener);
                }
                RecyclerView recyclerView2 = this.list;
                if (recyclerView2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("list");
                }
                RecyclerTouchListener recyclerTouchListener2 = new RecyclerTouchListener(activity2, recyclerView2);
                Integer[] numArr = new Integer[i];
                numArr[0] = Integer.valueOf(PatternItemView.Companion.getDeleteButtonId());
                recyclerTouchListener2.setSwipeOptionViews(numArr);
                recyclerTouchListener2.setClickable(new MainActivityUI$setPatterns$$inlined$forEach$lambda$1(this, activity2, function13, function12));
                if (function12 != null) {
                    recyclerTouchListener = recyclerTouchListener2;
                    recyclerTouchListener.setSwipeable(PatternItemView.Companion.getFgId(), PatternItemView.Companion.getBgId(), new MainActivityUI$setPatterns$$inlined$forEach$lambda$2(function12, recyclerTouchListener2, this, activity, function1, function12));
                } else {
                    recyclerTouchListener = recyclerTouchListener2;
                }
                this.listTouchListener = recyclerTouchListener;
                t.setValue(mutableList);
                activity2 = activity;
                function13 = function1;
                i = 1;
            }
            RecyclerView.OnItemTouchListener onItemTouchListener2 = this.listTouchListener;
            if (onItemTouchListener2 != null) {
                RecyclerView recyclerView3 = this.list;
                if (recyclerView3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("list");
                }
                recyclerView3.addOnItemTouchListener(onItemTouchListener2);
            }
            RecyclerView recyclerView4 = this.list;
            if (recyclerView4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("list");
            }
            recyclerView4.setAdapter(new PatternAdapter(map));
            showPatternList();
            return;
        }
        showEmptyListView();
    }

    public final void changeSelectedCollectionText(@NotNull Context context, @NotNull SelectedCollection selectedCollection) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(selectedCollection, "selectedCollection");
        switch (selectedCollection) {
            case STARTER:
                TextView textView = this.starterKitCollectionItem;
                if (textView == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("starterKitCollectionItem");
                }
                Sdk15PropertiesKt.setTextColor(textView, AndroidExtensionsKt.getColorCompat(context, R.color.gray));
                TextView textView2 = this.purchasedCollectionItem;
                if (textView2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("purchasedCollectionItem");
                }
                Sdk15PropertiesKt.setTextColor(textView2, AndroidExtensionsKt.getColorCompat(context, R.color.white));
                TextView textView3 = this.createdCollectionItem;
                if (textView3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("createdCollectionItem");
                }
                Sdk15PropertiesKt.setTextColor(textView3, AndroidExtensionsKt.getColorCompat(context, R.color.white));
                return;
            case PURCHASED:
                TextView textView4 = this.purchasedCollectionItem;
                if (textView4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("purchasedCollectionItem");
                }
                Sdk15PropertiesKt.setTextColor(textView4, AndroidExtensionsKt.getColorCompat(context, R.color.gray));
                TextView textView5 = this.createdCollectionItem;
                if (textView5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("createdCollectionItem");
                }
                Sdk15PropertiesKt.setTextColor(textView5, AndroidExtensionsKt.getColorCompat(context, R.color.white));
                TextView textView6 = this.starterKitCollectionItem;
                if (textView6 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("starterKitCollectionItem");
                }
                Sdk15PropertiesKt.setTextColor(textView6, AndroidExtensionsKt.getColorCompat(context, R.color.white));
                return;
            case CREATED:
                TextView textView7 = this.createdCollectionItem;
                if (textView7 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("createdCollectionItem");
                }
                Sdk15PropertiesKt.setTextColor(textView7, AndroidExtensionsKt.getColorCompat(context, R.color.gray));
                TextView textView8 = this.purchasedCollectionItem;
                if (textView8 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("purchasedCollectionItem");
                }
                Sdk15PropertiesKt.setTextColor(textView8, AndroidExtensionsKt.getColorCompat(context, R.color.white));
                TextView textView9 = this.starterKitCollectionItem;
                if (textView9 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("starterKitCollectionItem");
                }
                Sdk15PropertiesKt.setTextColor(textView9, AndroidExtensionsKt.getColorCompat(context, R.color.white));
                return;
            default:
                return;
        }
    }

    private final void showEmptyListView() {
        RecyclerView recyclerView = this.list;
        if (recyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("list");
        }
        recyclerView.setVisibility(8);
        TextView textView = this.emptyView;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("emptyView");
        }
        textView.setVisibility(0);
    }

    private final void showPatternList() {
        TextView textView = this.emptyView;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("emptyView");
        }
        textView.setVisibility(8);
        RecyclerView recyclerView = this.list;
        if (recyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("list");
        }
        recyclerView.setVisibility(0);
    }

    public final void fabShow(@NotNull Activity activity) {
        Intrinsics.checkParameterIsNotNull(activity, "context");
        this.fabIsOpen = true;
        ImageView imageView = this.fabMain;
        if (imageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fabMain");
        }
        imageView.setBackgroundResource(R.drawable.create_button);
        ImageView imageView2 = this.fabSecond;
        if (imageView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fabSecond");
        }
        ImageView imageView3 = imageView2;
        imageView3.setVisibility(0);
        imageView3.setOnClickListener(new MainActivityUI$inlined$sam$i$android_view_View_OnClickListener$0(new MainActivityUI$fabShow$$inlined$apply$lambda$1(activity)));
        ImageView imageView4 = this.fabThird;
        if (imageView4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fabThird");
        }
        imageView4.setVisibility(0);
        TextView textView = this.fabThirdText;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fabThirdText");
        }
        textView.setVisibility(0);
        displayBlur();
        FrameLayout frameLayout = this.fabOverlay;
        if (frameLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fabOverlay");
        }
        frameLayout.setVisibility(0);
    }

    public final void fabHide() {
        this.fabIsOpen = false;
        FrameLayout frameLayout = this.fabOverlay;
        if (frameLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fabOverlay");
        }
        frameLayout.setVisibility(8);
        ImageView imageView = this.fabMain;
        if (imageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fabMain");
        }
        imageView.setBackgroundResource(R.drawable.add_button);
    }

    private final void displayBlur() {
        double d = (double) this.screenHeight;
        Double.isNaN(d);
        int i = (int) (d * 0.0025d);
        LinearLayout linearLayout = this.mainView;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mainView");
        }
        int width = linearLayout.getWidth();
        LinearLayout linearLayout2 = this.mainView;
        if (linearLayout2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mainView");
        }
        Bitmap createBitmap = Bitmap.createBitmap(width, linearLayout2.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        LinearLayout linearLayout3 = this.mainView;
        if (linearLayout3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mainView");
        }
        linearLayout3.draw(canvas);
        Intrinsics.checkExpressionValueIsNotNull(createBitmap, "overlay");
        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(createBitmap, createBitmap.getWidth() / 8, createBitmap.getHeight() / 8, true);
        createBitmap.recycle();
        FastBlur fastBlur = FastBlur.INSTANCE;
        Intrinsics.checkExpressionValueIsNotNull(createScaledBitmap, "scaledBitmap");
        Bitmap doBlur = fastBlur.doBlur(createScaledBitmap, i, true);
        ImageView imageView = this.overlayBackground;
        if (imageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("overlayBackground");
        }
        Sdk15PropertiesKt.setImageBitmap(imageView, doBlur);
    }

    public final void showCollectionSelectorView(@NotNull MainActivity mainActivity) {
        Intrinsics.checkParameterIsNotNull(mainActivity, "mainActivity");
        LinearLayout linearLayout = this.collectionSelectorView;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("collectionSelectorView");
        }
        linearLayout.setVisibility(0);
        this.collectionSelectorIsOpen = true;
        mainActivity.selectorIconUp();
    }

    public final void hideCollectionSelectorView(@NotNull MainActivity mainActivity) {
        Intrinsics.checkParameterIsNotNull(mainActivity, "mainActivity");
        LinearLayout linearLayout = this.collectionSelectorView;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("collectionSelectorView");
        }
        linearLayout.setVisibility(8);
        this.collectionSelectorIsOpen = false;
        mainActivity.selectorIconDown();
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/liber8tech/tago/android/activity/MainActivityUI$SelectedCollection;", "", "type", "", "(Ljava/lang/String;II)V", "getType", "()I", "PURCHASED", "CREATED", "STARTER", "app_release"}, k = 1, mv = {1, 1, 13})
    /* compiled from: MainActivity.kt */
    public enum SelectedCollection {
        PURCHASED(R.string.purchased),
        CREATED(R.string.created),
        STARTER(R.string.starter_kit);
        
        private final int type;

        protected SelectedCollection(int i) {
            this.type = i;
        }

        public final int getType() {
            return this.type;
        }
    }
}
