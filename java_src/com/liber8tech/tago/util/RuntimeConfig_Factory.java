package com.liber8tech.tago.util;

import android.content.Context;
import dagger.internal.Factory;
import javax.inject.Provider;

public final class RuntimeConfig_Factory implements Factory<RuntimeConfig> {
    private final Provider<Context> contextProvider;

    public RuntimeConfig_Factory(Provider<Context> provider) {
        this.contextProvider = provider;
    }

    @Override // javax.inject.Provider
    public RuntimeConfig get() {
        return new RuntimeConfig(this.contextProvider.get());
    }

    public static RuntimeConfig_Factory create(Provider<Context> provider) {
        return new RuntimeConfig_Factory(provider);
    }
}
