package com.polidea.rxandroidble2.internal.operations;

import android.bluetooth.BluetoothGatt;
import android.support.annotation.NonNull;
import com.polidea.rxandroidble2.RxBleDeviceServices;
import com.polidea.rxandroidble2.exceptions.BleGattCallbackTimeoutException;
import com.polidea.rxandroidble2.exceptions.BleGattOperationType;
import com.polidea.rxandroidble2.internal.SingleResponseOperation;
import com.polidea.rxandroidble2.internal.connection.RxBleGattCallback;
import com.polidea.rxandroidble2.internal.util.RxBleServicesLogger;
import io.reactivex.Scheduler;
import io.reactivex.Single;
import io.reactivex.SingleSource;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

public class ServiceDiscoveryOperation extends SingleResponseOperation<RxBleDeviceServices> {
    private final RxBleServicesLogger bleServicesLogger;
    private final BluetoothGatt bluetoothGatt;

    ServiceDiscoveryOperation(RxBleGattCallback rxBleGattCallback, BluetoothGatt bluetoothGatt2, RxBleServicesLogger rxBleServicesLogger, TimeoutConfiguration timeoutConfiguration) {
        super(bluetoothGatt2, rxBleGattCallback, BleGattOperationType.SERVICE_DISCOVERY, timeoutConfiguration);
        this.bluetoothGatt = bluetoothGatt2;
        this.bleServicesLogger = rxBleServicesLogger;
    }

    /* access modifiers changed from: protected */
    @Override // com.polidea.rxandroidble2.internal.SingleResponseOperation
    public Single<RxBleDeviceServices> getCallback(RxBleGattCallback rxBleGattCallback) {
        return rxBleGattCallback.getOnServicesDiscovered().firstOrError().doOnSuccess(new Consumer<RxBleDeviceServices>() {
            /* class com.polidea.rxandroidble2.internal.operations.ServiceDiscoveryOperation.AnonymousClass1 */

            public void accept(RxBleDeviceServices rxBleDeviceServices) throws Exception {
                ServiceDiscoveryOperation.this.bleServicesLogger.log(rxBleDeviceServices, ServiceDiscoveryOperation.this.bluetoothGatt.getDevice());
            }
        });
    }

    /* access modifiers changed from: protected */
    @Override // com.polidea.rxandroidble2.internal.SingleResponseOperation
    public boolean startOperation(BluetoothGatt bluetoothGatt2) {
        return bluetoothGatt2.discoverServices();
    }

    /* access modifiers changed from: protected */
    @Override // com.polidea.rxandroidble2.internal.SingleResponseOperation
    @NonNull
    public Single<RxBleDeviceServices> timeoutFallbackProcedure(final BluetoothGatt bluetoothGatt2, RxBleGattCallback rxBleGattCallback, final Scheduler scheduler) {
        return Single.defer(new Callable<SingleSource<? extends RxBleDeviceServices>>() {
            /* class com.polidea.rxandroidble2.internal.operations.ServiceDiscoveryOperation.AnonymousClass2 */

            @Override // java.util.concurrent.Callable
            public SingleSource<? extends RxBleDeviceServices> call() throws Exception {
                if (bluetoothGatt2.getServices().size() == 0) {
                    return Single.error(new BleGattCallbackTimeoutException(bluetoothGatt2, BleGattOperationType.SERVICE_DISCOVERY));
                }
                return Single.timer(5, TimeUnit.SECONDS, scheduler).flatMap(new Function<Long, Single<RxBleDeviceServices>>() {
                    /* class com.polidea.rxandroidble2.internal.operations.ServiceDiscoveryOperation.AnonymousClass2.AnonymousClass1 */

                    public Single<RxBleDeviceServices> apply(Long l) {
                        return Single.fromCallable(new Callable<RxBleDeviceServices>() {
                            /* class com.polidea.rxandroidble2.internal.operations.ServiceDiscoveryOperation.AnonymousClass2.AnonymousClass1.AnonymousClass1 */

                            @Override // java.util.concurrent.Callable
                            public RxBleDeviceServices call() throws Exception {
                                return new RxBleDeviceServices(bluetoothGatt2.getServices());
                            }
                        });
                    }
                });
            }
        });
    }
}
