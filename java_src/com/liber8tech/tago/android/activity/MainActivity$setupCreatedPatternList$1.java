package com.liber8tech.tago.android.activity;

import android.view.View;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.liber8tech.tago.Constants;
import com.liber8tech.tago.R;
import com.liber8tech.tago.model.CreatedPattern;
import com.liber8tech.tago.model.Pattern;
import com.liber8tech.tago.util.extension.RxExtensionsKt;
import io.reactivex.functions.Consumer;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.anko.internals.AnkoInternals;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "", "createdPatternList", "", "Lcom/liber8tech/tago/model/Pattern;", "kotlin.jvm.PlatformType", "accept"}, k = 3, mv = {1, 1, 13})
/* compiled from: MainActivity.kt */
public final class MainActivity$setupCreatedPatternList$1<T> implements Consumer<List<? extends Pattern>> {
    final /* synthetic */ MainActivity this$0;

    MainActivity$setupCreatedPatternList$1(MainActivity mainActivity) {
        this.this$0 = mainActivity;
    }

    public final void accept(List<? extends Pattern> list) {
        LinkedHashMap linkedHashMap;
        MainActivityUI access$getUi$p = MainActivity.access$getUi$p(this.this$0);
        MainActivity mainActivity = this.this$0;
        Intrinsics.checkExpressionValueIsNotNull(list, "createdPatternList");
        List<? extends Pattern> list2 = list;
        if (!list2.isEmpty()) {
            linkedHashMap = MapsKt.mutableMapOf(new Pair(this.this$0.getString(R.string.created), CollectionsKt.toMutableList((Collection) list2)));
        } else {
            linkedHashMap = new LinkedHashMap();
        }
        access$getUi$p.setPatterns(mainActivity, linkedHashMap, new Function1<View, Unit>(this) {
            /* class com.liber8tech.tago.android.activity.MainActivity$setupCreatedPatternList$1.AnonymousClass1 */
            final /* synthetic */ MainActivity$setupCreatedPatternList$1 this$0;

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
        }, new Function1<View, Unit>(this) {
            /* class com.liber8tech.tago.android.activity.MainActivity$setupCreatedPatternList$1.AnonymousClass2 */
            final /* synthetic */ MainActivity$setupCreatedPatternList$1 this$0;

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
                Object tag = view.getTag();
                if (tag instanceof CreatedPattern) {
                    this.this$0.this$0.getDisposeBag().add(RxExtensionsKt.asyncIO(this.this$0.this$0.getImageEditorService().deletePattern((CreatedPattern) tag)).subscribe(AnonymousClass1.INSTANCE, AnonymousClass2.INSTANCE));
                }
            }
        });
    }
}
