package com.liber8tech.tago.service;

import dagger.internal.Factory;
import javax.inject.Provider;

public final class TagoService_Factory implements Factory<TagoService> {
    private final Provider<TagoApiService> apiServiceProvider;
    private final Provider<BluetoothService> bluetoothServiceProvider;
    private final Provider<LocationService> locationServiceProvider;

    public TagoService_Factory(Provider<TagoApiService> provider, Provider<BluetoothService> provider2, Provider<LocationService> provider3) {
        this.apiServiceProvider = provider;
        this.bluetoothServiceProvider = provider2;
        this.locationServiceProvider = provider3;
    }

    @Override // javax.inject.Provider
    public TagoService get() {
        return new TagoService(this.apiServiceProvider.get(), this.bluetoothServiceProvider.get(), this.locationServiceProvider.get());
    }

    public static TagoService_Factory create(Provider<TagoApiService> provider, Provider<BluetoothService> provider2, Provider<LocationService> provider3) {
        return new TagoService_Factory(provider, provider2, provider3);
    }
}
