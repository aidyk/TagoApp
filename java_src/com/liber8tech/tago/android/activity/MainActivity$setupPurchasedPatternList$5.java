package com.liber8tech.tago.android.activity;

import android.view.View;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.liber8tech.tago.Constants;
import io.reactivex.functions.Action;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.anko.internals.AnkoInternals;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 1, 13})
/* compiled from: MainActivity.kt */
public final class MainActivity$setupPurchasedPatternList$5 implements Action {
    final /* synthetic */ Map $patternMap;
    final /* synthetic */ MainActivity this$0;

    MainActivity$setupPurchasedPatternList$5(MainActivity mainActivity, Map map) {
        this.this$0 = mainActivity;
        this.$patternMap = map;
    }

    @Override // io.reactivex.functions.Action
    public final void run() {
        MainActivity.access$getUi$p(this.this$0).setPatterns(this.this$0, MapsKt.toSortedMap(this.$patternMap), new Function1<View, Unit>(this) {
            /* class com.liber8tech.tago.android.activity.MainActivity$setupPurchasedPatternList$5.AnonymousClass1 */
            final /* synthetic */ MainActivity$setupPurchasedPatternList$5 this$0;

            {
                this.this$0 = r1;
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
                this.this$0.this$0.lastSelected = view;
                if (this.this$0.this$0.getLocationService().hasPermission()) {
                    AnkoInternals.internalStartActivity(this.this$0.this$0, SelectTagoActivity.class, new Pair[]{new Pair(Constants.pattern, view.getTag())});
                    return;
                }
                this.this$0.this$0.getLocationService().requestPermission(this.this$0.this$0);
            }
        }, null);
    }
}
