package com.liber8tech.tago.android.activity;

import com.liber8tech.tago.model.Pack;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\u0010\u0000\u001a&\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002 \u0003*\u0012\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002\u0018\u00010\u00010\u00012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "Lio/reactivex/Observable;", "Lcom/liber8tech/tago/model/Pack;", "kotlin.jvm.PlatformType", "it", "", "apply"}, k = 3, mv = {1, 1, 13})
/* compiled from: MainActivity.kt */
final class MainActivity$onCreate$7<T, R> implements Function<T, ObservableSource<? extends R>> {
    public static final MainActivity$onCreate$7 INSTANCE = new MainActivity$onCreate$7();

    MainActivity$onCreate$7() {
    }

    public final Observable<Pack> apply(@NotNull List<Pack> list) {
        Intrinsics.checkParameterIsNotNull(list, "it");
        return Observable.fromIterable(list);
    }
}
