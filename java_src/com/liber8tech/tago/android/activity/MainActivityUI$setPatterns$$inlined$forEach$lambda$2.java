package com.liber8tech.tago.android.activity;

import android.app.Activity;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.liber8tech.tago.android.adapter.PatternAdapter;
import com.liber8tech.tago.android.view.PatternItemView;
import com.nikhilpanju.recyclerviewenhanced.RecyclerTouchListener;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000D\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\b\u0005\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0005¨\u0006\b"}, d2 = {"<anonymous>", "", "viewID", "", "position", "onSwipeOptionClicked", "com/liber8tech/tago/android/activity/MainActivityUI$setPatterns$1$2$2$1", "com/liber8tech/tago/android/activity/MainActivityUI$$special$$inlined$let$lambda$1", "com/liber8tech/tago/android/activity/MainActivityUI$$special$$inlined$apply$lambda$2"}, k = 3, mv = {1, 1, 13})
/* compiled from: MainActivity.kt */
public final class MainActivityUI$setPatterns$$inlined$forEach$lambda$2 implements RecyclerTouchListener.OnSwipeOptionsClickListener {
    final /* synthetic */ Activity $activity$inlined;
    final /* synthetic */ Function1 $it;
    final /* synthetic */ Function1 $onDeleteClicked$inlined;
    final /* synthetic */ Function1 $onItemClick$inlined;
    final /* synthetic */ RecyclerTouchListener $this_apply$inlined;
    final /* synthetic */ MainActivityUI this$0;

    MainActivityUI$setPatterns$$inlined$forEach$lambda$2(Function1 function1, RecyclerTouchListener recyclerTouchListener, MainActivityUI mainActivityUI, Activity activity, Function1 function12, Function1 function13) {
        this.$it = function1;
        this.$this_apply$inlined = recyclerTouchListener;
        this.this$0 = mainActivityUI;
        this.$activity$inlined = activity;
        this.$onItemClick$inlined = function12;
        this.$onDeleteClicked$inlined = function13;
    }

    @Override // com.nikhilpanju.recyclerviewenhanced.RecyclerTouchListener.OnSwipeOptionsClickListener
    public final void onSwipeOptionClicked(int i, int i2) {
        View view;
        if (i == PatternItemView.Companion.getDeleteButtonId()) {
            RecyclerView.ViewHolder findViewHolderForAdapterPosition = MainActivityUI.access$getList$p(this.this$0).findViewHolderForAdapterPosition(i2);
            if (!(findViewHolderForAdapterPosition == null || (view = findViewHolderForAdapterPosition.itemView) == null)) {
                Function1 function1 = this.$it;
                Intrinsics.checkExpressionValueIsNotNull(view, Promotion.ACTION_VIEW);
                function1.invoke(view);
            }
            RecyclerView.Adapter adapter = MainActivityUI.access$getList$p(this.this$0).getAdapter();
            if (adapter != null) {
                ((PatternAdapter) adapter).deleteItem(i2);
                RecyclerView.Adapter adapter2 = MainActivityUI.access$getList$p(this.this$0).getAdapter();
                if (adapter2 != null) {
                    adapter2.notifyItemRemoved(i2);
                    return;
                }
                return;
            }
            throw new TypeCastException("null cannot be cast to non-null type com.liber8tech.tago.android.adapter.PatternAdapter");
        }
    }
}
