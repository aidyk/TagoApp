package com.liber8tech.tago.service;

import dagger.internal.Factory;
import javax.inject.Provider;
import retrofit2.Retrofit;

public final class TagoApiService_Factory implements Factory<TagoApiService> {
    private final Provider<Retrofit> retrofitProvider;

    public TagoApiService_Factory(Provider<Retrofit> provider) {
        this.retrofitProvider = provider;
    }

    @Override // javax.inject.Provider
    public TagoApiService get() {
        return new TagoApiService(this.retrofitProvider.get());
    }

    public static TagoApiService_Factory create(Provider<Retrofit> provider) {
        return new TagoApiService_Factory(provider);
    }
}
