package com.liber8tech.tago.di;

import android.os.Handler;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

public final class CoreModule_HandlerFactory implements Factory<Handler> {
    private final CoreModule module;

    public CoreModule_HandlerFactory(CoreModule coreModule) {
        this.module = coreModule;
    }

    @Override // javax.inject.Provider
    public Handler get() {
        return (Handler) Preconditions.checkNotNull(this.module.handler(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static CoreModule_HandlerFactory create(CoreModule coreModule) {
        return new CoreModule_HandlerFactory(coreModule);
    }

    public static Handler proxyHandler(CoreModule coreModule) {
        return (Handler) Preconditions.checkNotNull(coreModule.handler(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
