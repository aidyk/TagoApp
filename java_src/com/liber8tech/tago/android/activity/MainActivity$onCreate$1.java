package com.liber8tech.tago.android.activity;

import android.view.View;
import com.liber8tech.tago.analytics.AnalyticsApi;
import com.liber8tech.tago.android.analytics.Action;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.anko.internals.AnkoInternals;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "Landroid/view/View;", "invoke"}, k = 3, mv = {1, 1, 13})
/* compiled from: MainActivity.kt */
final class MainActivity$onCreate$1 extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ MainActivity this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    MainActivity$onCreate$1(MainActivity mainActivity) {
        super(1);
        this.this$0 = mainActivity;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(View view) {
        invoke(view);
        return Unit.INSTANCE;
    }

    public final void invoke(@Nullable View view) {
        if (MainActivity.access$getUi$p(this.this$0).getFabIsOpen()) {
            AnkoInternals.internalStartActivity(this.this$0, CameraActivity.class, new Pair[0]);
            return;
        }
        AnalyticsApi.DefaultImpls.trackEvent$default(this.this$0.getAnalytics(), "Main", "Main", Action.fabOpen, null, null, null, null, null, null, 504, null);
        MainActivity.access$getUi$p(this.this$0).fabShow(this.this$0);
    }
}
