package com.polidea.rxandroidble2.internal;

import android.bluetooth.BluetoothDevice;
import bleshadow.dagger.internal.Factory;
import bleshadow.dagger.internal.Preconditions;
import bleshadow.javax.inject.Provider;
import com.polidea.rxandroidble2.internal.util.RxBleAdapterWrapper;

public final class DeviceModule_ProvideBluetoothDeviceFactory implements Factory<BluetoothDevice> {
    private final Provider<RxBleAdapterWrapper> adapterWrapperProvider;
    private final DeviceModule module;

    public DeviceModule_ProvideBluetoothDeviceFactory(DeviceModule deviceModule, Provider<RxBleAdapterWrapper> provider) {
        this.module = deviceModule;
        this.adapterWrapperProvider = provider;
    }

    @Override // bleshadow.javax.inject.Provider
    public BluetoothDevice get() {
        return (BluetoothDevice) Preconditions.checkNotNull(this.module.provideBluetoothDevice(this.adapterWrapperProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static DeviceModule_ProvideBluetoothDeviceFactory create(DeviceModule deviceModule, Provider<RxBleAdapterWrapper> provider) {
        return new DeviceModule_ProvideBluetoothDeviceFactory(deviceModule, provider);
    }

    public static BluetoothDevice proxyProvideBluetoothDevice(DeviceModule deviceModule, RxBleAdapterWrapper rxBleAdapterWrapper) {
        return (BluetoothDevice) Preconditions.checkNotNull(deviceModule.provideBluetoothDevice(rxBleAdapterWrapper), "Cannot return null from a non-@Nullable @Provides method");
    }
}
