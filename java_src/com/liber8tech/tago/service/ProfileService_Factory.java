package com.liber8tech.tago.service;

import dagger.internal.Factory;
import javax.inject.Provider;
import retrofit2.Retrofit;

public final class ProfileService_Factory implements Factory<ProfileService> {
    private final Provider<Retrofit> retrofitProvider;

    public ProfileService_Factory(Provider<Retrofit> provider) {
        this.retrofitProvider = provider;
    }

    @Override // javax.inject.Provider
    public ProfileService get() {
        return new ProfileService(this.retrofitProvider.get());
    }

    public static ProfileService_Factory create(Provider<Retrofit> provider) {
        return new ProfileService_Factory(provider);
    }
}
