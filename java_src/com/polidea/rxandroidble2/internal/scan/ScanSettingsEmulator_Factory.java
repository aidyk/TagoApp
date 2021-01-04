package com.polidea.rxandroidble2.internal.scan;

import bleshadow.dagger.internal.Factory;
import bleshadow.javax.inject.Provider;
import io.reactivex.Scheduler;

public final class ScanSettingsEmulator_Factory implements Factory<ScanSettingsEmulator> {
    private final Provider<Scheduler> schedulerProvider;

    public ScanSettingsEmulator_Factory(Provider<Scheduler> provider) {
        this.schedulerProvider = provider;
    }

    @Override // bleshadow.javax.inject.Provider
    public ScanSettingsEmulator get() {
        return new ScanSettingsEmulator(this.schedulerProvider.get());
    }

    public static ScanSettingsEmulator_Factory create(Provider<Scheduler> provider) {
        return new ScanSettingsEmulator_Factory(provider);
    }
}
