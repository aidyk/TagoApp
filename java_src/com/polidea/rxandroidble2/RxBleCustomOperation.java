package com.polidea.rxandroidble2;

import android.bluetooth.BluetoothGatt;
import android.support.annotation.NonNull;
import com.polidea.rxandroidble2.internal.connection.RxBleGattCallback;
import io.reactivex.Observable;
import io.reactivex.Scheduler;

public interface RxBleCustomOperation<T> {
    @NonNull
    Observable<T> asObservable(BluetoothGatt bluetoothGatt, RxBleGattCallback rxBleGattCallback, Scheduler scheduler) throws Throwable;
}
