package com.liber8tech.tago.android.activity;

import android.app.Activity;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.liber8tech.tago.android.adapter.PatternAdapter;
import com.nikhilpanju.recyclerviewenhanced.RecyclerTouchListener;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(bv = {1, 0, 3}, d1 = {"\u00009\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¨\u0006\b¸\u0006\t"}, d2 = {"com/liber8tech/tago/android/activity/MainActivityUI$setPatterns$1$2$1", "Lcom/nikhilpanju/recyclerviewenhanced/RecyclerTouchListener$OnRowClickListener;", "onIndependentViewClicked", "", "independentViewID", "", "position", "onRowClicked", "app_release", "com/liber8tech/tago/android/activity/MainActivityUI$$special$$inlined$apply$lambda$1"}, k = 1, mv = {1, 1, 13})
/* compiled from: MainActivity.kt */
public final class MainActivityUI$setPatterns$$inlined$forEach$lambda$1 implements RecyclerTouchListener.OnRowClickListener {
    final /* synthetic */ Activity $activity$inlined;
    final /* synthetic */ Function1 $onDeleteClicked$inlined;
    final /* synthetic */ Function1 $onItemClick$inlined;
    final /* synthetic */ MainActivityUI this$0;

    @Override // com.nikhilpanju.recyclerviewenhanced.RecyclerTouchListener.OnRowClickListener
    public void onIndependentViewClicked(int i, int i2) {
    }

    MainActivityUI$setPatterns$$inlined$forEach$lambda$1(MainActivityUI mainActivityUI, Activity activity, Function1 function1, Function1 function12) {
        this.this$0 = mainActivityUI;
        this.$activity$inlined = activity;
        this.$onItemClick$inlined = function1;
        this.$onDeleteClicked$inlined = function12;
    }

    @Override // com.nikhilpanju.recyclerviewenhanced.RecyclerTouchListener.OnRowClickListener
    public void onRowClicked(int i) {
        RecyclerView.ViewHolder findViewHolderForAdapterPosition;
        View view;
        RecyclerView.Adapter adapter = MainActivityUI.access$getList$p(this.this$0).getAdapter();
        if (adapter != null && adapter.getItemViewType(i) == PatternAdapter.Companion.getPatternType() && (findViewHolderForAdapterPosition = MainActivityUI.access$getList$p(this.this$0).findViewHolderForAdapterPosition(i)) != null && (view = findViewHolderForAdapterPosition.itemView) != null) {
            Function1 function1 = this.$onItemClick$inlined;
            Intrinsics.checkExpressionValueIsNotNull(view, Promotion.ACTION_VIEW);
            function1.invoke(view);
        }
    }
}
