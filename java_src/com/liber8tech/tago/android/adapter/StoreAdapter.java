package com.liber8tech.tago.android.adapter;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.ViewGroup;
import com.liber8tech.tago.android.view.HeaderHolder;
import com.liber8tech.tago.android.view.HeaderView;
import com.liber8tech.tago.android.view.PackListHolder;
import com.liber8tech.tago.android.view.PackListView;
import com.liber8tech.tago.model.Category;
import com.liber8tech.tago.model.Pack;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B'\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0012\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00040\u0004¢\u0006\u0002\u0010\bJ\b\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\nH\u0016J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\nH\u0016J\u0018\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\nH\u0016R\u001a\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00040\u0004X\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/liber8tech/tago/android/adapter/StoreAdapter;", "Landroid/support/v7/widget/RecyclerView$Adapter;", "Landroid/support/v7/widget/RecyclerView$ViewHolder;", "titleList", "", "Lcom/liber8tech/tago/model/Category;", "packsList", "Lcom/liber8tech/tago/model/Pack;", "(Ljava/util/List;Ljava/util/List;)V", "getItemCount", "", "getItemViewType", "position", "onBindViewHolder", "", "holder", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: StoreAdapter.kt */
public final class StoreAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    private final List<List<Pack>> packsList;
    private final List<Category> titleList;

    /* JADX DEBUG: Multi-variable search result rejected for r3v0, resolved type: java.util.List<? extends java.util.List<com.liber8tech.tago.model.Pack>> */
    /* JADX WARN: Multi-variable type inference failed */
    public StoreAdapter(@NotNull List<Category> list, @NotNull List<? extends List<Pack>> list2) {
        Intrinsics.checkParameterIsNotNull(list, "titleList");
        Intrinsics.checkParameterIsNotNull(list2, "packsList");
        this.titleList = list;
        this.packsList = list2;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NotNull RecyclerView.ViewHolder viewHolder, int i) {
        T t;
        Intrinsics.checkParameterIsNotNull(viewHolder, "holder");
        int itemViewType = getItemViewType(i);
        Category category = this.titleList.get(i / 2);
        Iterator<T> it2 = this.packsList.iterator();
        while (true) {
            if (!it2.hasNext()) {
                t = null;
                break;
            }
            t = it2.next();
            if (Intrinsics.areEqual(((Pack) CollectionsKt.first((List) t)).getCategoryId(), category.getId())) {
                break;
            }
        }
        List<Pack> list = t;
        if (list == null) {
            list = this.packsList.get((i - 1) / 2);
        }
        if (itemViewType != 0) {
            ((PackListHolder) viewHolder).getView().setAdapter(new ColumnStoreAdapter(list));
        } else {
            ((HeaderHolder) viewHolder).getView().setText(category.getName());
        }
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.titleList.size() * 2;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    @NotNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NotNull ViewGroup viewGroup, int i) {
        Intrinsics.checkParameterIsNotNull(viewGroup, "parent");
        Context context = viewGroup.getContext();
        if (i != 0) {
            Intrinsics.checkExpressionValueIsNotNull(context, "context");
            return new PackListHolder(new PackListView(context));
        }
        Intrinsics.checkExpressionValueIsNotNull(context, "context");
        return new HeaderHolder(new HeaderView(context));
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return (i == 0 || i % 2 == 0) ? 0 : 1;
    }
}
