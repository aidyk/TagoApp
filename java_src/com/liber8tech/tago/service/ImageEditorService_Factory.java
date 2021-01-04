package com.liber8tech.tago.service;

import android.content.Context;
import com.liber8tech.tago.util.RuntimeConfig;
import dagger.internal.Factory;
import javax.inject.Provider;
import retrofit2.Retrofit;

public final class ImageEditorService_Factory implements Factory<ImageEditorService> {
    private final Provider<Context> contextProvider;
    private final Provider<Retrofit> retrofitProvider;
    private final Provider<RuntimeConfig> runtimeConfigProvider;

    public ImageEditorService_Factory(Provider<Retrofit> provider, Provider<Context> provider2, Provider<RuntimeConfig> provider3) {
        this.retrofitProvider = provider;
        this.contextProvider = provider2;
        this.runtimeConfigProvider = provider3;
    }

    @Override // javax.inject.Provider
    public ImageEditorService get() {
        return new ImageEditorService(this.retrofitProvider.get(), this.contextProvider.get(), this.runtimeConfigProvider.get());
    }

    public static ImageEditorService_Factory create(Provider<Retrofit> provider, Provider<Context> provider2, Provider<RuntimeConfig> provider3) {
        return new ImageEditorService_Factory(provider, provider2, provider3);
    }
}
