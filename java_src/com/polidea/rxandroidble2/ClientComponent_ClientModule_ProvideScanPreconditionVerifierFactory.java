package com.polidea.rxandroidble2;

import bleshadow.dagger.internal.Factory;
import bleshadow.dagger.internal.Preconditions;
import bleshadow.javax.inject.Provider;
import com.polidea.rxandroidble2.ClientComponent;
import com.polidea.rxandroidble2.internal.scan.ScanPreconditionsVerifier;
import com.polidea.rxandroidble2.internal.scan.ScanPreconditionsVerifierApi18;
import com.polidea.rxandroidble2.internal.scan.ScanPreconditionsVerifierApi24;

public final class ClientComponent_ClientModule_ProvideScanPreconditionVerifierFactory implements Factory<ScanPreconditionsVerifier> {
    private final Provider<Integer> deviceSdkProvider;
    private final Provider<ScanPreconditionsVerifierApi18> scanPreconditionVerifierForApi18Provider;
    private final Provider<ScanPreconditionsVerifierApi24> scanPreconditionVerifierForApi24Provider;

    public ClientComponent_ClientModule_ProvideScanPreconditionVerifierFactory(Provider<Integer> provider, Provider<ScanPreconditionsVerifierApi18> provider2, Provider<ScanPreconditionsVerifierApi24> provider3) {
        this.deviceSdkProvider = provider;
        this.scanPreconditionVerifierForApi18Provider = provider2;
        this.scanPreconditionVerifierForApi24Provider = provider3;
    }

    @Override // bleshadow.javax.inject.Provider
    public ScanPreconditionsVerifier get() {
        return (ScanPreconditionsVerifier) Preconditions.checkNotNull(ClientComponent.ClientModule.provideScanPreconditionVerifier(this.deviceSdkProvider.get().intValue(), this.scanPreconditionVerifierForApi18Provider, this.scanPreconditionVerifierForApi24Provider), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static ClientComponent_ClientModule_ProvideScanPreconditionVerifierFactory create(Provider<Integer> provider, Provider<ScanPreconditionsVerifierApi18> provider2, Provider<ScanPreconditionsVerifierApi24> provider3) {
        return new ClientComponent_ClientModule_ProvideScanPreconditionVerifierFactory(provider, provider2, provider3);
    }

    public static ScanPreconditionsVerifier proxyProvideScanPreconditionVerifier(int i, Provider<ScanPreconditionsVerifierApi18> provider, Provider<ScanPreconditionsVerifierApi24> provider2) {
        return (ScanPreconditionsVerifier) Preconditions.checkNotNull(ClientComponent.ClientModule.provideScanPreconditionVerifier(i, provider, provider2), "Cannot return null from a non-@Nullable @Provides method");
    }
}
