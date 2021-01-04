package com.polidea.rxandroidble2.internal;

import bleshadow.dagger.internal.Factory;
import bleshadow.dagger.internal.Preconditions;
import bleshadow.javax.inject.Provider;
import com.polidea.rxandroidble2.internal.operations.TimeoutConfiguration;
import io.reactivex.Scheduler;

public final class DeviceModule_ProvidesDisconnectTimeoutConfFactory implements Factory<TimeoutConfiguration> {
    private final Provider<Scheduler> timeoutSchedulerProvider;

    public DeviceModule_ProvidesDisconnectTimeoutConfFactory(Provider<Scheduler> provider) {
        this.timeoutSchedulerProvider = provider;
    }

    @Override // bleshadow.javax.inject.Provider
    public TimeoutConfiguration get() {
        return (TimeoutConfiguration) Preconditions.checkNotNull(DeviceModule.providesDisconnectTimeoutConf(this.timeoutSchedulerProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static DeviceModule_ProvidesDisconnectTimeoutConfFactory create(Provider<Scheduler> provider) {
        return new DeviceModule_ProvidesDisconnectTimeoutConfFactory(provider);
    }

    public static TimeoutConfiguration proxyProvidesDisconnectTimeoutConf(Scheduler scheduler) {
        return (TimeoutConfiguration) Preconditions.checkNotNull(DeviceModule.providesDisconnectTimeoutConf(scheduler), "Cannot return null from a non-@Nullable @Provides method");
    }
}
