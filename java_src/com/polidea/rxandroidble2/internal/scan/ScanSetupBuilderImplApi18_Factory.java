package com.polidea.rxandroidble2.internal.scan;

import bleshadow.dagger.internal.Factory;
import bleshadow.javax.inject.Provider;
import com.polidea.rxandroidble2.internal.util.RxBleAdapterWrapper;

public final class ScanSetupBuilderImplApi18_Factory implements Factory<ScanSetupBuilderImplApi18> {
    private final Provider<InternalScanResultCreator> internalScanResultCreatorProvider;
    private final Provider<RxBleAdapterWrapper> rxBleAdapterWrapperProvider;
    private final Provider<ScanSettingsEmulator> scanSettingsEmulatorProvider;

    public ScanSetupBuilderImplApi18_Factory(Provider<RxBleAdapterWrapper> provider, Provider<InternalScanResultCreator> provider2, Provider<ScanSettingsEmulator> provider3) {
        this.rxBleAdapterWrapperProvider = provider;
        this.internalScanResultCreatorProvider = provider2;
        this.scanSettingsEmulatorProvider = provider3;
    }

    @Override // bleshadow.javax.inject.Provider
    public ScanSetupBuilderImplApi18 get() {
        return new ScanSetupBuilderImplApi18(this.rxBleAdapterWrapperProvider.get(), this.internalScanResultCreatorProvider.get(), this.scanSettingsEmulatorProvider.get());
    }

    public static ScanSetupBuilderImplApi18_Factory create(Provider<RxBleAdapterWrapper> provider, Provider<InternalScanResultCreator> provider2, Provider<ScanSettingsEmulator> provider3) {
        return new ScanSetupBuilderImplApi18_Factory(provider, provider2, provider3);
    }

    public static ScanSetupBuilderImplApi18 newScanSetupBuilderImplApi18(RxBleAdapterWrapper rxBleAdapterWrapper, InternalScanResultCreator internalScanResultCreator, ScanSettingsEmulator scanSettingsEmulator) {
        return new ScanSetupBuilderImplApi18(rxBleAdapterWrapper, internalScanResultCreator, scanSettingsEmulator);
    }
}
