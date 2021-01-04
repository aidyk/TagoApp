package com.polidea.rxandroidble2.internal.connection;

import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattService;
import android.support.annotation.NonNull;
import bleshadow.javax.inject.Inject;
import com.polidea.rxandroidble2.RxBleDeviceServices;
import com.polidea.rxandroidble2.internal.operations.OperationsProvider;
import com.polidea.rxandroidble2.internal.operations.TimeoutConfiguration;
import com.polidea.rxandroidble2.internal.serialization.ConnectionOperationQueue;
import io.reactivex.Maybe;
import io.reactivex.Single;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.functions.Predicate;
import io.reactivex.internal.functions.Functions;
import io.reactivex.schedulers.Schedulers;
import io.reactivex.subjects.BehaviorSubject;
import io.reactivex.subjects.Subject;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

/* access modifiers changed from: package-private */
@ConnectionScope
public class ServiceDiscoveryManager {
    private final BluetoothGatt bluetoothGatt;
    private Single<RxBleDeviceServices> deviceServicesObservable;
    private boolean hasCachedResults = false;
    private final OperationsProvider operationProvider;
    private final ConnectionOperationQueue operationQueue;
    private Subject<TimeoutConfiguration> timeoutBehaviorSubject = BehaviorSubject.create().toSerialized();

    @Inject
    ServiceDiscoveryManager(ConnectionOperationQueue connectionOperationQueue, BluetoothGatt bluetoothGatt2, OperationsProvider operationsProvider) {
        this.operationQueue = connectionOperationQueue;
        this.bluetoothGatt = bluetoothGatt2;
        this.operationProvider = operationsProvider;
        reset();
    }

    /* access modifiers changed from: package-private */
    public Single<RxBleDeviceServices> getDiscoverServicesSingle(final long j, final TimeUnit timeUnit) {
        if (this.hasCachedResults) {
            return this.deviceServicesObservable;
        }
        return this.deviceServicesObservable.doOnSubscribe(new Consumer<Disposable>() {
            /* class com.polidea.rxandroidble2.internal.connection.ServiceDiscoveryManager.AnonymousClass1 */

            public void accept(Disposable disposable) throws Exception {
                ServiceDiscoveryManager.this.timeoutBehaviorSubject.onNext(new TimeoutConfiguration(j, timeUnit, Schedulers.computation()));
            }
        });
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void reset() {
        this.hasCachedResults = false;
        this.deviceServicesObservable = getListOfServicesFromGatt().map(wrapIntoRxBleDeviceServices()).switchIfEmpty(getTimeoutConfiguration().flatMap(scheduleActualDiscoveryWithTimeout())).doOnSuccess(Functions.actionConsumer(new Action() {
            /* class com.polidea.rxandroidble2.internal.connection.ServiceDiscoveryManager.AnonymousClass3 */

            @Override // io.reactivex.functions.Action
            public void run() throws Exception {
                ServiceDiscoveryManager.this.hasCachedResults = true;
            }
        })).doOnError(Functions.actionConsumer(new Action() {
            /* class com.polidea.rxandroidble2.internal.connection.ServiceDiscoveryManager.AnonymousClass2 */

            @Override // io.reactivex.functions.Action
            public void run() {
                ServiceDiscoveryManager.this.reset();
            }
        })).cache();
    }

    @NonNull
    private Function<List<BluetoothGattService>, RxBleDeviceServices> wrapIntoRxBleDeviceServices() {
        return new Function<List<BluetoothGattService>, RxBleDeviceServices>() {
            /* class com.polidea.rxandroidble2.internal.connection.ServiceDiscoveryManager.AnonymousClass4 */

            public RxBleDeviceServices apply(List<BluetoothGattService> list) {
                return new RxBleDeviceServices(list);
            }
        };
    }

    private Maybe<List<BluetoothGattService>> getListOfServicesFromGatt() {
        return Single.fromCallable(new Callable<List<BluetoothGattService>>() {
            /* class com.polidea.rxandroidble2.internal.connection.ServiceDiscoveryManager.AnonymousClass6 */

            @Override // java.util.concurrent.Callable
            public List<BluetoothGattService> call() {
                return ServiceDiscoveryManager.this.bluetoothGatt.getServices();
            }
        }).filter(new Predicate<List<BluetoothGattService>>() {
            /* class com.polidea.rxandroidble2.internal.connection.ServiceDiscoveryManager.AnonymousClass5 */

            public boolean test(List<BluetoothGattService> list) {
                return list.size() > 0;
            }
        });
    }

    @NonNull
    private Single<TimeoutConfiguration> getTimeoutConfiguration() {
        return this.timeoutBehaviorSubject.firstOrError();
    }

    @NonNull
    private Function<TimeoutConfiguration, Single<RxBleDeviceServices>> scheduleActualDiscoveryWithTimeout() {
        return new Function<TimeoutConfiguration, Single<RxBleDeviceServices>>() {
            /* class com.polidea.rxandroidble2.internal.connection.ServiceDiscoveryManager.AnonymousClass7 */

            public Single<RxBleDeviceServices> apply(TimeoutConfiguration timeoutConfiguration) {
                return ServiceDiscoveryManager.this.operationQueue.queue(ServiceDiscoveryManager.this.operationProvider.provideServiceDiscoveryOperation(timeoutConfiguration.timeout, timeoutConfiguration.timeoutTimeUnit)).firstOrError();
            }
        };
    }
}
