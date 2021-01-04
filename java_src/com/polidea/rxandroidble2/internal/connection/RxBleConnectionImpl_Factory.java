package com.polidea.rxandroidble2.internal.connection;

import android.bluetooth.BluetoothGatt;
import bleshadow.dagger.internal.Factory;
import bleshadow.javax.inject.Provider;
import com.polidea.rxandroidble2.RxBleConnection;
import com.polidea.rxandroidble2.internal.operations.OperationsProvider;
import com.polidea.rxandroidble2.internal.serialization.ConnectionOperationQueue;
import io.reactivex.Scheduler;

public final class RxBleConnectionImpl_Factory implements Factory<RxBleConnectionImpl> {
    private final Provider<BluetoothGatt> bluetoothGattProvider;
    private final Provider<Scheduler> callbackSchedulerProvider;
    private final Provider<DescriptorWriter> descriptorWriterProvider;
    private final Provider<RxBleGattCallback> gattCallbackProvider;
    private final Provider<IllegalOperationChecker> illegalOperationCheckerProvider;
    private final Provider<RxBleConnection.LongWriteOperationBuilder> longWriteOperationBuilderProvider;
    private final Provider<MtuProvider> mtuProvider;
    private final Provider<NotificationAndIndicationManager> notificationIndicationManagerProvider;
    private final Provider<OperationsProvider> operationProvider;
    private final Provider<ConnectionOperationQueue> operationQueueProvider;
    private final Provider<ServiceDiscoveryManager> serviceDiscoveryManagerProvider;

    public RxBleConnectionImpl_Factory(Provider<ConnectionOperationQueue> provider, Provider<RxBleGattCallback> provider2, Provider<BluetoothGatt> provider3, Provider<ServiceDiscoveryManager> provider4, Provider<NotificationAndIndicationManager> provider5, Provider<MtuProvider> provider6, Provider<DescriptorWriter> provider7, Provider<OperationsProvider> provider8, Provider<RxBleConnection.LongWriteOperationBuilder> provider9, Provider<Scheduler> provider10, Provider<IllegalOperationChecker> provider11) {
        this.operationQueueProvider = provider;
        this.gattCallbackProvider = provider2;
        this.bluetoothGattProvider = provider3;
        this.serviceDiscoveryManagerProvider = provider4;
        this.notificationIndicationManagerProvider = provider5;
        this.mtuProvider = provider6;
        this.descriptorWriterProvider = provider7;
        this.operationProvider = provider8;
        this.longWriteOperationBuilderProvider = provider9;
        this.callbackSchedulerProvider = provider10;
        this.illegalOperationCheckerProvider = provider11;
    }

    @Override // bleshadow.javax.inject.Provider
    public RxBleConnectionImpl get() {
        return new RxBleConnectionImpl(this.operationQueueProvider.get(), this.gattCallbackProvider.get(), this.bluetoothGattProvider.get(), this.serviceDiscoveryManagerProvider.get(), this.notificationIndicationManagerProvider.get(), this.mtuProvider.get(), this.descriptorWriterProvider.get(), this.operationProvider.get(), this.longWriteOperationBuilderProvider, this.callbackSchedulerProvider.get(), this.illegalOperationCheckerProvider.get());
    }

    public static RxBleConnectionImpl_Factory create(Provider<ConnectionOperationQueue> provider, Provider<RxBleGattCallback> provider2, Provider<BluetoothGatt> provider3, Provider<ServiceDiscoveryManager> provider4, Provider<NotificationAndIndicationManager> provider5, Provider<MtuProvider> provider6, Provider<DescriptorWriter> provider7, Provider<OperationsProvider> provider8, Provider<RxBleConnection.LongWriteOperationBuilder> provider9, Provider<Scheduler> provider10, Provider<IllegalOperationChecker> provider11) {
        return new RxBleConnectionImpl_Factory(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8, provider9, provider10, provider11);
    }

    public static RxBleConnectionImpl newRxBleConnectionImpl(ConnectionOperationQueue connectionOperationQueue, RxBleGattCallback rxBleGattCallback, BluetoothGatt bluetoothGatt, Object obj, Object obj2, Object obj3, Object obj4, OperationsProvider operationsProvider, Provider<RxBleConnection.LongWriteOperationBuilder> provider, Scheduler scheduler, IllegalOperationChecker illegalOperationChecker) {
        return new RxBleConnectionImpl(connectionOperationQueue, rxBleGattCallback, bluetoothGatt, (ServiceDiscoveryManager) obj, (NotificationAndIndicationManager) obj2, (MtuProvider) obj3, (DescriptorWriter) obj4, operationsProvider, provider, scheduler, illegalOperationChecker);
    }
}
