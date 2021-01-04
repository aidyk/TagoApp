package com.polidea.rxandroidble2;

import android.bluetooth.BluetoothDevice;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import bleshadow.dagger.Lazy;
import bleshadow.javax.inject.Inject;
import bleshadow.javax.inject.Named;
import com.polidea.rxandroidble2.ClientComponent;
import com.polidea.rxandroidble2.RxBleAdapterStateObservable;
import com.polidea.rxandroidble2.RxBleClient;
import com.polidea.rxandroidble2.exceptions.BleScanException;
import com.polidea.rxandroidble2.internal.RxBleDeviceProvider;
import com.polidea.rxandroidble2.internal.operations.LegacyScanOperation;
import com.polidea.rxandroidble2.internal.scan.RxBleInternalScanResult;
import com.polidea.rxandroidble2.internal.scan.RxBleInternalScanResultLegacy;
import com.polidea.rxandroidble2.internal.scan.ScanPreconditionsVerifier;
import com.polidea.rxandroidble2.internal.scan.ScanSetup;
import com.polidea.rxandroidble2.internal.scan.ScanSetupBuilder;
import com.polidea.rxandroidble2.internal.serialization.ClientOperationQueue;
import com.polidea.rxandroidble2.internal.util.ClientStateObservable;
import com.polidea.rxandroidble2.internal.util.LocationServicesStatus;
import com.polidea.rxandroidble2.internal.util.RxBleAdapterWrapper;
import com.polidea.rxandroidble2.internal.util.UUIDUtil;
import com.polidea.rxandroidble2.scan.BackgroundScanner;
import com.polidea.rxandroidble2.scan.ScanFilter;
import com.polidea.rxandroidble2.scan.ScanResult;
import com.polidea.rxandroidble2.scan.ScanSettings;
import io.reactivex.Maybe;
import io.reactivex.MaybeSource;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.Scheduler;
import io.reactivex.functions.Action;
import io.reactivex.functions.Function;
import io.reactivex.functions.Predicate;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.Callable;

/* access modifiers changed from: package-private */
public class RxBleClientImpl extends RxBleClient {
    public static final String TAG = "RxBleClient";
    private final BackgroundScanner backgroundScanner;
    private final Scheduler bluetoothInteractionScheduler;
    private final ClientComponent.ClientComponentFinalizer clientComponentFinalizer;
    private final Function<RxBleInternalScanResult, ScanResult> internalToExternalScanResultMapFunction;
    private final Lazy<ClientStateObservable> lazyClientStateObservable;
    private final LocationServicesStatus locationServicesStatus;
    private final ClientOperationQueue operationQueue;
    private final Map<Set<UUID>, Observable<RxBleScanResult>> queuedScanOperations = new HashMap();
    private final Observable<RxBleAdapterStateObservable.BleAdapterState> rxBleAdapterStateObservable;
    private final RxBleAdapterWrapper rxBleAdapterWrapper;
    private final RxBleDeviceProvider rxBleDeviceProvider;
    private final ScanPreconditionsVerifier scanPreconditionVerifier;
    private final ScanSetupBuilder scanSetupBuilder;
    private final UUIDUtil uuidUtil;

    @Inject
    RxBleClientImpl(RxBleAdapterWrapper rxBleAdapterWrapper2, ClientOperationQueue clientOperationQueue, Observable<RxBleAdapterStateObservable.BleAdapterState> observable, UUIDUtil uUIDUtil, LocationServicesStatus locationServicesStatus2, Lazy<ClientStateObservable> lazy, RxBleDeviceProvider rxBleDeviceProvider2, ScanSetupBuilder scanSetupBuilder2, ScanPreconditionsVerifier scanPreconditionsVerifier, Function<RxBleInternalScanResult, ScanResult> function, @Named("bluetooth_interaction") Scheduler scheduler, ClientComponent.ClientComponentFinalizer clientComponentFinalizer2, BackgroundScanner backgroundScanner2) {
        this.uuidUtil = uUIDUtil;
        this.operationQueue = clientOperationQueue;
        this.rxBleAdapterWrapper = rxBleAdapterWrapper2;
        this.rxBleAdapterStateObservable = observable;
        this.locationServicesStatus = locationServicesStatus2;
        this.lazyClientStateObservable = lazy;
        this.rxBleDeviceProvider = rxBleDeviceProvider2;
        this.scanSetupBuilder = scanSetupBuilder2;
        this.scanPreconditionVerifier = scanPreconditionsVerifier;
        this.internalToExternalScanResultMapFunction = function;
        this.bluetoothInteractionScheduler = scheduler;
        this.clientComponentFinalizer = clientComponentFinalizer2;
        this.backgroundScanner = backgroundScanner2;
    }

    /* access modifiers changed from: protected */
    public void finalize() throws Throwable {
        this.clientComponentFinalizer.onFinalize();
        super.finalize();
    }

    @Override // com.polidea.rxandroidble2.RxBleClient
    public RxBleDevice getBleDevice(@NonNull String str) {
        guardBluetoothAdapterAvailable();
        return this.rxBleDeviceProvider.getBleDevice(str);
    }

    @Override // com.polidea.rxandroidble2.RxBleClient
    public Set<RxBleDevice> getBondedDevices() {
        guardBluetoothAdapterAvailable();
        HashSet hashSet = new HashSet();
        for (BluetoothDevice bluetoothDevice : this.rxBleAdapterWrapper.getBondedDevices()) {
            hashSet.add(getBleDevice(bluetoothDevice.getAddress()));
        }
        return hashSet;
    }

    @Override // com.polidea.rxandroidble2.RxBleClient
    public Observable<ScanResult> scanBleDevices(final ScanSettings scanSettings, final ScanFilter... scanFilterArr) {
        return Observable.defer(new Callable<ObservableSource<? extends ScanResult>>() {
            /* class com.polidea.rxandroidble2.RxBleClientImpl.AnonymousClass1 */

            /* Return type fixed from 'io.reactivex.Observable<com.polidea.rxandroidble2.scan.ScanResult>' to match base method */
            @Override // java.util.concurrent.Callable
            public ObservableSource<? extends ScanResult> call() {
                RxBleClientImpl.this.scanPreconditionVerifier.verify();
                ScanSetup build = RxBleClientImpl.this.scanSetupBuilder.build(scanSettings, scanFilterArr);
                return RxBleClientImpl.this.operationQueue.queue(build.scanOperation).unsubscribeOn(RxBleClientImpl.this.bluetoothInteractionScheduler).compose(build.scanOperationBehaviourEmulatorTransformer).map(RxBleClientImpl.this.internalToExternalScanResultMapFunction).mergeWith(RxBleClientImpl.this.bluetoothAdapterOffExceptionObservable());
            }
        });
    }

    @Override // com.polidea.rxandroidble2.RxBleClient
    public BackgroundScanner getBackgroundScanner() {
        return this.backgroundScanner;
    }

    @Override // com.polidea.rxandroidble2.RxBleClient
    public Observable<RxBleScanResult> scanBleDevices(@Nullable final UUID... uuidArr) {
        return Observable.defer(new Callable<ObservableSource<? extends RxBleScanResult>>() {
            /* class com.polidea.rxandroidble2.RxBleClientImpl.AnonymousClass2 */

            @Override // java.util.concurrent.Callable
            public ObservableSource<? extends RxBleScanResult> call() throws Exception {
                RxBleClientImpl.this.scanPreconditionVerifier.verify();
                return RxBleClientImpl.this.initializeScan(uuidArr);
            }
        });
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private Observable<RxBleScanResult> initializeScan(@Nullable UUID[] uuidArr) {
        Observable<RxBleScanResult> observable;
        Set<UUID> distinctSet = this.uuidUtil.toDistinctSet(uuidArr);
        synchronized (this.queuedScanOperations) {
            observable = this.queuedScanOperations.get(distinctSet);
            if (observable == null) {
                observable = createScanOperationApi18(uuidArr);
                this.queuedScanOperations.put(distinctSet, observable);
            }
        }
        return observable;
    }

    /* JADX DEBUG: Type inference failed for r0v4. Raw type applied. Possible types: io.reactivex.Observable<R>, io.reactivex.Observable<T> */
    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private <T> Observable<T> bluetoothAdapterOffExceptionObservable() {
        return (Observable<R>) this.rxBleAdapterStateObservable.filter(new Predicate<RxBleAdapterStateObservable.BleAdapterState>() {
            /* class com.polidea.rxandroidble2.RxBleClientImpl.AnonymousClass4 */

            public boolean test(RxBleAdapterStateObservable.BleAdapterState bleAdapterState) throws Exception {
                return bleAdapterState != RxBleAdapterStateObservable.BleAdapterState.STATE_ON;
            }
        }).firstElement().flatMap(new Function<RxBleAdapterStateObservable.BleAdapterState, MaybeSource<T>>() {
            /* class com.polidea.rxandroidble2.RxBleClientImpl.AnonymousClass3 */

            public MaybeSource<T> apply(RxBleAdapterStateObservable.BleAdapterState bleAdapterState) throws Exception {
                return Maybe.error(new BleScanException(1));
            }
        }).toObservable();
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private RxBleScanResult convertToPublicScanResult(RxBleInternalScanResultLegacy rxBleInternalScanResultLegacy) {
        return new RxBleScanResult(getBleDevice(rxBleInternalScanResultLegacy.getBluetoothDevice().getAddress()), rxBleInternalScanResultLegacy.getRssi(), rxBleInternalScanResultLegacy.getScanRecord());
    }

    private Observable<RxBleScanResult> createScanOperationApi18(@Nullable UUID[] uuidArr) {
        final Set<UUID> distinctSet = this.uuidUtil.toDistinctSet(uuidArr);
        return this.operationQueue.queue(new LegacyScanOperation(uuidArr, this.rxBleAdapterWrapper, this.uuidUtil)).doFinally(new Action() {
            /* class com.polidea.rxandroidble2.RxBleClientImpl.AnonymousClass6 */

            @Override // io.reactivex.functions.Action
            public void run() throws Exception {
                synchronized (RxBleClientImpl.this.queuedScanOperations) {
                    RxBleClientImpl.this.queuedScanOperations.remove(distinctSet);
                }
            }
        }).mergeWith(bluetoothAdapterOffExceptionObservable()).map(new Function<RxBleInternalScanResultLegacy, RxBleScanResult>() {
            /* class com.polidea.rxandroidble2.RxBleClientImpl.AnonymousClass5 */

            public RxBleScanResult apply(RxBleInternalScanResultLegacy rxBleInternalScanResultLegacy) {
                return RxBleClientImpl.this.convertToPublicScanResult(rxBleInternalScanResultLegacy);
            }
        }).share();
    }

    private void guardBluetoothAdapterAvailable() {
        if (!this.rxBleAdapterWrapper.hasBluetoothAdapter()) {
            throw new UnsupportedOperationException("RxAndroidBle library needs a BluetoothAdapter to be available in the system to work. If this is a test on an emulator then you can use 'https://github.com/Polidea/RxAndroidBle/tree/master/mockrxandroidble'");
        }
    }

    @Override // com.polidea.rxandroidble2.RxBleClient
    public Observable<RxBleClient.State> observeStateChanges() {
        return this.lazyClientStateObservable.get();
    }

    @Override // com.polidea.rxandroidble2.RxBleClient
    public RxBleClient.State getState() {
        if (!this.rxBleAdapterWrapper.hasBluetoothAdapter()) {
            return RxBleClient.State.BLUETOOTH_NOT_AVAILABLE;
        }
        if (!this.locationServicesStatus.isLocationPermissionOk()) {
            return RxBleClient.State.LOCATION_PERMISSION_NOT_GRANTED;
        }
        if (!this.rxBleAdapterWrapper.isBluetoothEnabled()) {
            return RxBleClient.State.BLUETOOTH_NOT_ENABLED;
        }
        if (!this.locationServicesStatus.isLocationProviderOk()) {
            return RxBleClient.State.LOCATION_SERVICES_NOT_ENABLED;
        }
        return RxBleClient.State.READY;
    }
}
