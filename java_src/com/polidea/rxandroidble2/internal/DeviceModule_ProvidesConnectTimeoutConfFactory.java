package com.polidea.rxandroidble2.internal;

import bleshadow.dagger.internal.Factory;
import bleshadow.dagger.internal.Preconditions;
import bleshadow.javax.inject.Provider;
import com.polidea.rxandroidble2.internal.operations.TimeoutConfiguration;
import io.reactivex.Scheduler;

public final class DeviceModule_ProvidesConnectTimeoutConfFactory implements Factory<TimeoutConfiguration> {
    private final Provider<Scheduler> timeoutSchedulerProvider;

    public DeviceModule_ProvidesConnectTimeoutConfFactory(Provider<Scheduler> provider) {
        this.timeoutSchedulerProvider = provider;
    }

    @Override // bleshadow.javax.inject.Provider
    public TimeoutConfiguration get() {
        return (TimeoutConfiguration) Preconditions.checkNotNull(DeviceModule.providesConnectTimeoutConf(this.timeoutSchedulerProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static DeviceModule_ProvidesConnectTimeoutConfFactory create(Provider<Scheduler> provider) {
        return new DeviceModule_ProvidesConnectTimeoutConfFactory(provider);
    }

    public static TimeoutConfiguration proxyProvidesConnectTimeoutConf(Scheduler scheduler) {
        return (TimeoutConfiguration) Preconditions.checkNotNull(DeviceModule.providesConnectTimeoutConf(scheduler), "Cannot return null from a non-@Nullable @Provides method");
    }
}
