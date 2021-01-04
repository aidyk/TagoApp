package com.polidea.rxandroidble2.internal.util;

import android.content.Context;
import bleshadow.dagger.internal.Factory;
import bleshadow.javax.inject.Provider;

public final class LocationServicesOkObservableApi23Factory_Factory implements Factory<LocationServicesOkObservableApi23Factory> {
    private final Provider<Context> contextProvider;
    private final Provider<LocationServicesStatus> locationServicesStatusProvider;

    public LocationServicesOkObservableApi23Factory_Factory(Provider<Context> provider, Provider<LocationServicesStatus> provider2) {
        this.contextProvider = provider;
        this.locationServicesStatusProvider = provider2;
    }

    @Override // bleshadow.javax.inject.Provider
    public LocationServicesOkObservableApi23Factory get() {
        return new LocationServicesOkObservableApi23Factory(this.contextProvider.get(), this.locationServicesStatusProvider.get());
    }

    public static LocationServicesOkObservableApi23Factory_Factory create(Provider<Context> provider, Provider<LocationServicesStatus> provider2) {
        return new LocationServicesOkObservableApi23Factory_Factory(provider, provider2);
    }

    public static LocationServicesOkObservableApi23Factory newLocationServicesOkObservableApi23Factory(Context context, LocationServicesStatus locationServicesStatus) {
        return new LocationServicesOkObservableApi23Factory(context, locationServicesStatus);
    }
}
