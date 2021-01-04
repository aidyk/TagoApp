package com.liber8tech.tago.service;

import dagger.internal.Factory;
import javax.inject.Provider;
import retrofit2.Retrofit;

public final class StoreService_Factory implements Factory<StoreService> {
    private final Provider<Retrofit> retrofitProvider;

    public StoreService_Factory(Provider<Retrofit> provider) {
        this.retrofitProvider = provider;
    }

    @Override // javax.inject.Provider
    public StoreService get() {
        return new StoreService(this.retrofitProvider.get());
    }

    public static StoreService_Factory create(Provider<Retrofit> provider) {
        return new StoreService_Factory(provider);
    }
}
