package com.liber8tech.tago.service;

import io.reactivex.functions.Predicate;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00010\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "Lkotlin/Pair;", "test"}, k = 3, mv = {1, 1, 13})
/* compiled from: TagoService.kt */
public final class TagoService$devices$1<T> implements Predicate<Pair<? extends Boolean, ? extends Boolean>> {
    public static final TagoService$devices$1 INSTANCE = new TagoService$devices$1();

    TagoService$devices$1() {
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // io.reactivex.functions.Predicate
    public /* bridge */ /* synthetic */ boolean test(Pair<? extends Boolean, ? extends Boolean> pair) {
        return test((Pair<Boolean, Boolean>) pair);
    }

    public final boolean test(@NotNull Pair<Boolean, Boolean> pair) {
        Intrinsics.checkParameterIsNotNull(pair, "it");
        return pair.getFirst().booleanValue() && pair.getSecond().booleanValue();
    }
}
