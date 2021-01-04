package com.liber8tech.tago.util.extension;

import com.polidea.rxandroidble2.ClientComponent;
import io.reactivex.Observable;
import io.reactivex.Scheduler;
import io.reactivex.Single;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.schedulers.Schedulers;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\u001a&\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0002\u001a\u001c\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0001\u001a\u001c\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0006\u001a$\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0006\u0010\b\u001a\u00020\t\u001a$\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0006\u0010\b\u001a\u00020\t¨\u0006\u000b"}, d2 = {"async", "Lio/reactivex/Observable;", "T", "s", "Lio/reactivex/Scheduler;", "asyncIO", "Lio/reactivex/Single;", "timeoutEach", ClientComponent.NamedSchedulers.TIMEOUT, "", "timeoutFirst", "app_release"}, k = 2, mv = {1, 1, 13})
/* compiled from: RxExtensions.kt */
public final class RxExtensionsKt {
    private static final <T> Observable<T> async(@NotNull Observable<T> observable, Scheduler scheduler) {
        Observable<T> observeOn = observable.subscribeOn(scheduler).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkExpressionValueIsNotNull(observeOn, "subscribeOn(s).observeOn…dSchedulers.mainThread())");
        return observeOn;
    }

    @NotNull
    public static final <T> Observable<T> timeoutFirst(@NotNull Observable<T> observable, long j) {
        Intrinsics.checkParameterIsNotNull(observable, "receiver$0");
        Observable<T> timeout = observable.timeout(new RxExtensionsKt$timeoutFirst$1(j), observable);
        Intrinsics.checkExpressionValueIsNotNull(timeout, "timeout(Function<T, Obse…it.MILLISECONDS) }, this)");
        return timeout;
    }

    @NotNull
    public static final <T> Observable<T> timeoutEach(@NotNull Observable<T> observable, long j) {
        Intrinsics.checkParameterIsNotNull(observable, "receiver$0");
        Observable<T> timeout = observable.timeout(j, TimeUnit.MILLISECONDS);
        Intrinsics.checkExpressionValueIsNotNull(timeout, "timeout(timeout, TimeUnit.MILLISECONDS)");
        return timeout;
    }

    @NotNull
    public static final <T> Observable<T> asyncIO(@NotNull Observable<T> observable) {
        Intrinsics.checkParameterIsNotNull(observable, "receiver$0");
        Observable<T> observeOn = observable.doOnError(RxExtensionsKt$asyncIO$1.INSTANCE).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkExpressionValueIsNotNull(observeOn, "doOnError { Crashlytics.…dSchedulers.mainThread())");
        return observeOn;
    }

    @NotNull
    public static final <T> Single<T> asyncIO(@NotNull Single<T> single) {
        Intrinsics.checkParameterIsNotNull(single, "receiver$0");
        Single<T> observeOn = single.doOnError(RxExtensionsKt$asyncIO$2.INSTANCE).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkExpressionValueIsNotNull(observeOn, "doOnError { Crashlytics.…dSchedulers.mainThread())");
        return observeOn;
    }
}
