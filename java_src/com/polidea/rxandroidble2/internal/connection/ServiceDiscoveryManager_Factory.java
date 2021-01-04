package com.polidea.rxandroidble2.internal.connection;

import android.bluetooth.BluetoothGatt;
import bleshadow.dagger.internal.Factory;
import bleshadow.javax.inject.Provider;
import com.polidea.rxandroidble2.internal.operations.OperationsProvider;
import com.polidea.rxandroidble2.internal.serialization.ConnectionOperationQueue;

public final class ServiceDiscoveryManager_Factory implements Factory<ServiceDiscoveryManager> {
    private final Provider<BluetoothGatt> bluetoothGattProvider;
    private final Provider<OperationsProvider> operationProvider;
    private final Provider<ConnectionOperationQueue> operationQueueProvider;

    public ServiceDiscoveryManager_Factory(Provider<ConnectionOperationQueue> provider, Provider<BluetoothGatt> provider2, Provider<OperationsProvider> provider3) {
        this.operationQueueProvider = provider;
        this.bluetoothGattProvider = provider2;
        this.operationProvider = provider3;
    }

    @Override // bleshadow.javax.inject.Provider
    public ServiceDiscoveryManager get() {
        return new ServiceDiscoveryManager(this.operationQueueProvider.get(), this.bluetoothGattProvider.get(), this.operationProvider.get());
    }

    public static ServiceDiscoveryManager_Factory create(Provider<ConnectionOperationQueue> provider, Provider<BluetoothGatt> provider2, Provider<OperationsProvider> provider3) {
        return new ServiceDiscoveryManager_Factory(provider, provider2, provider3);
    }

    public static ServiceDiscoveryManager newServiceDiscoveryManager(ConnectionOperationQueue connectionOperationQueue, BluetoothGatt bluetoothGatt, OperationsProvider operationsProvider) {
        return new ServiceDiscoveryManager(connectionOperationQueue, bluetoothGatt, operationsProvider);
    }
}
