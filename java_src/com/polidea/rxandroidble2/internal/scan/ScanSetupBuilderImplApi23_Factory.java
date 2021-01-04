package com.polidea.rxandroidble2.internal.scan;

import bleshadow.dagger.internal.Factory;
import bleshadow.javax.inject.Provider;
import com.polidea.rxandroidble2.internal.util.RxBleAdapterWrapper;

public final class ScanSetupBuilderImplApi23_Factory implements Factory<ScanSetupBuilderImplApi23> {
    private final Provider<AndroidScanObjectsConverter> androidScanObjectsConverterProvider;
    private final Provider<InternalScanResultCreator> internalScanResultCreatorProvider;
    private final Provider<RxBleAdapterWrapper> rxBleAdapterWrapperProvider;

    public ScanSetupBuilderImplApi23_Factory(Provider<RxBleAdapterWrapper> provider, Provider<InternalScanResultCreator> provider2, Provider<AndroidScanObjectsConverter> provider3) {
        this.rxBleAdapterWrapperProvider = provider;
        this.internalScanResultCreatorProvider = provider2;
        this.androidScanObjectsConverterProvider = provider3;
    }

    @Override // bleshadow.javax.inject.Provider
    public ScanSetupBuilderImplApi23 get() {
        return new ScanSetupBuilderImplApi23(this.rxBleAdapterWrapperProvider.get(), this.internalScanResultCreatorProvider.get(), this.androidScanObjectsConverterProvider.get());
    }

    public static ScanSetupBuilderImplApi23_Factory create(Provider<RxBleAdapterWrapper> provider, Provider<InternalScanResultCreator> provider2, Provider<AndroidScanObjectsConverter> provider3) {
        return new ScanSetupBuilderImplApi23_Factory(provider, provider2, provider3);
    }

    public static ScanSetupBuilderImplApi23 newScanSetupBuilderImplApi23(RxBleAdapterWrapper rxBleAdapterWrapper, InternalScanResultCreator internalScanResultCreator, AndroidScanObjectsConverter androidScanObjectsConverter) {
        return new ScanSetupBuilderImplApi23(rxBleAdapterWrapper, internalScanResultCreator, androidScanObjectsConverter);
    }
}
