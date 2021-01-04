package com.liber8tech.tago.service;

import com.liber8tech.tago.model.TagoDevice;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a&\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002 \u0003*\u0012\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002\u0018\u00010\u00010\u00012\u001e\u0010\u0004\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u0005H\n¢\u0006\u0002\b\b"}, d2 = {"<anonymous>", "Lio/reactivex/Observable;", "", "kotlin.jvm.PlatformType", "<name for destructuring parameter 0>", "Lkotlin/Pair;", "", "Lcom/liber8tech/tago/model/TagoDevice;", "apply"}, k = 3, mv = {1, 1, 13})
/* compiled from: TagoService.kt */
public final class TagoService$sync$2<T, R> implements Function<T, ObservableSource<? extends R>> {
    public static final TagoService$sync$2 INSTANCE = new TagoService$sync$2();

    TagoService$sync$2() {
    }

    public final Observable<Unit> apply(@NotNull Pair<? extends List<? extends TagoDevice>, ? extends List<? extends TagoDevice>> pair) {
        T t;
        Intrinsics.checkParameterIsNotNull(pair, "<name for destructuring parameter 0>");
        List list = (List) pair.component2();
        ArrayList arrayList = new ArrayList();
        for (T t2 : (List) pair.component1()) {
            Iterator<T> it2 = list.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    t = null;
                    break;
                }
                t = it2.next();
                if (Intrinsics.areEqual(t.getIdentifier(), t2.getIdentifier())) {
                    break;
                }
            }
            if (t == null) {
                arrayList.add(t2);
            }
        }
        if (!arrayList.isEmpty()) {
            return Observable.fromIterable(arrayList).flatMap(AnonymousClass2.INSTANCE);
        }
        return Observable.just(Unit.INSTANCE);
    }
}
