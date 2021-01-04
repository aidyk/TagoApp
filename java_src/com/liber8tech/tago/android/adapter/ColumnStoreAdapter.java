package com.liber8tech.tago.android.adapter;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.liber8tech.tago.android.view.PackItemView;
import com.liber8tech.tago.android.view.PackItemViewHolder;
import com.liber8tech.tago.model.Pack;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.anko.CustomLayoutPropertiesKt;
import org.jetbrains.anko.DimensionsKt;

public final class ColumnStoreAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    private final List<Pack> packsList;

    public ColumnStoreAdapter(List<Pack> list) {
        Intrinsics.checkParameterIsNotNull(list, "packsList");
        this.packsList = list;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        Intrinsics.checkParameterIsNotNull(viewGroup, "parent");
        PackItemView packItemView = new PackItemView(viewGroup.getContext());
        PackItemView packItemView2 = packItemView;
        Context context = packItemView2.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "context");
        int dip = DimensionsKt.dip(context, 120);
        Context context2 = packItemView2.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context2, "context");
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(dip, DimensionsKt.dip(context2, (int) FacebookRequestErrorClassification.EC_INVALID_TOKEN));
        Context context3 = packItemView2.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context3, "context");
        CustomLayoutPropertiesKt.setMargin(layoutParams, DimensionsKt.dip(context3, 6));
        packItemView.setLayoutParams(layoutParams);
        return new PackItemViewHolder(packItemView);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.packsList.size();
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        Intrinsics.checkParameterIsNotNull(viewHolder, "holder");
        Pack pack = this.packsList.get(i);
        PackItemViewHolder packItemViewHolder = (PackItemViewHolder) viewHolder;
        packItemViewHolder.getView().setImage(this.packsList.get(i).getFeaturedImageUrl());
        packItemViewHolder.getView().setTitle(pack.getName());
        packItemViewHolder.getView().packOwned(pack.isBought());
        if (!pack.isBought()) {
            packItemViewHolder.getView().setOnClickListener(new ColumnStoreAdapter$inlined$sam$i$android_view_View_OnClickListener$0(new ColumnStoreAdapter$onBindViewHolder$1(this, viewHolder, i)));
        }
    }
}
