package com.liber8tech.tago.android.activity;

import android.view.View;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.liber8tech.tago.Constants;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.anko.internals.AnkoInternals;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", Promotion.ACTION_VIEW, "Landroid/view/View;", "invoke"}, k = 3, mv = {1, 1, 13})
/* compiled from: MainActivity.kt */
public final class MainActivity$setupStarterKitPatternList$2 extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ MainActivity this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    MainActivity$setupStarterKitPatternList$2(MainActivity mainActivity) {
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

    public final void invoke(@NotNull View view) {
        Intrinsics.checkParameterIsNotNull(view, Promotion.ACTION_VIEW);
        this.this$0.lastSelected = view;
        if (this.this$0.getLocationService().hasPermission()) {
            AnkoInternals.internalStartActivity(this.this$0, SelectTagoActivity.class, new Pair[]{new Pair(Constants.pattern, view.getTag())});
            return;
        }
        this.this$0.getLocationService().requestPermission(this.this$0);
    }
}
