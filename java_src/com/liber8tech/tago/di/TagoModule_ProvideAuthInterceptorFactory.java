package com.liber8tech.tago.di;

import com.liber8tech.tago.util.RuntimeConfig;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import okhttp3.Interceptor;

public final class TagoModule_ProvideAuthInterceptorFactory implements Factory<Interceptor> {
    private final TagoModule module;
    private final Provider<RuntimeConfig> runtimeConfigProvider;

    public TagoModule_ProvideAuthInterceptorFactory(TagoModule tagoModule, Provider<RuntimeConfig> provider) {
        this.module = tagoModule;
        this.runtimeConfigProvider = provider;
    }

    @Override // javax.inject.Provider
    public Interceptor get() {
        return (Interceptor) Preconditions.checkNotNull(this.module.provideAuthInterceptor(this.runtimeConfigProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static TagoModule_ProvideAuthInterceptorFactory create(TagoModule tagoModule, Provider<RuntimeConfig> provider) {
        return new TagoModule_ProvideAuthInterceptorFactory(tagoModule, provider);
    }

    public static Interceptor proxyProvideAuthInterceptor(TagoModule tagoModule, RuntimeConfig runtimeConfig) {
        return (Interceptor) Preconditions.checkNotNull(tagoModule.provideAuthInterceptor(runtimeConfig), "Cannot return null from a non-@Nullable @Provides method");
    }
}
