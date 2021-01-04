package com.liber8tech.tago.android.adapter;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.RecyclerView;
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
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.anko.Sdk15PropertiesKt;

public final class AddTagoAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    private List<RxBleDevice> devices;
    private final int headerRes;
    private final Function1<RxBleDevice, Unit> onDeviceClick;

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return i == 0 ? 0 : 1;
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ AddTagoAdapter(Function1 function1, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(function1, (i & 2) != 0 ? false : z);
    }

    /* JADX DEBUG: Multi-variable search result rejected for r2v0, resolved type: kotlin.jvm.functions.Function1<? super com.polidea.rxandroidble2.RxBleDevice, kotlin.Unit> */
    /* JADX WARN: Multi-variable type inference failed */
    public AddTagoAdapter(Function1<? super RxBleDevice, Unit> function1, boolean z) {
        Intrinsics.checkParameterIsNotNull(function1, "onDeviceClick");
        this.onDeviceClick = function1;
        this.headerRes = z ? R.string.yours : R.string.nearby;
        this.devices = new ArrayList();
    }

    public final void setDevices(List<? extends RxBleDevice> list) {
        Intrinsics.checkParameterIsNotNull(list, "newDevices");
        this.devices.clear();
        this.devices.addAll(list);
        notifyDataSetChanged();
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        Intrinsics.checkParameterIsNotNull(viewGroup, "parent");
        Context context = viewGroup.getContext();
        if (i != 0) {
            Intrinsics.checkExpressionValueIsNotNull(context, "ctx");
            TagoHolder tagoHolder = new TagoHolder(new TagoView(context));
            tagoHolder.getView().setOnClickListener(new AddTagoAdapter$inlined$sam$i$android_view_View_OnClickListener$0(new AddTagoAdapter$onCreateViewHolder$1(this, tagoHolder)));
            return tagoHolder;
        }
        Intrinsics.checkExpressionValueIsNotNull(context, "ctx");
        return new HeaderHolder(new HeaderView(context));
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (this.devices.isEmpty()) {
            return 1;
        }
        return 1 + this.devices.size();
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        Drawable drawable;
        Intrinsics.checkParameterIsNotNull(viewHolder, "holder");
        int itemViewType = getItemViewType(i);
        RxBleDevice device = getDevice(i);
        if (itemViewType != 0) {
            TagoView view = ((TagoHolder) viewHolder).getView();
            view.setTag(device);
            view.setText(device != null ? ArcKt.getCustomName(device) : null);
            if (device != null) {
                drawable = ArcKt.preview(device);
            } else {
                drawable = null;
            }
            view.setCompoundDrawablesWithIntrinsicBounds(drawable, (Drawable) null, (Drawable) null, (Drawable) null);
            return;
        }
        Sdk15PropertiesKt.setTextResource(((HeaderHolder) viewHolder).getView(), this.headerRes);
    }

    private final RxBleDevice getDevice(int i) {
        if (i == 0) {
            return null;
        }
        return this.devices.get(i - 1);
    }
}
