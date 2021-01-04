package com.liber8tech.tago.di;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import org.greenrobot.eventbus.EventBus;

public final class CoreModule_EventBusFactory implements Factory<EventBus> {
    private final CoreModule module;

    public CoreModule_EventBusFactory(CoreModule coreModule) {
        this.module = coreModule;
    }

    @Override // javax.inject.Provider
    public EventBus get() {
        return (EventBus) Preconditions.checkNotNull(this.module.eventBus(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static CoreModule_EventBusFactory create(CoreModule coreModule) {
        return new CoreModule_EventBusFactory(coreModule);
    }

    public static EventBus proxyEventBus(CoreModule coreModule) {
        return (EventBus) Preconditions.checkNotNull(coreModule.eventBus(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
