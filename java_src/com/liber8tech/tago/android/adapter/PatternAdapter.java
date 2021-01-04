package com.liber8tech.tago.android.adapter;

import android.content.Context;
import android.content.res.Resources;
import android.support.v7.widget.RecyclerView;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.liber8tech.tago.android.view.PatternItemView;
import com.liber8tech.tago.model.Pattern;
import com.liber8tech.tago.util.extension.AndroidExtensionsKt;
import com.liber8tech.tago.util.extension.TypefacesExtensionKt;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.anko.AnkoContextImpl;
import org.jetbrains.anko.C$$Anko$Factories$Sdk15View;
import org.jetbrains.anko.C$$Anko$Factories$Sdk15ViewGroup;
import org.jetbrains.anko.CustomLayoutPropertiesKt;
import org.jetbrains.anko.DimensionsKt;
import org.jetbrains.anko.Sdk15PropertiesKt;
import org.jetbrains.anko._FrameLayout;
import org.jetbrains.anko.internals.AnkoInternals;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u001d2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001dB\u001f\u0012\u0018\u0010\u0003\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u0004¢\u0006\u0002\u0010\bJ\u000e\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\b\u0010\u0014\u001a\u00020\u000fH\u0016J\u0010\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0018\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0018\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u000fH\u0016J(\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0018\u0010\u0003\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u0004H\u0002R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0004¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcom/liber8tech/tago/android/adapter/PatternAdapter;", "Landroid/support/v7/widget/RecyclerView$Adapter;", "Lcom/liber8tech/tago/android/adapter/PatternViewHolder;", "patternMap", "", "", "", "Lcom/liber8tech/tago/model/Pattern;", "(Ljava/util/Map;)V", "listOfElements", "", "Lcom/liber8tech/tago/android/adapter/MainListItem;", "deleteItem", "", "position", "", "getHeaderView", "Landroid/view/View;", "context", "Landroid/content/Context;", "getItemCount", "getItemViewType", "onBindViewHolder", "viewHolder", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "transformMapToList", "Companion", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: PatternAdapter.kt */
public final class PatternAdapter extends RecyclerView.Adapter<PatternViewHolder> {
    public static final Companion Companion = new Companion(null);
    private static final int HeaderType = 1;
    private static final int PatternType = 2;
    private final List<MainListItem> listOfElements;

    public PatternAdapter(@NotNull Map<String, ? extends List<? extends Pattern>> map) {
        Intrinsics.checkParameterIsNotNull(map, "patternMap");
        this.listOfElements = transformMapToList(map);
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004XD¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004XD¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/liber8tech/tago/android/adapter/PatternAdapter$Companion;", "", "()V", "HeaderType", "", "getHeaderType", "()I", "PatternType", "getPatternType", "app_release"}, k = 1, mv = {1, 1, 13})
    /* compiled from: PatternAdapter.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int getHeaderType() {
            return PatternAdapter.HeaderType;
        }

        public final int getPatternType() {
            return PatternAdapter.PatternType;
        }
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    @NotNull
    public PatternViewHolder onCreateViewHolder(@NotNull ViewGroup viewGroup, int i) {
        Intrinsics.checkParameterIsNotNull(viewGroup, "parent");
        if (i == HeaderType) {
            Context context = viewGroup.getContext();
            Intrinsics.checkExpressionValueIsNotNull(context, "parent.context");
            return new PatternViewHolder(getHeaderView(context));
        }
        Context context2 = viewGroup.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context2, "parent.context");
        PatternItemView patternItemView = new PatternItemView(context2);
        Context context3 = viewGroup.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context3, "parent.context");
        Resources resources = context3.getResources();
        Intrinsics.checkExpressionValueIsNotNull(resources, "resources");
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        Intrinsics.checkExpressionValueIsNotNull(displayMetrics, "resources.displayMetrics");
        int i2 = displayMetrics.widthPixels;
        double d = (double) i2;
        Double.isNaN(d);
        patternItemView.setLayoutParams(new FrameLayout.LayoutParams(i2, (int) (d / 4.387096774193548d)));
        return new PatternViewHolder(patternItemView);
    }

    public void onBindViewHolder(@NotNull PatternViewHolder patternViewHolder, int i) {
        Intrinsics.checkParameterIsNotNull(patternViewHolder, "viewHolder");
        if (patternViewHolder.getView() instanceof PatternItemView) {
            PatternItemView patternItemView = (PatternItemView) patternViewHolder.getView();
            MainListItem mainListItem = this.listOfElements.get(i);
            if (mainListItem != null) {
                patternItemView.setup(((PatternListItem) mainListItem).getPattern());
                return;
            }
            throw new TypeCastException("null cannot be cast to non-null type com.liber8tech.tago.android.adapter.PatternListItem");
        }
        View findViewById = patternViewHolder.getView().findViewById(PatternItemView.Companion.getTitleId());
        Intrinsics.checkExpressionValueIsNotNull(findViewById, "findViewById(id)");
        TextView textView = (TextView) findViewById;
        MainListItem mainListItem2 = this.listOfElements.get(i);
        if (mainListItem2 != null) {
            textView.setText(((HeaderListItem) mainListItem2).getTitle());
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type com.liber8tech.tago.android.adapter.HeaderListItem");
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.listOfElements.size();
    }

    private final List<MainListItem> transformMapToList(Map<String, ? extends List<? extends Pattern>> map) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, ? extends List<? extends Pattern>> entry : map.entrySet()) {
            arrayList.add(new HeaderListItem(entry.getKey()));
            for (Pattern pattern : (List) entry.getValue()) {
                arrayList.add(new PatternListItem(pattern));
            }
        }
        return arrayList;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        if (this.listOfElements.get(i) instanceof HeaderListItem) {
            return HeaderType;
        }
        return PatternType;
    }

    public final void deleteItem(int i) {
        this.listOfElements.remove(i);
    }

    private final View getHeaderView(Context context) {
        AnkoInternals ankoInternals = AnkoInternals.INSTANCE;
        AnkoContextImpl ankoContextImpl = new AnkoContextImpl(context, context, false);
        AnkoContextImpl ankoContextImpl2 = ankoContextImpl;
        _FrameLayout invoke = C$$Anko$Factories$Sdk15ViewGroup.INSTANCE.getFRAME_LAYOUT().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(ankoContextImpl2), 0));
        _FrameLayout _framelayout = invoke;
        _FrameLayout _framelayout2 = _framelayout;
        View invoke2 = C$$Anko$Factories$Sdk15View.INSTANCE.getVIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_framelayout2), 0));
        invoke2.setId(PatternItemView.Companion.getBgId());
        AnkoInternals.INSTANCE.addView(_framelayout2, invoke2);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        Context context2 = _framelayout.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context2, "context");
        layoutParams.width = DimensionsKt.dip(context2, 100);
        invoke2.setLayoutParams(layoutParams);
        _FrameLayout invoke3 = C$$Anko$Factories$Sdk15ViewGroup.INSTANCE.getFRAME_LAYOUT().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_framelayout2), 0));
        _FrameLayout _framelayout3 = invoke3;
        _framelayout3.setId(PatternItemView.Companion.getFgId());
        _FrameLayout _framelayout4 = _framelayout3;
        TextView invoke4 = C$$Anko$Factories$Sdk15View.INSTANCE.getTEXT_VIEW().invoke(AnkoInternals.INSTANCE.wrapContextIfNeeded(AnkoInternals.INSTANCE.getContext(_framelayout4), 0));
        TextView textView = invoke4;
        textView.setId(PatternItemView.Companion.getTitleId());
        TextView textView2 = textView;
        Context context3 = textView2.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context3, "context");
        int dip = DimensionsKt.dip(context3, 16);
        Context context4 = textView2.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context4, "context");
        int dip2 = DimensionsKt.dip(context4, 12);
        Context context5 = textView2.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context5, "context");
        int dip3 = DimensionsKt.dip(context5, 16);
        Context context6 = textView2.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context6, "context");
        textView.setPadding(dip, dip2, dip3, DimensionsKt.dip(context6, 12));
        Sdk15PropertiesKt.setTextColor(textView, AndroidExtensionsKt.getColorCompat(context, 17170443));
        TypefacesExtensionKt.regular(textView);
        textView.setTextSize(14.0f);
        textView.setAllCaps(true);
        AnkoInternals.INSTANCE.addView(_framelayout4, invoke4);
        AnkoInternals.INSTANCE.addView(_framelayout2, invoke3);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams2.height = CustomLayoutPropertiesKt.getWrapContent();
        layoutParams2.width = CustomLayoutPropertiesKt.getMatchParent();
        invoke3.setLayoutParams(layoutParams2);
        AnkoInternals.INSTANCE.addView(ankoContextImpl2, invoke);
        return ankoContextImpl.getView();
    }
}
