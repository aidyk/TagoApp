package com.polidea.rxandroidble2.internal.operations;

import android.bluetooth.BluetoothGatt;
import bleshadow.dagger.internal.Factory;
import bleshadow.javax.inject.Provider;
import com.polidea.rxandroidble2.internal.connection.RxBleGattCallback;
import com.polidea.rxandroidble2.internal.util.RxBleServicesLogger;
import io.reactivex.Scheduler;

public final class OperationsProviderImpl_Factory implements Factory<OperationsProviderImpl> {
    private final Provider<RxBleServicesLogger> bleServicesLoggerProvider;
    private final Provider<BluetoothGatt> bluetoothGattProvider;
    private final Provider<Scheduler> bluetoothInteractionSchedulerProvider;
    private final Provider<ReadRssiOperation> rssiReadOperationProvider;
    private final Provider<RxBleGattCallback> rxBleGattCallbackProvider;
    private final Provider<TimeoutConfiguration> timeoutConfigurationProvider;
    private final Provider<Scheduler> timeoutSchedulerProvider;

    public OperationsProviderImpl_Factory(Provider<RxBleGattCallback> provider, Provider<BluetoothGatt> provider2, Provider<RxBleServicesLogger> provider3, Provider<TimeoutConfiguration> provider4, Provider<Scheduler> provider5, Provider<Scheduler> provider6, Provider<ReadRssiOperation> provider7) {
        this.rxBleGattCallbackProvider = provider;
        this.bluetoothGattProvider = provider2;
        this.bleServicesLoggerProvider = provider3;
        this.timeoutConfigurationProvider = provider4;
        this.bluetoothInteractionSchedulerProvider = provider5;
        this.timeoutSchedulerProvider = provider6;
        this.rssiReadOperationProvider = provider7;
    }

    @Override // bleshadow.javax.inject.Provider
    public OperationsProviderImpl get() {
        return new OperationsProviderImpl(this.rxBleGattCallbackProvider.get(), this.bluetoothGattProvider.get(), this.bleServicesLoggerProvider.get(), this.timeoutConfigurationProvider.get(), this.bluetoothInteractionSchedulerProvider.get(), this.timeoutSchedulerProvider.get(), this.rssiReadOperationProvider);
    }

    public static OperationsProviderImpl_Factory create(Provider<RxBleGattCallback> provider, Provider<BluetoothGatt> provider2, Provider<RxBleServicesLogger> provider3, Provider<TimeoutConfiguration> provider4, Provider<Scheduler> provider5, Provider<Scheduler> provider6, Provider<ReadRssiOperation> provider7) {
        return new OperationsProviderImpl_Factory(provider, provider2, provider3, provider4, provider5, provider6, provider7);
    }

    public static OperationsProviderImpl newOperationsProviderImpl(RxBleGattCallback rxBleGattCallback, BluetoothGatt bluetoothGatt, RxBleServicesLogger rxBleServicesLogger, TimeoutConfiguration timeoutConfiguration, Scheduler scheduler, Scheduler scheduler2, Provider<ReadRssiOperation> provider) {
        return new OperationsProviderImpl(rxBleGattCallback, bluetoothGatt, rxBleServicesLogger, timeoutConfiguration, scheduler, scheduler2, provider);
    }
}
