package com.polidea.rxandroidble2.utils;

import com.polidea.rxandroidble2.RxBleConnection;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.ObservableTransformer;
import io.reactivex.functions.Action;
import java.util.concurrent.atomic.AtomicReference;

@Deprecated
public class ConnectionSharingAdapter implements ObservableTransformer<RxBleConnection, RxBleConnection> {
    private final AtomicReference<Observable<RxBleConnection>> connectionObservable = new AtomicReference<>();

    @Override // io.reactivex.ObservableTransformer
    public ObservableSource<RxBleConnection> apply(Observable<RxBleConnection> observable) {
        synchronized (this.connectionObservable) {
            Observable<RxBleConnection> observable2 = this.connectionObservable.get();
            if (observable2 != null) {
                return observable2;
            }
            Observable<RxBleConnection> refCount = observable.doFinally(new Action() {
                /* class com.polidea.rxandroidble2.utils.ConnectionSharingAdapter.AnonymousClass1 */

                @Override // io.reactivex.functions.Action
                public void run() {
                    ConnectionSharingAdapter.this.connectionObservable.set(null);
                }
            }).replay(1).refCount();
            this.connectionObservable.set(refCount);
            return refCount;
        }
    }
}
