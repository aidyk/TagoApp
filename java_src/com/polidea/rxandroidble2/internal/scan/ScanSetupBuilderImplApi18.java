package com.polidea.rxandroidble2.internal.scan;

import android.support.annotation.RestrictTo;
import bleshadow.javax.inject.Inject;
import com.polidea.rxandroidble2.internal.operations.ScanOperationApi18;
import com.polidea.rxandroidble2.internal.util.RxBleAdapterWrapper;
import com.polidea.rxandroidble2.scan.ScanFilter;
import com.polidea.rxandroidble2.scan.ScanSettings;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.ObservableTransformer;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class ScanSetupBuilderImplApi18 implements ScanSetupBuilder {
    private final InternalScanResultCreator internalScanResultCreator;
    private final RxBleAdapterWrapper rxBleAdapterWrapper;
    private final ScanSettingsEmulator scanSettingsEmulator;

    @Inject
    ScanSetupBuilderImplApi18(RxBleAdapterWrapper rxBleAdapterWrapper2, InternalScanResultCreator internalScanResultCreator2, ScanSettingsEmulator scanSettingsEmulator2) {
        this.rxBleAdapterWrapper = rxBleAdapterWrapper2;
        this.internalScanResultCreator = internalScanResultCreator2;
        this.scanSettingsEmulator = scanSettingsEmulator2;
    }

    @Override // com.polidea.rxandroidble2.internal.scan.ScanSetupBuilder
    public ScanSetup build(ScanSettings scanSettings, ScanFilter... scanFilterArr) {
        final ObservableTransformer<RxBleInternalScanResult, RxBleInternalScanResult> emulateScanMode = this.scanSettingsEmulator.emulateScanMode(scanSettings.getScanMode());
        final ObservableTransformer<RxBleInternalScanResult, RxBleInternalScanResult> emulateCallbackType = this.scanSettingsEmulator.emulateCallbackType(scanSettings.getCallbackType());
        return new ScanSetup(new ScanOperationApi18(this.rxBleAdapterWrapper, this.internalScanResultCreator, new EmulatedScanFilterMatcher(scanFilterArr)), new ObservableTransformer<RxBleInternalScanResult, RxBleInternalScanResult>() {
            /* class com.polidea.rxandroidble2.internal.scan.ScanSetupBuilderImplApi18.AnonymousClass1 */

            /* Return type fixed from 'io.reactivex.Observable<com.polidea.rxandroidble2.internal.scan.RxBleInternalScanResult>' to match base method */
            @Override // io.reactivex.ObservableTransformer
            public ObservableSource<RxBleInternalScanResult> apply(Observable<RxBleInternalScanResult> observable) {
                return observable.compose(emulateScanMode).compose(emulateCallbackType);
            }
        });
    }
}
