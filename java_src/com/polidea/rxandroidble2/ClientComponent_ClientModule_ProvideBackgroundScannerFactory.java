package com.polidea.rxandroidble2;

import bleshadow.dagger.internal.Factory;
import bleshadow.dagger.internal.Preconditions;
import bleshadow.javax.inject.Provider;
import com.polidea.rxandroidble2.ClientComponent;
import com.polidea.rxandroidble2.internal.scan.BackgroundScannerImpl;
import com.polidea.rxandroidble2.scan.BackgroundScanner;

public final class ClientComponent_ClientModule_ProvideBackgroundScannerFactory implements Factory<BackgroundScanner> {
    private final Provider<BackgroundScannerImpl> backgroundScannerImplProvider;
    private final ClientComponent.ClientModule module;

    public ClientComponent_ClientModule_ProvideBackgroundScannerFactory(ClientComponent.ClientModule clientModule, Provider<BackgroundScannerImpl> provider) {
        this.module = clientModule;
        this.backgroundScannerImplProvider = provider;
    }

    @Override // bleshadow.javax.inject.Provider
    public BackgroundScanner get() {
        return (BackgroundScanner) Preconditions.checkNotNull(this.module.provideBackgroundScanner(this.backgroundScannerImplProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static ClientComponent_ClientModule_ProvideBackgroundScannerFactory create(ClientComponent.ClientModule clientModule, Provider<BackgroundScannerImpl> provider) {
        return new ClientComponent_ClientModule_ProvideBackgroundScannerFactory(clientModule, provider);
    }

    public static BackgroundScanner proxyProvideBackgroundScanner(ClientComponent.ClientModule clientModule, BackgroundScannerImpl backgroundScannerImpl) {
        return (BackgroundScanner) Preconditions.checkNotNull(clientModule.provideBackgroundScanner(backgroundScannerImpl), "Cannot return null from a non-@Nullable @Provides method");
    }
}
