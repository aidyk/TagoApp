package com.polidea.rxandroidble2.internal.connection;

import bleshadow.dagger.internal.Factory;
import bleshadow.javax.inject.Provider;
import io.reactivex.Scheduler;

public final class RxBleGattCallback_Factory implements Factory<RxBleGattCallback> {
    private final Provider<BluetoothGattProvider> bluetoothGattProvider;
    private final Provider<Scheduler> callbackSchedulerProvider;
    private final Provider<DisconnectionRouter> disconnectionRouterProvider;
    private final Provider<NativeCallbackDispatcher> nativeCallbackDispatcherProvider;

    public RxBleGattCallback_Factory(Provider<Scheduler> provider, Provider<BluetoothGattProvider> provider2, Provider<DisconnectionRouter> provider3, Provider<NativeCallbackDispatcher> provider4) {
        this.callbackSchedulerProvider = provider;
        this.bluetoothGattProvider = provider2;
        this.disconnectionRouterProvider = provider3;
        this.nativeCallbackDispatcherProvider = provider4;
    }

    @Override // bleshadow.javax.inject.Provider
    public RxBleGattCallback get() {
        return new RxBleGattCallback(this.callbackSchedulerProvider.get(), this.bluetoothGattProvider.get(), this.disconnectionRouterProvider.get(), this.nativeCallbackDispatcherProvider.get());
    }

    public static RxBleGattCallback_Factory create(Provider<Scheduler> provider, Provider<BluetoothGattProvider> provider2, Provider<DisconnectionRouter> provider3, Provider<NativeCallbackDispatcher> provider4) {
        return new RxBleGattCallback_Factory(provider, provider2, provider3, provider4);
    }

    public static RxBleGattCallback newRxBleGattCallback(Scheduler scheduler, BluetoothGattProvider bluetoothGattProvider2, Object obj, Object obj2) {
        return new RxBleGattCallback(scheduler, bluetoothGattProvider2, (DisconnectionRouter) obj, (NativeCallbackDispatcher) obj2);
    }
}
