package com.polidea.rxandroidble2.internal.util;

import io.reactivex.ObservableEmitter;
import io.reactivex.Observer;
import io.reactivex.SingleEmitter;
import io.reactivex.observers.DisposableObserver;
import io.reactivex.observers.DisposableSingleObserver;

public class DisposableUtil {
    private DisposableUtil() {
    }

    public static <T> DisposableSingleObserver<T> disposableSingleObserverFromEmitter(final SingleEmitter<T> singleEmitter) {
        return new DisposableSingleObserver<T>() {
            /* class com.polidea.rxandroidble2.internal.util.DisposableUtil.AnonymousClass1 */

            @Override // io.reactivex.SingleObserver
            public void onSuccess(T t) {
                singleEmitter.onSuccess(t);
            }

            @Override // io.reactivex.SingleObserver
            public void onError(Throwable th) {
                singleEmitter.tryOnError(th);
            }
        };
    }

    public static <T> DisposableObserver<T> disposableObserverFromEmitter(final ObservableEmitter<T> observableEmitter) {
        return new DisposableObserver<T>() {
            /* class com.polidea.rxandroidble2.internal.util.DisposableUtil.AnonymousClass2 */

            @Override // io.reactivex.Observer
            public void onNext(T t) {
                observableEmitter.onNext(t);
            }

            @Override // io.reactivex.Observer
            public void onError(Throwable th) {
                observableEmitter.tryOnError(th);
            }

            @Override // io.reactivex.Observer
            public void onComplete() {
                observableEmitter.onComplete();
            }
        };
    }

    public static <T> DisposableSingleObserver<T> disposableSingleObserverFromEmitter(final ObservableEmitter<T> observableEmitter) {
        return new DisposableSingleObserver<T>() {
            /* class com.polidea.rxandroidble2.internal.util.DisposableUtil.AnonymousClass3 */

            @Override // io.reactivex.SingleObserver
            public void onSuccess(T t) {
                observableEmitter.onNext(t);
                observableEmitter.onComplete();
            }

            @Override // io.reactivex.SingleObserver
            public void onError(Throwable th) {
                observableEmitter.tryOnError(th);
            }
        };
    }

    public static <T> DisposableObserver<T> disposableObserver(final Observer<T> observer) {
        return new DisposableObserver<T>() {
            /* class com.polidea.rxandroidble2.internal.util.DisposableUtil.AnonymousClass4 */

            @Override // io.reactivex.Observer
            public void onNext(T t) {
                observer.onNext(t);
            }

            @Override // io.reactivex.Observer
            public void onError(Throwable th) {
                observer.onError(th);
            }

            @Override // io.reactivex.Observer
            public void onComplete() {
                observer.onComplete();
            }
        };
    }
}
