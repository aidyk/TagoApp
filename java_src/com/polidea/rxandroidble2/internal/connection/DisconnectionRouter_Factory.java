package com.polidea.rxandroidble2.internal.connection;

import bleshadow.dagger.internal.Factory;
import bleshadow.javax.inject.Provider;
import com.polidea.rxandroidble2.RxBleAdapterStateObservable;
import com.polidea.rxandroidble2.internal.util.RxBleAdapterWrapper;
import io.reactivex.Observable;

public final class DisconnectionRouter_Factory implements Factory<DisconnectionRouter> {
    private final Provider<Observable<RxBleAdapterStateObservable.BleAdapterState>> adapterStateObservableProvider;
    private final Provider<RxBleAdapterWrapper> adapterWrapperProvider;
    private final Provider<String> macAddressProvider;

    public DisconnectionRouter_Factory(Provider<String> provider, Provider<RxBleAdapterWrapper> provider2, Provider<Observable<RxBleAdapterStateObservable.BleAdapterState>> provider3) {
        this.macAddressProvider = provider;
        this.adapterWrapperProvider = provider2;
        this.adapterStateObservableProvider = provider3;
    }

    @Override // bleshadow.javax.inject.Provider
    public DisconnectionRouter get() {
        return new DisconnectionRouter(this.macAddressProvider.get(), this.adapterWrapperProvider.get(), this.adapterStateObservableProvider.get());
    }

    public static DisconnectionRouter_Factory create(Provider<String> provider, Provider<RxBleAdapterWrapper> provider2, Provider<Observable<RxBleAdapterStateObservable.BleAdapterState>> provider3) {
        return new DisconnectionRouter_Factory(provider, provider2, provider3);
    }

    public static DisconnectionRouter newDisconnectionRouter(String str, RxBleAdapterWrapper rxBleAdapterWrapper, Observable<RxBleAdapterStateObservable.BleAdapterState> observable) {
        return new DisconnectionRouter(str, rxBleAdapterWrapper, observable);
    }
}
