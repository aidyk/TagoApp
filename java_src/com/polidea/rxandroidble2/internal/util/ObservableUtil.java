package com.polidea.rxandroidble2.internal.util;

import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.ObservableTransformer;

public class ObservableUtil {
    private static final ObservableTransformer<?, ?> IDENTITY_TRANSFORMER = new ObservableTransformer<Object, Object>() {
        /* class com.polidea.rxandroidble2.internal.util.ObservableUtil.AnonymousClass1 */

        /* Return type fixed from 'io.reactivex.Observable<java.lang.Object>' to match base method */
        @Override // io.reactivex.ObservableTransformer
        public ObservableSource<Object> apply(Observable<Object> observable) {
            return observable;
        }
    };

    private ObservableUtil() {
    }

    public static <T> Observable<T> justOnNext(T t) {
        return Observable.never().startWith((Object) t);
    }

    public static <T> ObservableTransformer<T, T> identityTransformer() {
        return (ObservableTransformer<T, T>) IDENTITY_TRANSFORMER;
    }
}
