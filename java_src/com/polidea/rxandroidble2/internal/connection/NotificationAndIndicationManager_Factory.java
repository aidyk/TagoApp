package com.polidea.rxandroidble2.internal.connection;

import android.bluetooth.BluetoothGatt;
import bleshadow.dagger.internal.Factory;
import bleshadow.javax.inject.Provider;

public final class NotificationAndIndicationManager_Factory implements Factory<NotificationAndIndicationManager> {
    private final Provider<BluetoothGatt> bluetoothGattProvider;
    private final Provider<byte[]> configDisableProvider;
    private final Provider<byte[]> configEnableIndicationProvider;
    private final Provider<byte[]> configEnableNotificationProvider;
    private final Provider<DescriptorWriter> descriptorWriterProvider;
    private final Provider<RxBleGattCallback> gattCallbackProvider;

    public NotificationAndIndicationManager_Factory(Provider<byte[]> provider, Provider<byte[]> provider2, Provider<byte[]> provider3, Provider<BluetoothGatt> provider4, Provider<RxBleGattCallback> provider5, Provider<DescriptorWriter> provider6) {
        this.configEnableNotificationProvider = provider;
        this.configEnableIndicationProvider = provider2;
        this.configDisableProvider = provider3;
        this.bluetoothGattProvider = provider4;
        this.gattCallbackProvider = provider5;
        this.descriptorWriterProvider = provider6;
    }

    @Override // bleshadow.javax.inject.Provider
    public NotificationAndIndicationManager get() {
        return new NotificationAndIndicationManager(this.configEnableNotificationProvider.get(), this.configEnableIndicationProvider.get(), this.configDisableProvider.get(), this.bluetoothGattProvider.get(), this.gattCallbackProvider.get(), this.descriptorWriterProvider.get());
    }

    public static NotificationAndIndicationManager_Factory create(Provider<byte[]> provider, Provider<byte[]> provider2, Provider<byte[]> provider3, Provider<BluetoothGatt> provider4, Provider<RxBleGattCallback> provider5, Provider<DescriptorWriter> provider6) {
        return new NotificationAndIndicationManager_Factory(provider, provider2, provider3, provider4, provider5, provider6);
    }

    public static NotificationAndIndicationManager newNotificationAndIndicationManager(byte[] bArr, byte[] bArr2, byte[] bArr3, BluetoothGatt bluetoothGatt, RxBleGattCallback rxBleGattCallback, Object obj) {
        return new NotificationAndIndicationManager(bArr, bArr2, bArr3, bluetoothGatt, rxBleGattCallback, (DescriptorWriter) obj);
    }
}
