package com.polidea.rxandroidble2.internal.scan;

import bleshadow.dagger.internal.Factory;
import bleshadow.javax.inject.Provider;
import io.reactivex.Scheduler;

public final class ScanPreconditionsVerifierApi24_Factory implements Factory<ScanPreconditionsVerifierApi24> {
    private final Provider<ScanPreconditionsVerifierApi18> scanPreconditionVerifierApi18Provider;
    private final Provider<Scheduler> timeSchedulerProvider;

    public ScanPreconditionsVerifierApi24_Factory(Provider<ScanPreconditionsVerifierApi18> provider, Provider<Scheduler> provider2) {
        this.scanPreconditionVerifierApi18Provider = provider;
        this.timeSchedulerProvider = provider2;
    }

    @Override // bleshadow.javax.inject.Provider
    public ScanPreconditionsVerifierApi24 get() {
        return new ScanPreconditionsVerifierApi24(this.scanPreconditionVerifierApi18Provider.get(), this.timeSchedulerProvider.get());
    }

    public static ScanPreconditionsVerifierApi24_Factory create(Provider<ScanPreconditionsVerifierApi18> provider, Provider<Scheduler> provider2) {
        return new ScanPreconditionsVerifierApi24_Factory(provider, provider2);
    }
}
