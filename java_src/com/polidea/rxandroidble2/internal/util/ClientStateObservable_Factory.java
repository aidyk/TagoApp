package com.polidea.rxandroidble2.internal.util;

import bleshadow.dagger.internal.Factory;
import bleshadow.javax.inject.Provider;
import com.polidea.rxandroidble2.RxBleAdapterStateObservable;
import io.reactivex.Observable;
import io.reactivex.Scheduler;

public final class ClientStateObservable_Factory implements Factory<ClientStateObservable> {
    private final Provider<Observable<RxBleAdapterStateObservable.BleAdapterState>> bleAdapterStateObservableProvider;
    private final Provider<Observable<Boolean>> locationServicesOkObservableProvider;
    private final Provider<LocationServicesStatus> locationServicesStatusProvider;
    private final Provider<RxBleAdapterWrapper> rxBleAdapterWrapperProvider;
    private final Provider<Scheduler> timerSchedulerProvider;

    public ClientStateObservable_Factory(Provider<RxBleAdapterWrapper> provider, Provider<Observable<RxBleAdapterStateObservable.BleAdapterState>> provider2, Provider<Observable<Boolean>> provider3, Provider<LocationServicesStatus> provider4, Provider<Scheduler> provider5) {
        this.rxBleAdapterWrapperProvider = provider;
        this.bleAdapterStateObservableProvider = provider2;
        this.locationServicesOkObservableProvider = provider3;
        this.locationServicesStatusProvider = provider4;
        this.timerSchedulerProvider = provider5;
    }

    @Override // bleshadow.javax.inject.Provider
    public ClientStateObservable get() {
        return new ClientStateObservable(this.rxBleAdapterWrapperProvider.get(), this.bleAdapterStateObservableProvider.get(), this.locationServicesOkObservableProvider.get(), this.locationServicesStatusProvider.get(), this.timerSchedulerProvider.get());
    }

    public static ClientStateObservable_Factory create(Provider<RxBleAdapterWrapper> provider, Provider<Observable<RxBleAdapterStateObservable.BleAdapterState>> provider2, Provider<Observable<Boolean>> provider3, Provider<LocationServicesStatus> provider4, Provider<Scheduler> provider5) {
        return new ClientStateObservable_Factory(provider, provider2, provider3, provider4, provider5);
    }

    public static ClientStateObservable newClientStateObservable(RxBleAdapterWrapper rxBleAdapterWrapper, Observable<RxBleAdapterStateObservable.BleAdapterState> observable, Observable<Boolean> observable2, LocationServicesStatus locationServicesStatus, Scheduler scheduler) {
        return new ClientStateObservable(rxBleAdapterWrapper, observable, observable2, locationServicesStatus, scheduler);
    }
}
