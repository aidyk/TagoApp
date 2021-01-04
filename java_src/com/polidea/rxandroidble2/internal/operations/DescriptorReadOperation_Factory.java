package com.polidea.rxandroidble2.internal.operations;

import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattDescriptor;
import bleshadow.dagger.internal.Factory;
import bleshadow.javax.inject.Provider;
import com.polidea.rxandroidble2.internal.connection.RxBleGattCallback;

public final class DescriptorReadOperation_Factory implements Factory<DescriptorReadOperation> {
    private final Provider<BluetoothGatt> bluetoothGattProvider;
    private final Provider<BluetoothGattDescriptor> descriptorProvider;
    private final Provider<RxBleGattCallback> rxBleGattCallbackProvider;
    private final Provider<TimeoutConfiguration> timeoutConfigurationProvider;

    public DescriptorReadOperation_Factory(Provider<RxBleGattCallback> provider, Provider<BluetoothGatt> provider2, Provider<TimeoutConfiguration> provider3, Provider<BluetoothGattDescriptor> provider4) {
        this.rxBleGattCallbackProvider = provider;
        this.bluetoothGattProvider = provider2;
        this.timeoutConfigurationProvider = provider3;
        this.descriptorProvider = provider4;
    }

    @Override // bleshadow.javax.inject.Provider
    public DescriptorReadOperation get() {
        return new DescriptorReadOperation(this.rxBleGattCallbackProvider.get(), this.bluetoothGattProvider.get(), this.timeoutConfigurationProvider.get(), this.descriptorProvider.get());
    }

    public static DescriptorReadOperation_Factory create(Provider<RxBleGattCallback> provider, Provider<BluetoothGatt> provider2, Provider<TimeoutConfiguration> provider3, Provider<BluetoothGattDescriptor> provider4) {
        return new DescriptorReadOperation_Factory(provider, provider2, provider3, provider4);
    }

    public static DescriptorReadOperation newDescriptorReadOperation(RxBleGattCallback rxBleGattCallback, BluetoothGatt bluetoothGatt, TimeoutConfiguration timeoutConfiguration, BluetoothGattDescriptor bluetoothGattDescriptor) {
        return new DescriptorReadOperation(rxBleGattCallback, bluetoothGatt, timeoutConfiguration, bluetoothGattDescriptor);
    }
}
