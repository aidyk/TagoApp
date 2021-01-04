package com.liber8tech.tago.android.activity;

import com.liber8tech.tago.model.Pattern;
import io.reactivex.functions.Consumer;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u000122\u0010\u0002\u001a.\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0005 \u0007*\u0016\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0005\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\b"}, d2 = {"<anonymous>", "", "<name for destructuring parameter 0>", "Lkotlin/Pair;", "", "", "Lcom/liber8tech/tago/model/Pattern;", "kotlin.jvm.PlatformType", "accept"}, k = 3, mv = {1, 1, 13})
/* compiled from: MainActivity.kt */
public final class MainActivity$setupPurchasedPatternList$3<T> implements Consumer<Pair<? extends String, ? extends List<? extends Pattern>>> {
    final /* synthetic */ Map $patternMap;

    MainActivity$setupPurchasedPatternList$3(Map map) {
        this.$patternMap = map;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // io.reactivex.functions.Consumer
    public /* bridge */ /* synthetic */ void accept(Pair<? extends String, ? extends List<? extends Pattern>> pair) {
        accept((Pair<String, ? extends List<? extends Pattern>>) pair);
    }

    public final void accept(Pair<String, ? extends List<? extends Pattern>> pair) {
        this.$patternMap.put(pair.component1(), CollectionsKt.toMutableList((Collection) ((List) pair.component2())));
    }
}
