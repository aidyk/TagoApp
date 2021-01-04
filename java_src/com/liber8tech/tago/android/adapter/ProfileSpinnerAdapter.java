package com.liber8tech.tago.android.adapter;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.liber8tech.tago.android.view.SpinnerRowItem;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0013\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0007H\u0016J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u0007H\u0016J$\u0010\f\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\u00072\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016R\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/liber8tech/tago/android/adapter/ProfileSpinnerAdapter;", "Landroid/widget/BaseAdapter;", "stringList", "", "", "(Ljava/util/List;)V", "getCount", "", "getItem", "position", "getItemId", "", "getView", "Landroid/view/View;", "convertView", "parent", "Landroid/view/ViewGroup;", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: ProfileSpinnerAdapter.kt */
public final class ProfileSpinnerAdapter extends BaseAdapter {
    private final List<Object> stringList;

    public long getItemId(int i) {
        return 0;
    }

    public ProfileSpinnerAdapter(@NotNull List<? extends Object> list) {
        Intrinsics.checkParameterIsNotNull(list, "stringList");
        this.stringList = list;
    }

    @NotNull
    public Object getItem(int i) {
        return this.stringList.get(i);
    }

    public int getCount() {
        return this.stringList.size();
    }

    @NotNull
    public View getView(int i, @Nullable View view, @Nullable ViewGroup viewGroup) {
        SpinnerRowItem spinnerRowItem = new SpinnerRowItem(viewGroup != null ? viewGroup.getContext() : null);
        spinnerRowItem.setText(this.stringList.get(i).toString());
        return spinnerRowItem;
    }
}
