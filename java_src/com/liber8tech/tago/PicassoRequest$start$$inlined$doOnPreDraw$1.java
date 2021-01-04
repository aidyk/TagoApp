package com.liber8tech.tago;

import android.view.View;
import android.view.ViewTreeObserver;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016¨\u0006\u0005¸\u0006\u0000"}, d2 = {"androidx/core/view/ViewKt$doOnPreDraw$1", "Landroid/view/ViewTreeObserver$OnPreDrawListener;", "(Landroid/view/View;Lkotlin/jvm/functions/Function1;Landroid/view/ViewTreeObserver;)V", "onPreDraw", "", "core-ktx_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: View.kt */
public final class PicassoRequest$start$$inlined$doOnPreDraw$1 implements ViewTreeObserver.OnPreDrawListener {
    final /* synthetic */ ViewTreeObserver $vto;
    final /* synthetic */ View receiver$0;
    final /* synthetic */ PicassoRequest this$0;

    public PicassoRequest$start$$inlined$doOnPreDraw$1(View view, ViewTreeObserver viewTreeObserver, PicassoRequest picassoRequest) {
        this.receiver$0 = view;
        this.$vto = viewTreeObserver;
        this.this$0 = picassoRequest;
    }

    public boolean onPreDraw() {
        View view = this.receiver$0;
        this.this$0.width = this.this$0.getView().getWidth();
        this.this$0.height = this.this$0.getView().getHeight();
        this.this$0.storeSizeAndStartDownload();
        ViewTreeObserver viewTreeObserver = this.$vto;
        Intrinsics.checkExpressionValueIsNotNull(viewTreeObserver, "vto");
        if (viewTreeObserver.isAlive()) {
            this.$vto.removeOnPreDrawListener(this);
            return true;
        }
        this.receiver$0.getViewTreeObserver().removeOnPreDrawListener(this);
        return true;
    }
}
