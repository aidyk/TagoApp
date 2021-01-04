package io.reactivex.rxkotlin;

import io.reactivex.Flowable;
import io.reactivex.Maybe;
import io.reactivex.MaybeSource;
import io.reactivex.Observable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 2}, d1 = {"\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a%\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\b\u0012\u0004\u0012\u00020\u00030\u0001H\b\u001aD\u0010\u0004\u001a&\u0012\f\u0012\n \u0007*\u0004\u0018\u0001H\u0006H\u0006 \u0007*\u0012\u0012\f\u0012\n \u0007*\u0004\u0018\u0001H\u0006H\u0006\u0018\u00010\u00050\u0005\"\b\b\u0000\u0010\u0006*\u00020\u0003*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00060\t0\b\u001aD\u0010\n\u001a&\u0012\f\u0012\n \u0007*\u0004\u0018\u0001H\u0006H\u0006 \u0007*\u0012\u0012\f\u0012\n \u0007*\u0004\u0018\u0001H\u0006H\u0006\u0018\u00010\u00050\u0005\"\b\b\u0000\u0010\u0006*\u00020\u0003*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00060\u00010\u0005\u001aD\u0010\n\u001a&\u0012\f\u0012\n \u0007*\u0004\u0018\u0001H\u0006H\u0006 \u0007*\u0012\u0012\f\u0012\n \u0007*\u0004\u0018\u0001H\u0006H\u0006\u0018\u00010\u000b0\u000b\"\b\b\u0000\u0010\u0006*\u00020\u0003*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00060\u00010\u000b\u001a%\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\b\u0012\u0004\u0012\u00020\u00030\u0001H\b¨\u0006\r"}, d2 = {"cast", "Lio/reactivex/Maybe;", "R", "", "concatAll", "Lio/reactivex/Flowable;", "T", "kotlin.jvm.PlatformType", "", "Lio/reactivex/MaybeSource;", "mergeAllMaybes", "Lio/reactivex/Observable;", "ofType", "rxkotlin"}, k = 2, mv = {1, 1, 8})
/* compiled from: maybe.kt */
public final class MaybeKt {
    /* JADX DEBUG: Type inference failed for r2v1. Raw type applied. Possible types: io.reactivex.Maybe<U>, java.lang.Object, io.reactivex.Maybe<R> */
    private static final <R> Maybe<R> cast(@NotNull Maybe<Object> maybe) {
        Intrinsics.reifiedOperationMarker(4, "R");
        Maybe maybe2 = (Maybe<U>) maybe.cast(Object.class);
        Intrinsics.checkExpressionValueIsNotNull(maybe2, "cast(R::class.java)");
        return maybe2;
    }

    /* JADX DEBUG: Type inference failed for r2v1. Raw type applied. Possible types: io.reactivex.Maybe<U>, java.lang.Object, io.reactivex.Maybe<R> */
    private static final <R> Maybe<R> ofType(@NotNull Maybe<Object> maybe) {
        Intrinsics.reifiedOperationMarker(4, "R");
        Maybe maybe2 = (Maybe<U>) maybe.ofType(Object.class);
        Intrinsics.checkExpressionValueIsNotNull(maybe2, "ofType(R::class.java)");
        return maybe2;
    }

    /* JADX DEBUG: Type inference failed for r1v1. Raw type applied. Possible types: io.reactivex.Observable<R>, io.reactivex.Observable<T> */
    public static final <T> Observable<T> mergeAllMaybes(@NotNull Observable<Maybe<T>> observable) {
        Intrinsics.checkParameterIsNotNull(observable, "$receiver");
        return (Observable<R>) observable.flatMapMaybe(MaybeKt$mergeAllMaybes$1.INSTANCE);
    }

    /* JADX DEBUG: Type inference failed for r1v1. Raw type applied. Possible types: io.reactivex.Flowable<R>, io.reactivex.Flowable<T> */
    public static final <T> Flowable<T> mergeAllMaybes(@NotNull Flowable<Maybe<T>> flowable) {
        Intrinsics.checkParameterIsNotNull(flowable, "$receiver");
        return (Flowable<R>) flowable.flatMapMaybe(MaybeKt$mergeAllMaybes$2.INSTANCE);
    }

    public static final <T> Flowable<T> concatAll(@NotNull Iterable<? extends MaybeSource<T>> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "$receiver");
        return Maybe.concat(iterable);
    }
}
