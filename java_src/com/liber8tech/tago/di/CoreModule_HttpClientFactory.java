package com.liber8tech.tago.di;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import okhttp3.OkHttpClient;

public final class CoreModule_HttpClientFactory implements Factory<OkHttpClient> {
    private final CoreModule module;

    public CoreModule_HttpClientFactory(CoreModule coreModule) {
        this.module = coreModule;
    }

    @Override // javax.inject.Provider
    public OkHttpClient get() {
        return (OkHttpClient) Preconditions.checkNotNull(this.module.httpClient(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static CoreModule_HttpClientFactory create(CoreModule coreModule) {
        return new CoreModule_HttpClientFactory(coreModule);
    }

    public static OkHttpClient proxyHttpClient(CoreModule coreModule) {
        return (OkHttpClient) Preconditions.checkNotNull(coreModule.httpClient(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
