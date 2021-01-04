package com.liber8tech.tago.di;

import com.polidea.rxandroidble2.RxBleClient;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

public final class TagoModule_ProvideBleClientFactory implements Factory<RxBleClient> {
    private final TagoModule module;

    public TagoModule_ProvideBleClientFactory(TagoModule tagoModule) {
        this.module = tagoModule;
    }

    @Override // javax.inject.Provider
    public RxBleClient get() {
        return (RxBleClient) Preconditions.checkNotNull(this.module.provideBleClient(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static TagoModule_ProvideBleClientFactory create(TagoModule tagoModule) {
        return new TagoModule_ProvideBleClientFactory(tagoModule);
    }

    public static RxBleClient proxyProvideBleClient(TagoModule tagoModule) {
        return (RxBleClient) Preconditions.checkNotNull(tagoModule.provideBleClient(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
