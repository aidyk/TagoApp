package com.polidea.rxandroidble2.internal.scan;

import bleshadow.dagger.internal.Factory;
import bleshadow.javax.inject.Provider;
import com.polidea.rxandroidble2.internal.util.RxBleAdapterWrapper;

public final class BackgroundScannerImpl_Factory implements Factory<BackgroundScannerImpl> {
    private final Provider<InternalScanResultCreator> internalScanResultCreatorProvider;
    private final Provider<InternalToExternalScanResultConverter> internalToExternalScanResultConverterProvider;
    private final Provider<RxBleAdapterWrapper> rxBleAdapterWrapperProvider;
    private final Provider<AndroidScanObjectsConverter> scanObjectsConverterProvider;

    public BackgroundScannerImpl_Factory(Provider<RxBleAdapterWrapper> provider, Provider<AndroidScanObjectsConverter> provider2, Provider<InternalScanResultCreator> provider3, Provider<InternalToExternalScanResultConverter> provider4) {
        this.rxBleAdapterWrapperProvider = provider;
        this.scanObjectsConverterProvider = provider2;
        this.internalScanResultCreatorProvider = provider3;
        this.internalToExternalScanResultConverterProvider = provider4;
    }

    @Override // bleshadow.javax.inject.Provider
    public BackgroundScannerImpl get() {
        return new BackgroundScannerImpl(this.rxBleAdapterWrapperProvider.get(), this.scanObjectsConverterProvider.get(), this.internalScanResultCreatorProvider.get(), this.internalToExternalScanResultConverterProvider.get());
    }

    public static BackgroundScannerImpl_Factory create(Provider<RxBleAdapterWrapper> provider, Provider<AndroidScanObjectsConverter> provider2, Provider<InternalScanResultCreator> provider3, Provider<InternalToExternalScanResultConverter> provider4) {
        return new BackgroundScannerImpl_Factory(provider, provider2, provider3, provider4);
    }

    public static BackgroundScannerImpl newBackgroundScannerImpl(RxBleAdapterWrapper rxBleAdapterWrapper, AndroidScanObjectsConverter androidScanObjectsConverter, InternalScanResultCreator internalScanResultCreator, InternalToExternalScanResultConverter internalToExternalScanResultConverter) {
        return new BackgroundScannerImpl(rxBleAdapterWrapper, androidScanObjectsConverter, internalScanResultCreator, internalToExternalScanResultConverter);
    }
}
