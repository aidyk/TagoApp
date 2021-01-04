package com.liber8tech.tago.di;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;

public final class TagoModule_ProvideHttpClientFactory implements Factory<OkHttpClient> {
    private final Provider<Interceptor> headerInterceptorProvider;
    private final TagoModule module;

    public TagoModule_ProvideHttpClientFactory(TagoModule tagoModule, Provider<Interceptor> provider) {
        this.module = tagoModule;
        this.headerInterceptorProvider = provider;
    }

    @Override // javax.inject.Provider
    public OkHttpClient get() {
        return (OkHttpClient) Preconditions.checkNotNull(this.module.provideHttpClient(this.headerInterceptorProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static TagoModule_ProvideHttpClientFactory create(TagoModule tagoModule, Provider<Interceptor> provider) {
        return new TagoModule_ProvideHttpClientFactory(tagoModule, provider);
    }

    public static OkHttpClient proxyProvideHttpClient(TagoModule tagoModule, Interceptor interceptor) {
        return (OkHttpClient) Preconditions.checkNotNull(tagoModule.provideHttpClient(interceptor), "Cannot return null from a non-@Nullable @Provides method");
    }
}
