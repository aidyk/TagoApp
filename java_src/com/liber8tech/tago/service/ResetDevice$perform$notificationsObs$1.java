package com.liber8tech.tago.service;

import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\b\u0003\u0010\u0000\u001a\u0010\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00020\u00020\u00012\u0014\u0010\u0004\u001a\u0010\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00020\u00020\u0001H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "Lio/reactivex/Observable;", "", "kotlin.jvm.PlatformType", "it", "apply"}, k = 3, mv = {1, 1, 13})
/* compiled from: ResetDevice.kt */
public final class ResetDevice$perform$notificationsObs$1<T, R> implements Function<T, ObservableSource<? extends R>> {
    public static final ResetDevice$perform$notificationsObs$1 INSTANCE = new ResetDevice$perform$notificationsObs$1();

    ResetDevice$perform$notificationsObs$1() {
    }

    @NotNull
    public final Observable<byte[]> apply(@NotNull Observable<byte[]> observable) {
        Intrinsics.checkParameterIsNotNull(observable, "it");
        return observable;
    }
}
