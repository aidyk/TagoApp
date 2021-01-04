package com.liber8tech.tago.service;

import com.liber8tech.tago.util.RuntimeConfig;
import dagger.internal.Factory;
import javax.inject.Provider;
import retrofit2.Retrofit;

public final class AuthService_Factory implements Factory<AuthService> {
    private final Provider<Retrofit> retrofitProvider;
    private final Provider<RuntimeConfig> runtimeConfigProvider;

    public AuthService_Factory(Provider<Retrofit> provider, Provider<RuntimeConfig> provider2) {
        this.retrofitProvider = provider;
        this.runtimeConfigProvider = provider2;
    }

    @Override // javax.inject.Provider
    public AuthService get() {
        return new AuthService(this.retrofitProvider.get(), this.runtimeConfigProvider.get());
    }

    public static AuthService_Factory create(Provider<Retrofit> provider, Provider<RuntimeConfig> provider2) {
        return new AuthService_Factory(provider, provider2);
    }
}
