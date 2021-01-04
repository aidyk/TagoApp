package com.liber8tech.tago.di;

import android.content.Context;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

public final class CoreModule_ContextFactory implements Factory<Context> {
    private final CoreModule module;

    public CoreModule_ContextFactory(CoreModule coreModule) {
        this.module = coreModule;
    }

    @Override // javax.inject.Provider
    public Context get() {
        return (Context) Preconditions.checkNotNull(this.module.context(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static CoreModule_ContextFactory create(CoreModule coreModule) {
        return new CoreModule_ContextFactory(coreModule);
    }

    public static Context proxyContext(CoreModule coreModule) {
        return (Context) Preconditions.checkNotNull(coreModule.context(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
