package com.polidea.rxandroidble2.internal.scan;

import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import bleshadow.javax.inject.Inject;
import com.polidea.rxandroidble2.internal.operations.ScanOperationApi21;
import com.polidea.rxandroidble2.internal.util.RxBleAdapterWrapper;
import com.polidea.rxandroidble2.scan.ScanFilter;
import com.polidea.rxandroidble2.scan.ScanSettings;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.ObservableTransformer;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class ScanSetupBuilderImplApi21 implements ScanSetupBuilder {
    private final AndroidScanObjectsConverter androidScanObjectsConverter;
    private final InternalScanResultCreator internalScanResultCreator;
    private final RxBleAdapterWrapper rxBleAdapterWrapper;
    private final ScanSettingsEmulator scanSettingsEmulator;

    @Inject
    ScanSetupBuilderImplApi21(RxBleAdapterWrapper rxBleAdapterWrapper2, InternalScanResultCreator internalScanResultCreator2, ScanSettingsEmulator scanSettingsEmulator2, AndroidScanObjectsConverter androidScanObjectsConverter2) {
        this.rxBleAdapterWrapper = rxBleAdapterWrapper2;
        this.internalScanResultCreator = internalScanResultCreator2;
        this.scanSettingsEmulator = scanSettingsEmulator2;
        this.androidScanObjectsConverter = androidScanObjectsConverter2;
    }

    @Override // com.polidea.rxandroidble2.internal.scan.ScanSetupBuilder
    @RequiresApi(api = 21)
    public ScanSetup build(ScanSettings scanSettings, ScanFilter... scanFilterArr) {
        final ObservableTransformer<RxBleInternalScanResult, RxBleInternalScanResult> emulateCallbackType = this.scanSettingsEmulator.emulateCallbackType(scanSettings.getCallbackType());
        return new ScanSetup(new ScanOperationApi21(this.rxBleAdapterWrapper, this.internalScanResultCreator, this.androidScanObjectsConverter, scanSettings, new EmulatedScanFilterMatcher(scanFilterArr), null), new ObservableTransformer<RxBleInternalScanResult, RxBleInternalScanResult>() {
            /* class com.polidea.rxandroidble2.internal.scan.ScanSetupBuilderImplApi21.AnonymousClass1 */

            /* Return type fixed from 'io.reactivex.Observable<com.polidea.rxandroidble2.internal.scan.RxBleInternalScanResult>' to match base method */
            @Override // io.reactivex.ObservableTransformer
            public ObservableSource<RxBleInternalScanResult> apply(Observable<RxBleInternalScanResult> observable) {
                return observable.compose(emulateCallbackType);
            }
        });
    }
}
