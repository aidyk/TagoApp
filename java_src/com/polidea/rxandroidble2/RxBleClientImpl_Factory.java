package com.polidea.rxandroidble2;

import bleshadow.dagger.Lazy;
import bleshadow.dagger.internal.DoubleCheck;
import bleshadow.dagger.internal.Factory;
import bleshadow.javax.inject.Provider;
import com.polidea.rxandroidble2.ClientComponent;
import com.polidea.rxandroidble2.RxBleAdapterStateObservable;
import com.polidea.rxandroidble2.internal.RxBleDeviceProvider;
import com.polidea.rxandroidble2.internal.scan.RxBleInternalScanResult;
import com.polidea.rxandroidble2.internal.scan.ScanPreconditionsVerifier;
import com.polidea.rxandroidble2.internal.scan.ScanSetupBuilder;
import com.polidea.rxandroidble2.internal.serialization.ClientOperationQueue;
import com.polidea.rxandroidble2.internal.util.ClientStateObservable;
import com.polidea.rxandroidble2.internal.util.LocationServicesStatus;
import com.polidea.rxandroidble2.internal.util.RxBleAdapterWrapper;
import com.polidea.rxandroidble2.internal.util.UUIDUtil;
import com.polidea.rxandroidble2.scan.BackgroundScanner;
import com.polidea.rxandroidble2.scan.ScanResult;
import io.reactivex.Observable;
import io.reactivex.Scheduler;
import io.reactivex.functions.Function;

public final class RxBleClientImpl_Factory implements Factory<RxBleClientImpl> {
    private final Provider<Observable<RxBleAdapterStateObservable.BleAdapterState>> adapterStateObservableProvider;
    private final Provider<BackgroundScanner> backgroundScannerProvider;
    private final Provider<Scheduler> bluetoothInteractionSchedulerProvider;
    private final Provider<ClientComponent.ClientComponentFinalizer> clientComponentFinalizerProvider;
    private final Provider<ClientStateObservable> clientStateObservableProvider;
    private final Provider<Function<RxBleInternalScanResult, ScanResult>> internalToExternalScanResultMapFunctionProvider;
    private final Provider<LocationServicesStatus> locationServicesStatusProvider;
    private final Provider<ClientOperationQueue> operationQueueProvider;
    private final Provider<RxBleAdapterWrapper> rxBleAdapterWrapperProvider;
    private final Provider<RxBleDeviceProvider> rxBleDeviceProvider;
    private final Provider<ScanPreconditionsVerifier> scanPreconditionVerifierProvider;
    private final Provider<ScanSetupBuilder> scanSetupBuilderProvider;
    private final Provider<UUIDUtil> uuidUtilProvider;

    public RxBleClientImpl_Factory(Provider<RxBleAdapterWrapper> provider, Provider<ClientOperationQueue> provider2, Provider<Observable<RxBleAdapterStateObservable.BleAdapterState>> provider3, Provider<UUIDUtil> provider4, Provider<LocationServicesStatus> provider5, Provider<ClientStateObservable> provider6, Provider<RxBleDeviceProvider> provider7, Provider<ScanSetupBuilder> provider8, Provider<ScanPreconditionsVerifier> provider9, Provider<Function<RxBleInternalScanResult, ScanResult>> provider10, Provider<Scheduler> provider11, Provider<ClientComponent.ClientComponentFinalizer> provider12, Provider<BackgroundScanner> provider13) {
        this.rxBleAdapterWrapperProvider = provider;
        this.operationQueueProvider = provider2;
        this.adapterStateObservableProvider = provider3;
        this.uuidUtilProvider = provider4;
        this.locationServicesStatusProvider = provider5;
        this.clientStateObservableProvider = provider6;
        this.rxBleDeviceProvider = provider7;
        this.scanSetupBuilderProvider = provider8;
        this.scanPreconditionVerifierProvider = provider9;
        this.internalToExternalScanResultMapFunctionProvider = provider10;
        this.bluetoothInteractionSchedulerProvider = provider11;
        this.clientComponentFinalizerProvider = provider12;
        this.backgroundScannerProvider = provider13;
    }

    @Override // bleshadow.javax.inject.Provider
    public RxBleClientImpl get() {
        return new RxBleClientImpl(this.rxBleAdapterWrapperProvider.get(), this.operationQueueProvider.get(), this.adapterStateObservableProvider.get(), this.uuidUtilProvider.get(), this.locationServicesStatusProvider.get(), DoubleCheck.lazy(this.clientStateObservableProvider), this.rxBleDeviceProvider.get(), this.scanSetupBuilderProvider.get(), this.scanPreconditionVerifierProvider.get(), this.internalToExternalScanResultMapFunctionProvider.get(), this.bluetoothInteractionSchedulerProvider.get(), this.clientComponentFinalizerProvider.get(), this.backgroundScannerProvider.get());
    }

    public static RxBleClientImpl_Factory create(Provider<RxBleAdapterWrapper> provider, Provider<ClientOperationQueue> provider2, Provider<Observable<RxBleAdapterStateObservable.BleAdapterState>> provider3, Provider<UUIDUtil> provider4, Provider<LocationServicesStatus> provider5, Provider<ClientStateObservable> provider6, Provider<RxBleDeviceProvider> provider7, Provider<ScanSetupBuilder> provider8, Provider<ScanPreconditionsVerifier> provider9, Provider<Function<RxBleInternalScanResult, ScanResult>> provider10, Provider<Scheduler> provider11, Provider<ClientComponent.ClientComponentFinalizer> provider12, Provider<BackgroundScanner> provider13) {
        return new RxBleClientImpl_Factory(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8, provider9, provider10, provider11, provider12, provider13);
    }

    public static RxBleClientImpl newRxBleClientImpl(RxBleAdapterWrapper rxBleAdapterWrapper, ClientOperationQueue clientOperationQueue, Observable<RxBleAdapterStateObservable.BleAdapterState> observable, UUIDUtil uUIDUtil, LocationServicesStatus locationServicesStatus, Lazy<ClientStateObservable> lazy, RxBleDeviceProvider rxBleDeviceProvider2, ScanSetupBuilder scanSetupBuilder, ScanPreconditionsVerifier scanPreconditionsVerifier, Function<RxBleInternalScanResult, ScanResult> function, Scheduler scheduler, ClientComponent.ClientComponentFinalizer clientComponentFinalizer, BackgroundScanner backgroundScanner) {
        return new RxBleClientImpl(rxBleAdapterWrapper, clientOperationQueue, observable, uUIDUtil, locationServicesStatus, lazy, rxBleDeviceProvider2, scanSetupBuilder, scanPreconditionsVerifier, function, scheduler, clientComponentFinalizer, backgroundScanner);
    }
}
