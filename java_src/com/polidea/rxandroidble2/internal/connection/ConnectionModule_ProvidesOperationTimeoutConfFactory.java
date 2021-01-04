package com.polidea.rxandroidble2.internal.connection;

import bleshadow.dagger.internal.Factory;
import bleshadow.dagger.internal.Preconditions;
import bleshadow.javax.inject.Provider;
import com.polidea.rxandroidble2.internal.operations.TimeoutConfiguration;
import io.reactivex.Scheduler;

public final class ConnectionModule_ProvidesOperationTimeoutConfFactory implements Factory<TimeoutConfiguration> {
    private final ConnectionModule module;
    private final Provider<Scheduler> timeoutSchedulerProvider;

    public ConnectionModule_ProvidesOperationTimeoutConfFactory(ConnectionModule connectionModule, Provider<Scheduler> provider) {
        this.module = connectionModule;
        this.timeoutSchedulerProvider = provider;
    }

    @Override // bleshadow.javax.inject.Provider
    public TimeoutConfiguration get() {
        return (TimeoutConfiguration) Preconditions.checkNotNull(this.module.providesOperationTimeoutConf(this.timeoutSchedulerProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static ConnectionModule_ProvidesOperationTimeoutConfFactory create(ConnectionModule connectionModule, Provider<Scheduler> provider) {
        return new ConnectionModule_ProvidesOperationTimeoutConfFactory(connectionModule, provider);
    }

    public static TimeoutConfiguration proxyProvidesOperationTimeoutConf(ConnectionModule connectionModule, Scheduler scheduler) {
        return (TimeoutConfiguration) Preconditions.checkNotNull(connectionModule.providesOperationTimeoutConf(scheduler), "Cannot return null from a non-@Nullable @Provides method");
    }
}
