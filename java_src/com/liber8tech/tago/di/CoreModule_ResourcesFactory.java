package com.liber8tech.tago.di;

import android.content.res.Resources;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

public final class CoreModule_ResourcesFactory implements Factory<Resources> {
    private final CoreModule module;

    public CoreModule_ResourcesFactory(CoreModule coreModule) {
        this.module = coreModule;
    }

    @Override // javax.inject.Provider
    public Resources get() {
        return (Resources) Preconditions.checkNotNull(this.module.resources(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static CoreModule_ResourcesFactory create(CoreModule coreModule) {
        return new CoreModule_ResourcesFactory(coreModule);
    }

    public static Resources proxyResources(CoreModule coreModule) {
        return (Resources) Preconditions.checkNotNull(coreModule.resources(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
