package com.trello.rxlifecycle2.kotlin;

import android.view.View;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.trello.rxlifecycle2.LifecycleProvider;
import com.trello.rxlifecycle2.RxLifecycle;
import com.trello.rxlifecycle2.android.RxLifecycleAndroid;
import io.reactivex.Completable;
import io.reactivex.Flowable;
import io.reactivex.Maybe;
import io.reactivex.Observable;
import io.reactivex.Single;
import io.reactivex.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 2}, d1 = {"\u00004\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\u001a\u001e\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004\u001a2\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00020\u0006\u001a0\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\b0\u0007\"\u0004\b\u0000\u0010\b\"\u0004\b\u0001\u0010\u0002*\b\u0012\u0004\u0012\u0002H\b0\u00072\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004\u001aD\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\b0\u0007\"\u0004\b\u0000\u0010\b\"\u0004\b\u0001\u0010\u0002*\b\u0012\u0004\u0012\u0002H\b0\u00072\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00020\u0006\u001a0\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\b0\t\"\u0004\b\u0000\u0010\b\"\u0004\b\u0001\u0010\u0002*\b\u0012\u0004\u0012\u0002H\b0\t2\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004\u001aD\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\b0\t\"\u0004\b\u0000\u0010\b\"\u0004\b\u0001\u0010\u0002*\b\u0012\u0004\u0012\u0002H\b0\t2\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00020\u0006\u001a0\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\b0\u0004\"\u0004\b\u0000\u0010\b\"\u0004\b\u0001\u0010\u0002*\b\u0012\u0004\u0012\u0002H\b0\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004\u001aD\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\b0\u0004\"\u0004\b\u0000\u0010\b\"\u0004\b\u0001\u0010\u0002*\b\u0012\u0004\u0012\u0002H\b0\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00020\u0006\u001a0\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\b0\n\"\u0004\b\u0000\u0010\b\"\u0004\b\u0001\u0010\u0002*\b\u0012\u0004\u0012\u0002H\b0\n2\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004\u001aD\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\b0\n\"\u0004\b\u0000\u0010\b\"\u0004\b\u0001\u0010\u0002*\b\u0012\u0004\u0012\u0002H\b0\n2\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00020\u0006\u001a\u0012\u0010\u000b\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\f\u001a\u00020\r\u001a\u001e\u0010\u000b\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u00012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u0002H\u00020\u000f\u001a$\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\b0\u0007\"\u0004\b\u0000\u0010\b*\b\u0012\u0004\u0012\u0002H\b0\u00072\u0006\u0010\f\u001a\u00020\r\u001a0\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\b0\u0007\"\u0004\b\u0000\u0010\b\"\u0004\b\u0001\u0010\u0002*\b\u0012\u0004\u0012\u0002H\b0\u00072\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u0002H\u00020\u000f\u001a$\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\b0\t\"\u0004\b\u0000\u0010\b*\b\u0012\u0004\u0012\u0002H\b0\t2\u0006\u0010\f\u001a\u00020\r\u001a0\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\b0\t\"\u0004\b\u0000\u0010\b\"\u0004\b\u0001\u0010\u0002*\b\u0012\u0004\u0012\u0002H\b0\t2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u0002H\u00020\u000f\u001a$\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\b0\u0004\"\u0004\b\u0000\u0010\b*\b\u0012\u0004\u0012\u0002H\b0\u00042\u0006\u0010\f\u001a\u00020\r\u001a0\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\b0\u0004\"\u0004\b\u0000\u0010\b\"\u0004\b\u0001\u0010\u0002*\b\u0012\u0004\u0012\u0002H\b0\u00042\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u0002H\u00020\u000f\u001a$\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\b0\n\"\u0004\b\u0000\u0010\b*\b\u0012\u0004\u0012\u0002H\b0\n2\u0006\u0010\f\u001a\u00020\r\u001a0\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\b0\n\"\u0004\b\u0000\u0010\b\"\u0004\b\u0001\u0010\u0002*\b\u0012\u0004\u0012\u0002H\b0\n2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u0002H\u00020\u000f\u001a+\u0010\u0010\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u00012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u0002H\u00020\u000f2\u0006\u0010\u0011\u001a\u0002H\u0002¢\u0006\u0002\u0010\u0012\u001a+\u0010\u0010\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00042\u0006\u0010\u0011\u001a\u0002H\u0002¢\u0006\u0002\u0010\u0013\u001a=\u0010\u0010\u001a\b\u0012\u0004\u0012\u0002H\b0\u0007\"\u0004\b\u0000\u0010\b\"\u0004\b\u0001\u0010\u0002*\b\u0012\u0004\u0012\u0002H\b0\u00072\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u0002H\u00020\u000f2\u0006\u0010\u0011\u001a\u0002H\u0002¢\u0006\u0002\u0010\u0014\u001a=\u0010\u0010\u001a\b\u0012\u0004\u0012\u0002H\b0\u0007\"\u0004\b\u0000\u0010\b\"\u0004\b\u0001\u0010\u0002*\b\u0012\u0004\u0012\u0002H\b0\u00072\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00042\u0006\u0010\u0011\u001a\u0002H\u0002¢\u0006\u0002\u0010\u0015\u001a=\u0010\u0010\u001a\b\u0012\u0004\u0012\u0002H\b0\t\"\u0004\b\u0000\u0010\b\"\u0004\b\u0001\u0010\u0002*\b\u0012\u0004\u0012\u0002H\b0\t2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u0002H\u00020\u000f2\u0006\u0010\u0011\u001a\u0002H\u0002¢\u0006\u0002\u0010\u0016\u001a=\u0010\u0010\u001a\b\u0012\u0004\u0012\u0002H\b0\t\"\u0004\b\u0000\u0010\b\"\u0004\b\u0001\u0010\u0002*\b\u0012\u0004\u0012\u0002H\b0\t2\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00042\u0006\u0010\u0011\u001a\u0002H\u0002¢\u0006\u0002\u0010\u0017\u001a=\u0010\u0010\u001a\b\u0012\u0004\u0012\u0002H\b0\u0004\"\u0004\b\u0000\u0010\b\"\u0004\b\u0001\u0010\u0002*\b\u0012\u0004\u0012\u0002H\b0\u00042\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u0002H\u00020\u000f2\u0006\u0010\u0011\u001a\u0002H\u0002¢\u0006\u0002\u0010\u0018\u001a=\u0010\u0010\u001a\b\u0012\u0004\u0012\u0002H\b0\u0004\"\u0004\b\u0000\u0010\b\"\u0004\b\u0001\u0010\u0002*\b\u0012\u0004\u0012\u0002H\b0\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00042\u0006\u0010\u0011\u001a\u0002H\u0002¢\u0006\u0002\u0010\u0019\u001a=\u0010\u0010\u001a\b\u0012\u0004\u0012\u0002H\b0\n\"\u0004\b\u0000\u0010\b\"\u0004\b\u0001\u0010\u0002*\b\u0012\u0004\u0012\u0002H\b0\n2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u0002H\u00020\u000f2\u0006\u0010\u0011\u001a\u0002H\u0002¢\u0006\u0002\u0010\u001a\u001a=\u0010\u0010\u001a\b\u0012\u0004\u0012\u0002H\b0\n\"\u0004\b\u0000\u0010\b\"\u0004\b\u0001\u0010\u0002*\b\u0012\u0004\u0012\u0002H\b0\n2\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00042\u0006\u0010\u0011\u001a\u0002H\u0002¢\u0006\u0002\u0010\u001b¨\u0006\u001c"}, d2 = {"bind", "Lio/reactivex/Completable;", "E", "lifecycle", "Lio/reactivex/Observable;", "correspondingEvents", "Lio/reactivex/functions/Function;", "Lio/reactivex/Flowable;", "T", "Lio/reactivex/Maybe;", "Lio/reactivex/Single;", "bindToLifecycle", Promotion.ACTION_VIEW, "Landroid/view/View;", "provider", "Lcom/trello/rxlifecycle2/LifecycleProvider;", "bindUntilEvent", "event", "(Lio/reactivex/Completable;Lcom/trello/rxlifecycle2/LifecycleProvider;Ljava/lang/Object;)Lio/reactivex/Completable;", "(Lio/reactivex/Completable;Lio/reactivex/Observable;Ljava/lang/Object;)Lio/reactivex/Completable;", "(Lio/reactivex/Flowable;Lcom/trello/rxlifecycle2/LifecycleProvider;Ljava/lang/Object;)Lio/reactivex/Flowable;", "(Lio/reactivex/Flowable;Lio/reactivex/Observable;Ljava/lang/Object;)Lio/reactivex/Flowable;", "(Lio/reactivex/Maybe;Lcom/trello/rxlifecycle2/LifecycleProvider;Ljava/lang/Object;)Lio/reactivex/Maybe;", "(Lio/reactivex/Maybe;Lio/reactivex/Observable;Ljava/lang/Object;)Lio/reactivex/Maybe;", "(Lio/reactivex/Observable;Lcom/trello/rxlifecycle2/LifecycleProvider;Ljava/lang/Object;)Lio/reactivex/Observable;", "(Lio/reactivex/Observable;Lio/reactivex/Observable;Ljava/lang/Object;)Lio/reactivex/Observable;", "(Lio/reactivex/Single;Lcom/trello/rxlifecycle2/LifecycleProvider;Ljava/lang/Object;)Lio/reactivex/Single;", "(Lio/reactivex/Single;Lio/reactivex/Observable;Ljava/lang/Object;)Lio/reactivex/Single;", "rxlifecycle-kotlin_release"}, k = 2, mv = {1, 1, 7})
/* compiled from: rxlifecycle.kt */
public final class RxlifecycleKt {
    /* JADX DEBUG: Type inference failed for r1v1. Raw type applied. Possible types: io.reactivex.Observable<R>, java.lang.Object, io.reactivex.Observable<T> */
    @NotNull
    public static final <T, E> Observable<T> bind(@NotNull Observable<T> observable, @NotNull Observable<E> observable2) {
        Intrinsics.checkParameterIsNotNull(observable, "$receiver");
        Intrinsics.checkParameterIsNotNull(observable2, "lifecycle");
        Observable observable3 = (Observable<R>) observable.compose(RxLifecycle.bind(observable2));
        Intrinsics.checkExpressionValueIsNotNull(observable3, "this.compose<T>(RxLifecycle.bind(lifecycle))");
        return observable3;
    }

    /* JADX DEBUG: Type inference failed for r1v1. Raw type applied. Possible types: io.reactivex.Observable<R>, java.lang.Object, io.reactivex.Observable<T> */
    @NotNull
    public static final <T, E> Observable<T> bindUntilEvent(@NotNull Observable<T> observable, @NotNull Observable<E> observable2, E e) {
        Intrinsics.checkParameterIsNotNull(observable, "$receiver");
        Intrinsics.checkParameterIsNotNull(observable2, "lifecycle");
        Observable observable3 = (Observable<R>) observable.compose(RxLifecycle.bindUntilEvent(observable2, e));
        Intrinsics.checkExpressionValueIsNotNull(observable3, "this.compose<T>(RxLifecy…lEvent(lifecycle, event))");
        return observable3;
    }

    /* JADX DEBUG: Type inference failed for r1v1. Raw type applied. Possible types: io.reactivex.Observable<R>, java.lang.Object, io.reactivex.Observable<T> */
    @NotNull
    public static final <T, E> Observable<T> bind(@NotNull Observable<T> observable, @NotNull Observable<E> observable2, @NotNull Function<E, E> function) {
        Intrinsics.checkParameterIsNotNull(observable, "$receiver");
        Intrinsics.checkParameterIsNotNull(observable2, "lifecycle");
        Intrinsics.checkParameterIsNotNull(function, "correspondingEvents");
        Observable observable3 = (Observable<R>) observable.compose(RxLifecycle.bind(observable2, function));
        Intrinsics.checkExpressionValueIsNotNull(observable3, "this.compose<T>(RxLifecy…le, correspondingEvents))");
        return observable3;
    }

    /* JADX DEBUG: Type inference failed for r1v1. Raw type applied. Possible types: io.reactivex.Flowable<R>, java.lang.Object, io.reactivex.Flowable<T> */
    @NotNull
    public static final <T, E> Flowable<T> bind(@NotNull Flowable<T> flowable, @NotNull Observable<E> observable) {
        Intrinsics.checkParameterIsNotNull(flowable, "$receiver");
        Intrinsics.checkParameterIsNotNull(observable, "lifecycle");
        Flowable flowable2 = (Flowable<R>) flowable.compose(RxLifecycle.bind(observable));
        Intrinsics.checkExpressionValueIsNotNull(flowable2, "this.compose<T>(RxLifecycle.bind(lifecycle))");
        return flowable2;
    }

    /* JADX DEBUG: Type inference failed for r1v1. Raw type applied. Possible types: io.reactivex.Flowable<R>, java.lang.Object, io.reactivex.Flowable<T> */
    @NotNull
    public static final <T, E> Flowable<T> bindUntilEvent(@NotNull Flowable<T> flowable, @NotNull Observable<E> observable, E e) {
        Intrinsics.checkParameterIsNotNull(flowable, "$receiver");
        Intrinsics.checkParameterIsNotNull(observable, "lifecycle");
        Flowable flowable2 = (Flowable<R>) flowable.compose(RxLifecycle.bindUntilEvent(observable, e));
        Intrinsics.checkExpressionValueIsNotNull(flowable2, "this.compose<T>(RxLifecy…lEvent(lifecycle, event))");
        return flowable2;
    }

    /* JADX DEBUG: Type inference failed for r1v1. Raw type applied. Possible types: io.reactivex.Flowable<R>, java.lang.Object, io.reactivex.Flowable<T> */
    @NotNull
    public static final <T, E> Flowable<T> bind(@NotNull Flowable<T> flowable, @NotNull Observable<E> observable, @NotNull Function<E, E> function) {
        Intrinsics.checkParameterIsNotNull(flowable, "$receiver");
        Intrinsics.checkParameterIsNotNull(observable, "lifecycle");
        Intrinsics.checkParameterIsNotNull(function, "correspondingEvents");
        Flowable flowable2 = (Flowable<R>) flowable.compose(RxLifecycle.bind(observable, function));
        Intrinsics.checkExpressionValueIsNotNull(flowable2, "this.compose<T>(RxLifecy…le, correspondingEvents))");
        return flowable2;
    }

    /* JADX DEBUG: Type inference failed for r1v1. Raw type applied. Possible types: io.reactivex.Single<R>, java.lang.Object, io.reactivex.Single<T> */
    @NotNull
    public static final <T, E> Single<T> bind(@NotNull Single<T> single, @NotNull Observable<E> observable) {
        Intrinsics.checkParameterIsNotNull(single, "$receiver");
        Intrinsics.checkParameterIsNotNull(observable, "lifecycle");
        Single single2 = (Single<R>) single.compose(RxLifecycle.bind(observable));
        Intrinsics.checkExpressionValueIsNotNull(single2, "this.compose<T>(RxLifecycle.bind(lifecycle))");
        return single2;
    }

    /* JADX DEBUG: Type inference failed for r1v1. Raw type applied. Possible types: io.reactivex.Single<R>, java.lang.Object, io.reactivex.Single<T> */
    @NotNull
    public static final <T, E> Single<T> bindUntilEvent(@NotNull Single<T> single, @NotNull Observable<E> observable, E e) {
        Intrinsics.checkParameterIsNotNull(single, "$receiver");
        Intrinsics.checkParameterIsNotNull(observable, "lifecycle");
        Single single2 = (Single<R>) single.compose(RxLifecycle.bindUntilEvent(observable, e));
        Intrinsics.checkExpressionValueIsNotNull(single2, "this.compose<T>(RxLifecy…lEvent(lifecycle, event))");
        return single2;
    }

    /* JADX DEBUG: Type inference failed for r1v1. Raw type applied. Possible types: io.reactivex.Single<R>, java.lang.Object, io.reactivex.Single<T> */
    @NotNull
    public static final <T, E> Single<T> bind(@NotNull Single<T> single, @NotNull Observable<E> observable, @NotNull Function<E, E> function) {
        Intrinsics.checkParameterIsNotNull(single, "$receiver");
        Intrinsics.checkParameterIsNotNull(observable, "lifecycle");
        Intrinsics.checkParameterIsNotNull(function, "correspondingEvents");
        Single single2 = (Single<R>) single.compose(RxLifecycle.bind(observable, function));
        Intrinsics.checkExpressionValueIsNotNull(single2, "this.compose<T>(RxLifecy…le, correspondingEvents))");
        return single2;
    }

    /* JADX DEBUG: Type inference failed for r1v1. Raw type applied. Possible types: io.reactivex.Maybe<R>, java.lang.Object, io.reactivex.Maybe<T> */
    @NotNull
    public static final <T, E> Maybe<T> bind(@NotNull Maybe<T> maybe, @NotNull Observable<E> observable) {
        Intrinsics.checkParameterIsNotNull(maybe, "$receiver");
        Intrinsics.checkParameterIsNotNull(observable, "lifecycle");
        Maybe maybe2 = (Maybe<R>) maybe.compose(RxLifecycle.bind(observable));
        Intrinsics.checkExpressionValueIsNotNull(maybe2, "this.compose<T>(RxLifecycle.bind(lifecycle))");
        return maybe2;
    }

    /* JADX DEBUG: Type inference failed for r1v1. Raw type applied. Possible types: io.reactivex.Maybe<R>, java.lang.Object, io.reactivex.Maybe<T> */
    @NotNull
    public static final <T, E> Maybe<T> bindUntilEvent(@NotNull Maybe<T> maybe, @NotNull Observable<E> observable, E e) {
        Intrinsics.checkParameterIsNotNull(maybe, "$receiver");
        Intrinsics.checkParameterIsNotNull(observable, "lifecycle");
        Maybe maybe2 = (Maybe<R>) maybe.compose(RxLifecycle.bindUntilEvent(observable, e));
        Intrinsics.checkExpressionValueIsNotNull(maybe2, "this.compose<T>(RxLifecy…lEvent(lifecycle, event))");
        return maybe2;
    }

    /* JADX DEBUG: Type inference failed for r1v1. Raw type applied. Possible types: io.reactivex.Maybe<R>, java.lang.Object, io.reactivex.Maybe<T> */
    @NotNull
    public static final <T, E> Maybe<T> bind(@NotNull Maybe<T> maybe, @NotNull Observable<E> observable, @NotNull Function<E, E> function) {
        Intrinsics.checkParameterIsNotNull(maybe, "$receiver");
        Intrinsics.checkParameterIsNotNull(observable, "lifecycle");
        Intrinsics.checkParameterIsNotNull(function, "correspondingEvents");
        Maybe maybe2 = (Maybe<R>) maybe.compose(RxLifecycle.bind(observable, function));
        Intrinsics.checkExpressionValueIsNotNull(maybe2, "this.compose<T>(RxLifecy…le, correspondingEvents))");
        return maybe2;
    }

    @NotNull
    public static final <E> Completable bind(@NotNull Completable completable, @NotNull Observable<E> observable) {
        Intrinsics.checkParameterIsNotNull(completable, "$receiver");
        Intrinsics.checkParameterIsNotNull(observable, "lifecycle");
        Completable compose = completable.compose(RxLifecycle.bind(observable));
        Intrinsics.checkExpressionValueIsNotNull(compose, "this.compose(RxLifecycle.bind<Any, E>(lifecycle))");
        return compose;
    }

    @NotNull
    public static final <E> Completable bindUntilEvent(@NotNull Completable completable, @NotNull Observable<E> observable, E e) {
        Intrinsics.checkParameterIsNotNull(completable, "$receiver");
        Intrinsics.checkParameterIsNotNull(observable, "lifecycle");
        Completable compose = completable.compose(RxLifecycle.bindUntilEvent(observable, e));
        Intrinsics.checkExpressionValueIsNotNull(compose, "this.compose(RxLifecycle…ny, E>(lifecycle, event))");
        return compose;
    }

    @NotNull
    public static final <E> Completable bind(@NotNull Completable completable, @NotNull Observable<E> observable, @NotNull Function<E, E> function) {
        Intrinsics.checkParameterIsNotNull(completable, "$receiver");
        Intrinsics.checkParameterIsNotNull(observable, "lifecycle");
        Intrinsics.checkParameterIsNotNull(function, "correspondingEvents");
        Completable compose = completable.compose(RxLifecycle.bind(observable, function));
        Intrinsics.checkExpressionValueIsNotNull(compose, "this.compose(RxLifecycle…le, correspondingEvents))");
        return compose;
    }

    /* JADX DEBUG: Type inference failed for r1v1. Raw type applied. Possible types: io.reactivex.Observable<R>, java.lang.Object, io.reactivex.Observable<T> */
    @NotNull
    public static final <T, E> Observable<T> bindToLifecycle(@NotNull Observable<T> observable, @NotNull LifecycleProvider<E> lifecycleProvider) {
        Intrinsics.checkParameterIsNotNull(observable, "$receiver");
        Intrinsics.checkParameterIsNotNull(lifecycleProvider, "provider");
        Observable observable2 = (Observable<R>) observable.compose(lifecycleProvider.bindToLifecycle());
        Intrinsics.checkExpressionValueIsNotNull(observable2, "this.compose<T>(provider.bindToLifecycle<T>())");
        return observable2;
    }

    /* JADX DEBUG: Type inference failed for r1v1. Raw type applied. Possible types: io.reactivex.Observable<R>, java.lang.Object, io.reactivex.Observable<T> */
    @NotNull
    public static final <T, E> Observable<T> bindUntilEvent(@NotNull Observable<T> observable, @NotNull LifecycleProvider<E> lifecycleProvider, E e) {
        Intrinsics.checkParameterIsNotNull(observable, "$receiver");
        Intrinsics.checkParameterIsNotNull(lifecycleProvider, "provider");
        Observable observable2 = (Observable<R>) observable.compose(lifecycleProvider.bindUntilEvent(e));
        Intrinsics.checkExpressionValueIsNotNull(observable2, "this.compose<T>(provider.bindUntilEvent(event))");
        return observable2;
    }

    /* JADX DEBUG: Type inference failed for r1v1. Raw type applied. Possible types: io.reactivex.Observable<R>, java.lang.Object, io.reactivex.Observable<T> */
    @NotNull
    public static final <T> Observable<T> bindToLifecycle(@NotNull Observable<T> observable, @NotNull View view) {
        Intrinsics.checkParameterIsNotNull(observable, "$receiver");
        Intrinsics.checkParameterIsNotNull(view, Promotion.ACTION_VIEW);
        Observable observable2 = (Observable<R>) observable.compose(RxLifecycleAndroid.bindView(view));
        Intrinsics.checkExpressionValueIsNotNull(observable2, "this.compose<T>(RxLifecycleAndroid.bindView(view))");
        return observable2;
    }

    /* JADX DEBUG: Type inference failed for r1v1. Raw type applied. Possible types: io.reactivex.Flowable<R>, java.lang.Object, io.reactivex.Flowable<T> */
    @NotNull
    public static final <T, E> Flowable<T> bindToLifecycle(@NotNull Flowable<T> flowable, @NotNull LifecycleProvider<E> lifecycleProvider) {
        Intrinsics.checkParameterIsNotNull(flowable, "$receiver");
        Intrinsics.checkParameterIsNotNull(lifecycleProvider, "provider");
        Flowable flowable2 = (Flowable<R>) flowable.compose(lifecycleProvider.bindToLifecycle());
        Intrinsics.checkExpressionValueIsNotNull(flowable2, "this.compose<T>(provider.bindToLifecycle<T>())");
        return flowable2;
    }

    /* JADX DEBUG: Type inference failed for r1v1. Raw type applied. Possible types: io.reactivex.Flowable<R>, java.lang.Object, io.reactivex.Flowable<T> */
    @NotNull
    public static final <T, E> Flowable<T> bindUntilEvent(@NotNull Flowable<T> flowable, @NotNull LifecycleProvider<E> lifecycleProvider, E e) {
        Intrinsics.checkParameterIsNotNull(flowable, "$receiver");
        Intrinsics.checkParameterIsNotNull(lifecycleProvider, "provider");
        Flowable flowable2 = (Flowable<R>) flowable.compose(lifecycleProvider.bindUntilEvent(e));
        Intrinsics.checkExpressionValueIsNotNull(flowable2, "this.compose<T>(provider.bindUntilEvent(event))");
        return flowable2;
    }

    /* JADX DEBUG: Type inference failed for r1v1. Raw type applied. Possible types: io.reactivex.Flowable<R>, java.lang.Object, io.reactivex.Flowable<T> */
    @NotNull
    public static final <T> Flowable<T> bindToLifecycle(@NotNull Flowable<T> flowable, @NotNull View view) {
        Intrinsics.checkParameterIsNotNull(flowable, "$receiver");
        Intrinsics.checkParameterIsNotNull(view, Promotion.ACTION_VIEW);
        Flowable flowable2 = (Flowable<R>) flowable.compose(RxLifecycleAndroid.bindView(view));
        Intrinsics.checkExpressionValueIsNotNull(flowable2, "this.compose<T>(RxLifecycleAndroid.bindView(view))");
        return flowable2;
    }

    /* JADX DEBUG: Type inference failed for r1v1. Raw type applied. Possible types: io.reactivex.Single<R>, java.lang.Object, io.reactivex.Single<T> */
    @NotNull
    public static final <T, E> Single<T> bindToLifecycle(@NotNull Single<T> single, @NotNull LifecycleProvider<E> lifecycleProvider) {
        Intrinsics.checkParameterIsNotNull(single, "$receiver");
        Intrinsics.checkParameterIsNotNull(lifecycleProvider, "provider");
        Single single2 = (Single<R>) single.compose(lifecycleProvider.bindToLifecycle());
        Intrinsics.checkExpressionValueIsNotNull(single2, "this.compose(provider.bindToLifecycle<T>())");
        return single2;
    }

    /* JADX DEBUG: Type inference failed for r1v1. Raw type applied. Possible types: io.reactivex.Single<R>, java.lang.Object, io.reactivex.Single<T> */
    @NotNull
    public static final <T, E> Single<T> bindUntilEvent(@NotNull Single<T> single, @NotNull LifecycleProvider<E> lifecycleProvider, E e) {
        Intrinsics.checkParameterIsNotNull(single, "$receiver");
        Intrinsics.checkParameterIsNotNull(lifecycleProvider, "provider");
        Single single2 = (Single<R>) single.compose(lifecycleProvider.bindUntilEvent(e));
        Intrinsics.checkExpressionValueIsNotNull(single2, "this.compose(provider.bindUntilEvent<T>(event))");
        return single2;
    }

    /* JADX DEBUG: Type inference failed for r1v1. Raw type applied. Possible types: io.reactivex.Single<R>, java.lang.Object, io.reactivex.Single<T> */
    @NotNull
    public static final <T> Single<T> bindToLifecycle(@NotNull Single<T> single, @NotNull View view) {
        Intrinsics.checkParameterIsNotNull(single, "$receiver");
        Intrinsics.checkParameterIsNotNull(view, Promotion.ACTION_VIEW);
        Single single2 = (Single<R>) single.compose(RxLifecycleAndroid.bindView(view));
        Intrinsics.checkExpressionValueIsNotNull(single2, "this.compose(RxLifecycleAndroid.bindView<T>(view))");
        return single2;
    }

    /* JADX DEBUG: Type inference failed for r1v1. Raw type applied. Possible types: io.reactivex.Maybe<R>, java.lang.Object, io.reactivex.Maybe<T> */
    @NotNull
    public static final <T, E> Maybe<T> bindToLifecycle(@NotNull Maybe<T> maybe, @NotNull LifecycleProvider<E> lifecycleProvider) {
        Intrinsics.checkParameterIsNotNull(maybe, "$receiver");
        Intrinsics.checkParameterIsNotNull(lifecycleProvider, "provider");
        Maybe maybe2 = (Maybe<R>) maybe.compose(lifecycleProvider.bindToLifecycle());
        Intrinsics.checkExpressionValueIsNotNull(maybe2, "this.compose(provider.bindToLifecycle<T>())");
        return maybe2;
    }

    /* JADX DEBUG: Type inference failed for r1v1. Raw type applied. Possible types: io.reactivex.Maybe<R>, java.lang.Object, io.reactivex.Maybe<T> */
    @NotNull
    public static final <T, E> Maybe<T> bindUntilEvent(@NotNull Maybe<T> maybe, @NotNull LifecycleProvider<E> lifecycleProvider, E e) {
        Intrinsics.checkParameterIsNotNull(maybe, "$receiver");
        Intrinsics.checkParameterIsNotNull(lifecycleProvider, "provider");
        Maybe maybe2 = (Maybe<R>) maybe.compose(lifecycleProvider.bindUntilEvent(e));
        Intrinsics.checkExpressionValueIsNotNull(maybe2, "this.compose(provider.bindUntilEvent<T>(event))");
        return maybe2;
    }

    /* JADX DEBUG: Type inference failed for r1v1. Raw type applied. Possible types: io.reactivex.Maybe<R>, java.lang.Object, io.reactivex.Maybe<T> */
    @NotNull
    public static final <T> Maybe<T> bindToLifecycle(@NotNull Maybe<T> maybe, @NotNull View view) {
        Intrinsics.checkParameterIsNotNull(maybe, "$receiver");
        Intrinsics.checkParameterIsNotNull(view, Promotion.ACTION_VIEW);
        Maybe maybe2 = (Maybe<R>) maybe.compose(RxLifecycleAndroid.bindView(view));
        Intrinsics.checkExpressionValueIsNotNull(maybe2, "this.compose(RxLifecycleAndroid.bindView<T>(view))");
        return maybe2;
    }

    @NotNull
    public static final <E> Completable bindToLifecycle(@NotNull Completable completable, @NotNull LifecycleProvider<E> lifecycleProvider) {
        Intrinsics.checkParameterIsNotNull(completable, "$receiver");
        Intrinsics.checkParameterIsNotNull(lifecycleProvider, "provider");
        Completable compose = completable.compose(lifecycleProvider.bindToLifecycle());
        Intrinsics.checkExpressionValueIsNotNull(compose, "this.compose(provider.bi…Lifecycle<Completable>())");
        return compose;
    }

    @NotNull
    public static final <E> Completable bindUntilEvent(@NotNull Completable completable, @NotNull LifecycleProvider<E> lifecycleProvider, E e) {
        Intrinsics.checkParameterIsNotNull(completable, "$receiver");
        Intrinsics.checkParameterIsNotNull(lifecycleProvider, "provider");
        Completable compose = completable.compose(lifecycleProvider.bindUntilEvent(e));
        Intrinsics.checkExpressionValueIsNotNull(compose, "this.compose(provider.bi…vent<Completable>(event))");
        return compose;
    }

    @NotNull
    public static final Completable bindToLifecycle(@NotNull Completable completable, @NotNull View view) {
        Intrinsics.checkParameterIsNotNull(completable, "$receiver");
        Intrinsics.checkParameterIsNotNull(view, Promotion.ACTION_VIEW);
        Completable compose = completable.compose(RxLifecycleAndroid.bindView(view));
        Intrinsics.checkExpressionValueIsNotNull(compose, "this.compose(RxLifecycle…dView<Completable>(view))");
        return compose;
    }
}
