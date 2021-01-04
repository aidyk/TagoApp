package com.polidea.rxandroidble2.internal.operations;

import android.bluetooth.BluetoothGatt;
import bleshadow.dagger.internal.Factory;
import bleshadow.javax.inject.Provider;
import com.polidea.rxandroidble2.internal.connection.RxBleGattCallback;

public final class ReadRssiOperation_Factory implements Factory<ReadRssiOperation> {
    private final Provider<RxBleGattCallback> bleGattCallbackProvider;
    private final Provider<BluetoothGatt> bluetoothGattProvider;
    private final Provider<TimeoutConfiguration> timeoutConfigurationProvider;

    public ReadRssiOperation_Factory(Provider<RxBleGattCallback> provider, Provider<BluetoothGatt> provider2, Provider<TimeoutConfiguration> provider3) {
        this.bleGattCallbackProvider = provider;
        this.bluetoothGattProvider = provider2;
        this.timeoutConfigurationProvider = provider3;
    }

    @Override // bleshadow.javax.inject.Provider
    public ReadRssiOperation get() {
        return new ReadRssiOperation(this.bleGattCallbackProvider.get(), this.bluetoothGattProvider.get(), this.timeoutConfigurationProvider.get());
    }

    public static ReadRssiOperation_Factory create(Provider<RxBleGattCallback> provider, Provider<BluetoothGatt> provider2, Provider<TimeoutConfiguration> provider3) {
        return new ReadRssiOperation_Factory(provider, provider2, provider3);
    }

    public static ReadRssiOperation newReadRssiOperation(RxBleGattCallback rxBleGattCallback, BluetoothGatt bluetoothGatt, TimeoutConfiguration timeoutConfiguration) {
        return new ReadRssiOperation(rxBleGattCallback, bluetoothGatt, timeoutConfiguration);
    }
}
