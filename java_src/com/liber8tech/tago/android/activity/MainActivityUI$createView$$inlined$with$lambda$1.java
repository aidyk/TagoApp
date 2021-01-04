package com.liber8tech.tago.android.activity;

import android.view.ViewTreeObserver;
import kotlin.Metadata;
import org.jetbrains.anko.AnkoContext;
import org.jetbrains.anko.recyclerview.v7._RecyclerView;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004¸\u0006\u0007"}, d2 = {"com/liber8tech/tago/android/activity/MainActivityUI$createView$1$1$1$2$1", "Landroid/view/ViewTreeObserver$OnPreDrawListener;", "onPreDraw", "", "app_release", "com/liber8tech/tago/android/activity/MainActivityUI$$special$$inlined$recyclerView$lambda$1", "com/liber8tech/tago/android/activity/MainActivityUI$$special$$inlined$verticalLayout$lambda$1", "com/liber8tech/tago/android/activity/MainActivityUI$$special$$inlined$frameLayout$lambda$4"}, k = 1, mv = {1, 1, 13})
/* compiled from: MainActivity.kt */
public final class MainActivityUI$createView$$inlined$with$lambda$1 implements ViewTreeObserver.OnPreDrawListener {
    final /* synthetic */ _RecyclerView $this_recyclerView;
    final /* synthetic */ AnkoContext $this_with$inlined;
    final /* synthetic */ MainActivityUI this$0;

    MainActivityUI$createView$$inlined$with$lambda$1(_RecyclerView _recyclerview, AnkoContext ankoContext, MainActivityUI mainActivityUI) {
        this.$this_recyclerView = _recyclerview;
        this.$this_with$inlined = ankoContext;
        this.this$0 = mainActivityUI;
    }

    public boolean onPreDraw() {
        MainActivityUI.access$getList$p(this.this$0).getViewTreeObserver().removeOnPreDrawListener(this);
        this.this$0.screenHeight = this.$this_recyclerView.getHeight();
        return true;
    }
}
