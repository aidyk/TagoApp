package io.reactivex.rxkotlin;

import io.reactivex.Flowable;
import io.reactivex.Observable;
import io.reactivex.Single;
import io.reactivex.SingleSource;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 2}, d1 = {"\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a%\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\b\u0012\u0004\u0012\u00020\u00030\u0001H\b\u001aD\u0010\u0004\u001a&\u0012\f\u0012\n \u0007*\u0004\u0018\u0001H\u0006H\u0006 \u0007*\u0012\u0012\f\u0012\n \u0007*\u0004\u0018\u0001H\u0006H\u0006\u0018\u00010\u00050\u0005\"\b\b\u0000\u0010\u0006*\u00020\u0003*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00060\t0\b\u001aD\u0010\n\u001a&\u0012\f\u0012\n \u0007*\u0004\u0018\u0001H\u0006H\u0006 \u0007*\u0012\u0012\f\u0012\n \u0007*\u0004\u0018\u0001H\u0006H\u0006\u0018\u00010\u00050\u0005\"\b\b\u0000\u0010\u0006*\u00020\u0003*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00060\u00010\u0005\u001aD\u0010\n\u001a&\u0012\f\u0012\n \u0007*\u0004\u0018\u0001H\u0006H\u0006 \u0007*\u0012\u0012\f\u0012\n \u0007*\u0004\u0018\u0001H\u0006H\u0006\u0018\u00010\u000b0\u000b\"\b\b\u0000\u0010\u0006*\u00020\u0003*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00060\u00010\u000b¨\u0006\f"}, d2 = {"cast", "Lio/reactivex/Single;", "R", "", "concatAll", "Lio/reactivex/Flowable;", "T", "kotlin.jvm.PlatformType", "", "Lio/reactivex/SingleSource;", "mergeAllSingles", "Lio/reactivex/Observable;", "rxkotlin"}, k = 2, mv = {1, 1, 8})
/* compiled from: single.kt */
public final class SingleKt {
    /* JADX DEBUG: Type inference failed for r2v1. Raw type applied. Possible types: io.reactivex.Single<U>, java.lang.Object, io.reactivex.Single<R> */
    private static final <R> Single<R> cast(@NotNull Single<Object> single) {
        Intrinsics.reifiedOperationMarker(4, "R");
        Single single2 = (Single<U>) single.cast(Object.class);
        Intrinsics.checkExpressionValueIsNotNull(single2, "cast(R::class.java)");
        return single2;
    }

    /* JADX DEBUG: Type inference failed for r1v1. Raw type applied. Possible types: io.reactivex.Observable<R>, io.reactivex.Observable<T> */
    public static final <T> Observable<T> mergeAllSingles(@NotNull Observable<Single<T>> observable) {
        Intrinsics.checkParameterIsNotNull(observable, "$receiver");
        return (Observable<R>) observable.flatMapSingle(SingleKt$mergeAllSingles$1.INSTANCE);
    }

    /* JADX DEBUG: Type inference failed for r1v1. Raw type applied. Possible types: io.reactivex.Flowable<R>, io.reactivex.Flowable<T> */
    public static final <T> Flowable<T> mergeAllSingles(@NotNull Flowable<Single<T>> flowable) {
        Intrinsics.checkParameterIsNotNull(flowable, "$receiver");
        return (Flowable<R>) flowable.flatMapSingle(SingleKt$mergeAllSingles$2.INSTANCE);
    }

    public static final <T> Flowable<T> concatAll(@NotNull Iterable<? extends SingleSource<T>> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "$receiver");
        return Single.concat(iterable);
    }
}
