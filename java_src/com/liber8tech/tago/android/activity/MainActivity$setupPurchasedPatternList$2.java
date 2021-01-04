package com.liber8tech.tago.android.activity;

import com.liber8tech.tago.model.Pattern;
import io.reactivex.functions.Predicate;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0018\u0010\u0002\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u0003H\n¢\u0006\u0002\b\u0007"}, d2 = {"<anonymous>", "", "it", "Lkotlin/Pair;", "", "", "Lcom/liber8tech/tago/model/Pattern;", "test"}, k = 3, mv = {1, 1, 13})
/* compiled from: MainActivity.kt */
public final class MainActivity$setupPurchasedPatternList$2<T> implements Predicate<Pair<? extends String, ? extends List<? extends Pattern>>> {
    public static final MainActivity$setupPurchasedPatternList$2 INSTANCE = new MainActivity$setupPurchasedPatternList$2();

    MainActivity$setupPurchasedPatternList$2() {
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // io.reactivex.functions.Predicate
    public /* bridge */ /* synthetic */ boolean test(Pair<? extends String, ? extends List<? extends Pattern>> pair) {
        return test((Pair<String, ? extends List<? extends Pattern>>) pair);
    }

    public final boolean test(@NotNull Pair<String, ? extends List<? extends Pattern>> pair) {
        Intrinsics.checkParameterIsNotNull(pair, "it");
        return !((Collection) pair.getSecond()).isEmpty();
    }
}
