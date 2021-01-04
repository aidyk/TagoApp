package com.polidea.rxandroidble2.internal.connection;

import bleshadow.dagger.internal.Factory;
import bleshadow.javax.inject.Provider;

public final class MtuWatcher_Factory implements Factory<MtuWatcher> {
    private final Provider<Integer> initialValueProvider;
    private final Provider<RxBleGattCallback> rxBleGattCallbackProvider;

    public MtuWatcher_Factory(Provider<RxBleGattCallback> provider, Provider<Integer> provider2) {
        this.rxBleGattCallbackProvider = provider;
        this.initialValueProvider = provider2;
    }

    @Override // bleshadow.javax.inject.Provider
    public MtuWatcher get() {
        return new MtuWatcher(this.rxBleGattCallbackProvider.get(), this.initialValueProvider.get().intValue());
    }

    public static MtuWatcher_Factory create(Provider<RxBleGattCallback> provider, Provider<Integer> provider2) {
        return new MtuWatcher_Factory(provider, provider2);
    }

    public static MtuWatcher newMtuWatcher(RxBleGattCallback rxBleGattCallback, int i) {
        return new MtuWatcher(rxBleGattCallback, i);
    }
}
