package com.polidea.rxandroidble2;

import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.bluetooth.BluetoothGattService;
import android.support.annotation.NonNull;
import com.polidea.rxandroidble2.exceptions.BleCharacteristicNotFoundException;
import com.polidea.rxandroidble2.exceptions.BleDescriptorNotFoundException;
import com.polidea.rxandroidble2.exceptions.BleServiceNotFoundException;
import io.reactivex.Observable;
import io.reactivex.Single;
import io.reactivex.functions.Function;
import io.reactivex.functions.Predicate;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.Callable;

public class RxBleDeviceServices {
    private final List<BluetoothGattService> bluetoothGattServices;

    public RxBleDeviceServices(List<BluetoothGattService> list) {
        this.bluetoothGattServices = list;
    }

    public List<BluetoothGattService> getBluetoothGattServices() {
        return this.bluetoothGattServices;
    }

    public Single<BluetoothGattService> getService(@NonNull final UUID uuid) {
        return Observable.fromIterable(this.bluetoothGattServices).filter(new Predicate<BluetoothGattService>() {
            /* class com.polidea.rxandroidble2.RxBleDeviceServices.AnonymousClass1 */

            public boolean test(BluetoothGattService bluetoothGattService) throws Exception {
                return bluetoothGattService.getUuid().equals(uuid);
            }
        }).firstElement().switchIfEmpty(Single.error(new BleServiceNotFoundException(uuid)));
    }

    public Single<BluetoothGattCharacteristic> getCharacteristic(@NonNull final UUID uuid) {
        return Single.fromCallable(new Callable<BluetoothGattCharacteristic>() {
            /* class com.polidea.rxandroidble2.RxBleDeviceServices.AnonymousClass2 */

            @Override // java.util.concurrent.Callable
            public BluetoothGattCharacteristic call() throws Exception {
                for (BluetoothGattService bluetoothGattService : RxBleDeviceServices.this.bluetoothGattServices) {
                    BluetoothGattCharacteristic characteristic = bluetoothGattService.getCharacteristic(uuid);
                    if (characteristic != null) {
                        return characteristic;
                    }
                }
                throw new BleCharacteristicNotFoundException(uuid);
            }
        });
    }

    public Single<BluetoothGattCharacteristic> getCharacteristic(@NonNull UUID uuid, @NonNull final UUID uuid2) {
        return getService(uuid).map(new Function<BluetoothGattService, BluetoothGattCharacteristic>() {
            /* class com.polidea.rxandroidble2.RxBleDeviceServices.AnonymousClass3 */

            public BluetoothGattCharacteristic apply(BluetoothGattService bluetoothGattService) {
                BluetoothGattCharacteristic characteristic = bluetoothGattService.getCharacteristic(uuid2);
                if (characteristic != null) {
                    return characteristic;
                }
                throw new BleCharacteristicNotFoundException(uuid2);
            }
        });
    }

    public Single<BluetoothGattDescriptor> getDescriptor(UUID uuid, final UUID uuid2) {
        return getCharacteristic(uuid).map(new Function<BluetoothGattCharacteristic, BluetoothGattDescriptor>() {
            /* class com.polidea.rxandroidble2.RxBleDeviceServices.AnonymousClass4 */

            public BluetoothGattDescriptor apply(BluetoothGattCharacteristic bluetoothGattCharacteristic) {
                BluetoothGattDescriptor descriptor = bluetoothGattCharacteristic.getDescriptor(uuid2);
                if (descriptor != null) {
                    return descriptor;
                }
                throw new BleDescriptorNotFoundException(uuid2);
            }
        });
    }

    public Single<BluetoothGattDescriptor> getDescriptor(UUID uuid, final UUID uuid2, final UUID uuid3) {
        return getService(uuid).map(new Function<BluetoothGattService, BluetoothGattCharacteristic>() {
            /* class com.polidea.rxandroidble2.RxBleDeviceServices.AnonymousClass6 */

            public BluetoothGattCharacteristic apply(BluetoothGattService bluetoothGattService) {
                return bluetoothGattService.getCharacteristic(uuid2);
            }
        }).map(new Function<BluetoothGattCharacteristic, BluetoothGattDescriptor>() {
            /* class com.polidea.rxandroidble2.RxBleDeviceServices.AnonymousClass5 */

            public BluetoothGattDescriptor apply(BluetoothGattCharacteristic bluetoothGattCharacteristic) {
                BluetoothGattDescriptor descriptor = bluetoothGattCharacteristic.getDescriptor(uuid3);
                if (descriptor != null) {
                    return descriptor;
                }
                throw new BleDescriptorNotFoundException(uuid3);
            }
        });
    }
}
