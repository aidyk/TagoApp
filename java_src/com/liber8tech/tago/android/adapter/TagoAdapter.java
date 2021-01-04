package com.liber8tech.tago.android.adapter;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.ViewGroup;
import com.liber8tech.tago.R;
import com.liber8tech.tago.android.view.HeaderHolder;
import com.liber8tech.tago.android.view.HeaderView;
import com.liber8tech.tago.android.view.TagoHolder;
import com.liber8tech.tago.android.view.TagoView;
import com.liber8tech.tago.model.ArcKt;
import com.polidea.rxandroidble2.RxBleDevice;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.anko.Sdk15PropertiesKt;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0019\u0012\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\u0002\u0010\u0007J\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u00052\u0006\u0010\f\u001a\u00020\rH\u0002J\b\u0010\u000e\u001a\u00020\rH\u0016J\u0010\u0010\u000f\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\rH\u0016J\u0018\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\rH\u0016J\u0018\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\rH\u0016J\u0014\u0010\u0016\u001a\u00020\u00062\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00050\u0018J\u0014\u0010\u0019\u001a\u00020\u00062\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00050\u0018R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\tX\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\tX\u000e¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/liber8tech/tago/android/adapter/TagoAdapter;", "Landroid/support/v7/widget/RecyclerView$Adapter;", "Landroid/support/v7/widget/RecyclerView$ViewHolder;", "onDeviceClick", "Lkotlin/Function1;", "Lcom/polidea/rxandroidble2/RxBleDevice;", "", "(Lkotlin/jvm/functions/Function1;)V", "nearByDevices", "", "ownDevices", "getDevice", "position", "", "getItemCount", "getItemViewType", "onBindViewHolder", "holder", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "setNearByDevices", "devices", "", "setOwnDevices", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: TagoAdapter.kt */
public final class TagoAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    private List<RxBleDevice> nearByDevices = new ArrayList();
    private final Function1<RxBleDevice, Unit> onDeviceClick;
    private List<RxBleDevice> ownDevices = new ArrayList();

    /* JADX DEBUG: Multi-variable search result rejected for r2v0, resolved type: kotlin.jvm.functions.Function1<? super com.polidea.rxandroidble2.RxBleDevice, kotlin.Unit> */
    /* JADX WARN: Multi-variable type inference failed */
    public TagoAdapter(@NotNull Function1<? super RxBleDevice, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(function1, "onDeviceClick");
        this.onDeviceClick = function1;
    }

    public final void setOwnDevices(@NotNull List<? extends RxBleDevice> list) {
        Intrinsics.checkParameterIsNotNull(list, "devices");
        this.ownDevices.clear();
        this.ownDevices.addAll(list);
        notifyDataSetChanged();
    }

    public final void setNearByDevices(@NotNull List<? extends RxBleDevice> list) {
        Intrinsics.checkParameterIsNotNull(list, "devices");
        this.nearByDevices.clear();
        this.nearByDevices.addAll(list);
        notifyDataSetChanged();
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    @NotNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NotNull ViewGroup viewGroup, int i) {
        Intrinsics.checkParameterIsNotNull(viewGroup, "parent");
        Context context = viewGroup.getContext();
        switch (i) {
            case 0:
            case 1:
                Intrinsics.checkExpressionValueIsNotNull(context, "ctx");
                return new HeaderHolder(new HeaderView(context));
            case 2:
                Intrinsics.checkExpressionValueIsNotNull(context, "ctx");
                TagoHolder tagoHolder = new TagoHolder(new TagoView(context));
                tagoHolder.getView().setOnClickListener(new TagoAdapter$inlined$sam$i$android_view_View_OnClickListener$0(new TagoAdapter$onCreateViewHolder$1(this, tagoHolder)));
                return tagoHolder;
            default:
                return new TagoAdapter$onCreateViewHolder$2(context, new View(context));
        }
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return TagoAdapterKt.sizeWithHeader(this.ownDevices) + TagoAdapterKt.sizeWithHeader(this.nearByDevices);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NotNull RecyclerView.ViewHolder viewHolder, int i) {
        Drawable drawable;
        Intrinsics.checkParameterIsNotNull(viewHolder, "holder");
        switch (getItemViewType(i)) {
            case 0:
                Sdk15PropertiesKt.setTextResource(((HeaderHolder) viewHolder).getView(), R.string.yours);
                return;
            case 1:
                Sdk15PropertiesKt.setTextResource(((HeaderHolder) viewHolder).getView(), R.string.nearby);
                return;
            case 2:
                TagoView view = ((TagoHolder) viewHolder).getView();
                RxBleDevice device = getDevice(i);
                view.setTag(device);
                view.setText(device != null ? ArcKt.getCustomName(device) : null);
                if (device != null) {
                    drawable = ArcKt.preview(device);
                } else {
                    drawable = null;
                }
                view.setCompoundDrawablesWithIntrinsicBounds(drawable, (Drawable) null, (Drawable) null, (Drawable) null);
                return;
            default:
                return;
        }
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        if (i == 0) {
            return 0;
        }
        return ((!(this.ownDevices.isEmpty() ^ true) || i > this.ownDevices.size()) && i - TagoAdapterKt.sizeWithHeader(this.ownDevices) == 0) ? 1 : 2;
    }

    private final RxBleDevice getDevice(int i) {
        if (i <= this.ownDevices.size()) {
            return this.ownDevices.get(i - 1);
        }
        return this.nearByDevices.get((i - TagoAdapterKt.sizeWithHeader(this.ownDevices)) - 1);
    }
}
