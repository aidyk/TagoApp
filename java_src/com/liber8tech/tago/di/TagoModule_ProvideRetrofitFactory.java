package com.liber8tech.tago.di;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import okhttp3.OkHttpClient;
import retrofit2.Retrofit;

public final class TagoModule_ProvideRetrofitFactory implements Factory<Retrofit> {
    private final Provider<OkHttpClient> clientProvider;
    private final TagoModule module;

    public TagoModule_ProvideRetrofitFactory(TagoModule tagoModule, Provider<OkHttpClient> provider) {
        this.module = tagoModule;
        this.clientProvider = provider;
    }

    @Override // javax.inject.Provider
    public Retrofit get() {
        return (Retrofit) Preconditions.checkNotNull(this.module.provideRetrofit(this.clientProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static TagoModule_ProvideRetrofitFactory create(TagoModule tagoModule, Provider<OkHttpClient> provider) {
        return new TagoModule_ProvideRetrofitFactory(tagoModule, provider);
    }

    public static Retrofit proxyProvideRetrofit(TagoModule tagoModule, OkHttpClient okHttpClient) {
        return (Retrofit) Preconditions.checkNotNull(tagoModule.provideRetrofit(okHttpClient), "Cannot return null from a non-@Nullable @Provides method");
    }
}
