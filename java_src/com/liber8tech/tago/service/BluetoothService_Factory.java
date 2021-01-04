package com.liber8tech.tago.service;

import android.content.Context;
import com.liber8tech.tago.util.RuntimeConfig;
import com.polidea.rxandroidble2.RxBleClient;
import dagger.internal.Factory;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

public final class BluetoothService_Factory implements Factory<BluetoothService> {
    private final Provider<RxBleClient> bleClientProvider;
    private final Provider<Context> ctxProvider;
    private final Provider<EventBus> eventBusProvider;
    private final Provider<RuntimeConfig> runtimeProvider;

    public BluetoothService_Factory(Provider<Context> provider, Provider<RxBleClient> provider2, Provider<EventBus> provider3, Provider<RuntimeConfig> provider4) {
        this.ctxProvider = provider;
        this.bleClientProvider = provider2;
        this.eventBusProvider = provider3;
        this.runtimeProvider = provider4;
    }

    @Override // javax.inject.Provider
    public BluetoothService get() {
        return new BluetoothService(this.ctxProvider.get(), this.bleClientProvider.get(), this.eventBusProvider.get(), this.runtimeProvider.get());
    }

    public static BluetoothService_Factory create(Provider<Context> provider, Provider<RxBleClient> provider2, Provider<EventBus> provider3, Provider<RuntimeConfig> provider4) {
        return new BluetoothService_Factory(provider, provider2, provider3, provider4);
    }
}
