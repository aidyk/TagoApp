package com.polidea.rxandroidble2.internal.connection;

import com.polidea.rxandroidble2.RxBleConnection;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;

public class NoRetryStrategy implements RxBleConnection.WriteOperationRetryStrategy {
    /* Return type fixed from 'io.reactivex.Observable<com.polidea.rxandroidble2.RxBleConnection$WriteOperationRetryStrategy$LongWriteFailure>' to match base method */
    @Override // io.reactivex.ObservableTransformer
    public ObservableSource<RxBleConnection.WriteOperationRetryStrategy.LongWriteFailure> apply(Observable<RxBleConnection.WriteOperationRetryStrategy.LongWriteFailure> observable) {
        return observable.flatMap(new Function<RxBleConnection.WriteOperationRetryStrategy.LongWriteFailure, Observable<RxBleConnection.WriteOperationRetryStrategy.LongWriteFailure>>() {
            /* class com.polidea.rxandroidble2.internal.connection.NoRetryStrategy.AnonymousClass1 */

            public Observable<RxBleConnection.WriteOperationRetryStrategy.LongWriteFailure> apply(RxBleConnection.WriteOperationRetryStrategy.LongWriteFailure longWriteFailure) {
                return Observable.error(longWriteFailure.getCause());
            }
        });
    }
}
