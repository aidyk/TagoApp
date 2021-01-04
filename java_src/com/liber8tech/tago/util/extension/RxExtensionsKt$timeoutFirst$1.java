package com.liber8tech.tago.util.extension;

import io.reactivex.Observable;
import io.reactivex.functions.Function;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0005\u0010\u0000\u001a&\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002 \u0003*\u0012\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002\u0018\u00010\u00010\u0001\"\u0004\b\u0000\u0010\u00042\u0006\u0010\u0005\u001a\u0002H\u0004H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"<anonymous>", "Lio/reactivex/Observable;", "", "kotlin.jvm.PlatformType", "T", "it", "apply", "(Ljava/lang/Object;)Lio/reactivex/Observable;"}, k = 3, mv = {1, 1, 13})
/* compiled from: RxExtensions.kt */
public final class RxExtensionsKt$timeoutFirst$1<T, R> implements Function<T, Observable<Long>> {
    final /* synthetic */ long $timeout;

    RxExtensionsKt$timeoutFirst$1(long j) {
        this.$timeout = j;
    }

    @Override // io.reactivex.functions.Function
    public final Observable<Long> apply(T t) {
        return Observable.timer(this.$timeout, TimeUnit.MILLISECONDS);
    }
}
