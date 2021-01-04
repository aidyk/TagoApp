package com.liber8tech.tago.service;

import android.content.Context;
import dagger.internal.Factory;
import javax.inject.Provider;

public final class LocationService_Factory implements Factory<LocationService> {
    private final Provider<Context> ctxProvider;

    public LocationService_Factory(Provider<Context> provider) {
        this.ctxProvider = provider;
    }

    @Override // javax.inject.Provider
    public LocationService get() {
        return new LocationService(this.ctxProvider.get());
    }

    public static LocationService_Factory create(Provider<Context> provider) {
        return new LocationService_Factory(provider);
    }
}
