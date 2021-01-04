package com.polidea.rxandroidble2.internal.connection;

import com.polidea.rxandroidble2.RxBleConnection;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;

public class ImmediateSerializedBatchAckStrategy implements RxBleConnection.WriteOperationAckStrategy {
    /* Return type fixed from 'io.reactivex.Observable<java.lang.Boolean>' to match base method */
    @Override // io.reactivex.ObservableTransformer
    public ObservableSource<Boolean> apply(Observable<Boolean> observable) {
        return observable;
    }
}
