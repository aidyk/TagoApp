package com.trello.rxlifecycle2;

import com.trello.rxlifecycle2.internal.Preconditions;
import io.reactivex.Observable;
import io.reactivex.functions.BiFunction;
import io.reactivex.functions.Function;
import io.reactivex.functions.Predicate;
import javax.annotation.CheckReturnValue;
import javax.annotation.Nonnull;

public class RxLifecycle {
    private RxLifecycle() {
        throw new AssertionError("No instances");
    }

    @Nonnull
    @CheckReturnValue
    public static <T, R> LifecycleTransformer<T> bindUntilEvent(@Nonnull Observable<R> observable, @Nonnull R r) {
        Preconditions.checkNotNull(observable, "lifecycle == null");
        Preconditions.checkNotNull(r, "event == null");
        return bind(takeUntilEvent(observable, r));
    }

    private static <R> Observable<R> takeUntilEvent(Observable<R> observable, final R r) {
        return observable.filter(new Predicate<R>() {
            /* class com.trello.rxlifecycle2.RxLifecycle.AnonymousClass1 */

            @Override // io.reactivex.functions.Predicate
            public boolean test(R r) throws Exception {
                return r.equals(r);
            }
        });
    }

    @Nonnull
    @CheckReturnValue
    public static <T, R> LifecycleTransformer<T> bind(@Nonnull Observable<R> observable) {
        return new LifecycleTransformer<>(observable);
    }

    @Nonnull
    @CheckReturnValue
    public static <T, R> LifecycleTransformer<T> bind(@Nonnull Observable<R> observable, @Nonnull Function<R, R> function) {
        Preconditions.checkNotNull(observable, "lifecycle == null");
        Preconditions.checkNotNull(function, "correspondingEvents == null");
        return bind(takeUntilCorrespondingEvent(observable.share(), function));
    }

    private static <R> Observable<Boolean> takeUntilCorrespondingEvent(Observable<R> observable, Function<R, R> function) {
        return Observable.combineLatest(observable.take(1).map(function), observable.skip(1), new BiFunction<R, R, Boolean>() {
            /* class com.trello.rxlifecycle2.RxLifecycle.AnonymousClass2 */

            @Override // io.reactivex.functions.BiFunction
            public Boolean apply(R r, R r2) throws Exception {
                return Boolean.valueOf(r2.equals(r));
            }
        }).onErrorReturn(Functions.RESUME_FUNCTION).filter(Functions.SHOULD_COMPLETE);
    }
}
