package com.polidea.rxandroidble2.internal.connection;

import bleshadow.javax.inject.Inject;
import bleshadow.javax.inject.Named;
import com.polidea.rxandroidble2.RxBleAdapterStateObservable;
import com.polidea.rxandroidble2.exceptions.BleDisconnectedException;
import com.polidea.rxandroidble2.exceptions.BleException;
import com.polidea.rxandroidble2.exceptions.BleGattException;
import com.polidea.rxandroidble2.internal.RxBleLog;
import com.polidea.rxandroidble2.internal.util.RxBleAdapterWrapper;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Cancellable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.functions.Predicate;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;

/* access modifiers changed from: package-private */
@ConnectionScope
public class DisconnectionRouter implements DisconnectionRouterInput, DisconnectionRouterOutput {
    private static final String TAG = "DisconnectionRouter";
    private Disposable adapterMonitoringDisposable;
    private final Queue<ObservableEmitter<BleException>> exceptionEmitters = new ConcurrentLinkedQueue();
    private BleException exceptionOccurred;

    @Inject
    DisconnectionRouter(@Named("mac-address") final String str, RxBleAdapterWrapper rxBleAdapterWrapper, Observable<RxBleAdapterStateObservable.BleAdapterState> observable) {
        this.adapterMonitoringDisposable = awaitAdapterNotUsable(rxBleAdapterWrapper, observable).map(new Function<Boolean, BleException>() {
            /* class com.polidea.rxandroidble2.internal.connection.DisconnectionRouter.AnonymousClass3 */

            public BleException apply(Boolean bool) {
                return BleDisconnectedException.adapterDisabled(str);
            }
        }).firstElement().subscribe(new Consumer<BleException>() {
            /* class com.polidea.rxandroidble2.internal.connection.DisconnectionRouter.AnonymousClass1 */

            public void accept(BleException bleException) {
                RxBleLog.d(DisconnectionRouter.TAG, "An exception received, indicating that the adapter has became unusable.");
                DisconnectionRouter.this.exceptionOccurred = bleException;
                DisconnectionRouter.this.notifySubscribersAboutException();
            }
        }, new Consumer<Throwable>() {
            /* class com.polidea.rxandroidble2.internal.connection.DisconnectionRouter.AnonymousClass2 */

            public void accept(Throwable th) {
                RxBleLog.w(DisconnectionRouter.TAG, "Failed to monitor adapter state.", th);
            }
        });
    }

    private static Observable<Boolean> awaitAdapterNotUsable(RxBleAdapterWrapper rxBleAdapterWrapper, Observable<RxBleAdapterStateObservable.BleAdapterState> observable) {
        return observable.map(new Function<RxBleAdapterStateObservable.BleAdapterState, Boolean>() {
            /* class com.polidea.rxandroidble2.internal.connection.DisconnectionRouter.AnonymousClass5 */

            public Boolean apply(RxBleAdapterStateObservable.BleAdapterState bleAdapterState) {
                return Boolean.valueOf(bleAdapterState.isUsable());
            }
        }).startWith((R) Boolean.valueOf(rxBleAdapterWrapper.isBluetoothEnabled())).filter(new Predicate<Boolean>() {
            /* class com.polidea.rxandroidble2.internal.connection.DisconnectionRouter.AnonymousClass4 */

            public boolean test(Boolean bool) {
                return !bool.booleanValue();
            }
        });
    }

    @Override // com.polidea.rxandroidble2.internal.connection.DisconnectionRouterInput
    public void onDisconnectedException(BleDisconnectedException bleDisconnectedException) {
        onExceptionOccurred(bleDisconnectedException);
    }

    @Override // com.polidea.rxandroidble2.internal.connection.DisconnectionRouterInput
    public void onGattConnectionStateException(BleGattException bleGattException) {
        onExceptionOccurred(bleGattException);
    }

    private synchronized void onExceptionOccurred(BleException bleException) {
        if (this.exceptionOccurred == null) {
            this.exceptionOccurred = bleException;
            notifySubscribersAboutException();
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void notifySubscribersAboutException() {
        if (this.adapterMonitoringDisposable != null) {
            this.adapterMonitoringDisposable.dispose();
        }
        while (!this.exceptionEmitters.isEmpty()) {
            ObservableEmitter<BleException> poll = this.exceptionEmitters.poll();
            poll.onNext(this.exceptionOccurred);
            poll.onComplete();
        }
    }

    @Override // com.polidea.rxandroidble2.internal.connection.DisconnectionRouterOutput
    public Observable<BleException> asValueOnlyObservable() {
        return Observable.create(new ObservableOnSubscribe<BleException>() {
            /* class com.polidea.rxandroidble2.internal.connection.DisconnectionRouter.AnonymousClass6 */

            @Override // io.reactivex.ObservableOnSubscribe
            public void subscribe(ObservableEmitter<BleException> observableEmitter) {
                synchronized (DisconnectionRouter.this) {
                    if (DisconnectionRouter.this.exceptionOccurred != null) {
                        observableEmitter.onNext(DisconnectionRouter.this.exceptionOccurred);
                        observableEmitter.onComplete();
                    } else {
                        DisconnectionRouter.this.storeEmitterToBeNotifiedInTheFuture(observableEmitter);
                    }
                }
            }
        });
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void storeEmitterToBeNotifiedInTheFuture(final ObservableEmitter<BleException> observableEmitter) {
        this.exceptionEmitters.add(observableEmitter);
        observableEmitter.setCancellable(new Cancellable() {
            /* class com.polidea.rxandroidble2.internal.connection.DisconnectionRouter.AnonymousClass7 */

            @Override // io.reactivex.functions.Cancellable
            public void cancel() {
                DisconnectionRouter.this.exceptionEmitters.remove(observableEmitter);
            }
        });
    }

    /* JADX DEBUG: Type inference failed for r0v1. Raw type applied. Possible types: io.reactivex.Observable<R>, io.reactivex.Observable<T> */
    @Override // com.polidea.rxandroidble2.internal.connection.DisconnectionRouterOutput
    public <T> Observable<T> asErrorOnlyObservable() {
        return (Observable<R>) asValueOnlyObservable().flatMap(new Function<BleException, Observable<T>>() {
            /* class com.polidea.rxandroidble2.internal.connection.DisconnectionRouter.AnonymousClass8 */

            public Observable<T> apply(BleException bleException) {
                return Observable.error(bleException);
            }
        });
    }
}
