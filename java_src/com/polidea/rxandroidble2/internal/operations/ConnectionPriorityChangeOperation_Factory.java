package com.polidea.rxandroidble2.internal.operations;

import android.bluetooth.BluetoothGatt;
import bleshadow.dagger.internal.Factory;
import bleshadow.javax.inject.Provider;
import com.polidea.rxandroidble2.internal.connection.RxBleGattCallback;
import io.reactivex.Scheduler;
import java.util.concurrent.TimeUnit;

public final class ConnectionPriorityChangeOperation_Factory implements Factory<ConnectionPriorityChangeOperation> {
    private final Provider<BluetoothGatt> bluetoothGattProvider;
    private final Provider<Integer> connectionPriorityProvider;
    private final Provider<Scheduler> delaySchedulerProvider;
    private final Provider<Long> operationTimeoutProvider;
    private final Provider<RxBleGattCallback> rxBleGattCallbackProvider;
    private final Provider<TimeUnit> timeUnitProvider;
    private final Provider<TimeoutConfiguration> timeoutConfigurationProvider;

    public ConnectionPriorityChangeOperation_Factory(Provider<RxBleGattCallback> provider, Provider<BluetoothGatt> provider2, Provider<TimeoutConfiguration> provider3, Provider<Integer> provider4, Provider<Long> provider5, Provider<TimeUnit> provider6, Provider<Scheduler> provider7) {
        this.rxBleGattCallbackProvider = provider;
        this.bluetoothGattProvider = provider2;
        this.timeoutConfigurationProvider = provider3;
        this.connectionPriorityProvider = provider4;
        this.operationTimeoutProvider = provider5;
        this.timeUnitProvider = provider6;
        this.delaySchedulerProvider = provider7;
    }

    @Override // bleshadow.javax.inject.Provider
    public ConnectionPriorityChangeOperation get() {
        return new ConnectionPriorityChangeOperation(this.rxBleGattCallbackProvider.get(), this.bluetoothGattProvider.get(), this.timeoutConfigurationProvider.get(), this.connectionPriorityProvider.get().intValue(), this.operationTimeoutProvider.get().longValue(), this.timeUnitProvider.get(), this.delaySchedulerProvider.get());
    }

    public static ConnectionPriorityChangeOperation_Factory create(Provider<RxBleGattCallback> provider, Provider<BluetoothGatt> provider2, Provider<TimeoutConfiguration> provider3, Provider<Integer> provider4, Provider<Long> provider5, Provider<TimeUnit> provider6, Provider<Scheduler> provider7) {
        return new ConnectionPriorityChangeOperation_Factory(provider, provider2, provider3, provider4, provider5, provider6, provider7);
    }

    public static ConnectionPriorityChangeOperation newConnectionPriorityChangeOperation(RxBleGattCallback rxBleGattCallback, BluetoothGatt bluetoothGatt, TimeoutConfiguration timeoutConfiguration, int i, long j, TimeUnit timeUnit, Scheduler scheduler) {
        return new ConnectionPriorityChangeOperation(rxBleGattCallback, bluetoothGatt, timeoutConfiguration, i, j, timeUnit, scheduler);
    }
}
