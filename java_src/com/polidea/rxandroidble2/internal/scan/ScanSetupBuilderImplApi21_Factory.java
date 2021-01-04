package com.polidea.rxandroidble2.internal.scan;

import bleshadow.dagger.internal.Factory;
import bleshadow.javax.inject.Provider;
import com.polidea.rxandroidble2.internal.util.RxBleAdapterWrapper;

public final class ScanSetupBuilderImplApi21_Factory implements Factory<ScanSetupBuilderImplApi21> {
    private final Provider<AndroidScanObjectsConverter> androidScanObjectsConverterProvider;
    private final Provider<InternalScanResultCreator> internalScanResultCreatorProvider;
    private final Provider<RxBleAdapterWrapper> rxBleAdapterWrapperProvider;
    private final Provider<ScanSettingsEmulator> scanSettingsEmulatorProvider;

    public ScanSetupBuilderImplApi21_Factory(Provider<RxBleAdapterWrapper> provider, Provider<InternalScanResultCreator> provider2, Provider<ScanSettingsEmulator> provider3, Provider<AndroidScanObjectsConverter> provider4) {
        this.rxBleAdapterWrapperProvider = provider;
        this.internalScanResultCreatorProvider = provider2;
        this.scanSettingsEmulatorProvider = provider3;
        this.androidScanObjectsConverterProvider = provider4;
    }

    @Override // bleshadow.javax.inject.Provider
    public ScanSetupBuilderImplApi21 get() {
        return new ScanSetupBuilderImplApi21(this.rxBleAdapterWrapperProvider.get(), this.internalScanResultCreatorProvider.get(), this.scanSettingsEmulatorProvider.get(), this.androidScanObjectsConverterProvider.get());
    }

    public static ScanSetupBuilderImplApi21_Factory create(Provider<RxBleAdapterWrapper> provider, Provider<InternalScanResultCreator> provider2, Provider<ScanSettingsEmulator> provider3, Provider<AndroidScanObjectsConverter> provider4) {
        return new ScanSetupBuilderImplApi21_Factory(provider, provider2, provider3, provider4);
    }

    public static ScanSetupBuilderImplApi21 newScanSetupBuilderImplApi21(RxBleAdapterWrapper rxBleAdapterWrapper, InternalScanResultCreator internalScanResultCreator, ScanSettingsEmulator scanSettingsEmulator, AndroidScanObjectsConverter androidScanObjectsConverter) {
        return new ScanSetupBuilderImplApi21(rxBleAdapterWrapper, internalScanResultCreator, scanSettingsEmulator, androidScanObjectsConverter);
    }
}
