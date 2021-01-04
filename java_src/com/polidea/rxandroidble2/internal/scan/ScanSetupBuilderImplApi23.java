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
public class ScanSetupBuilderImplApi23 implements ScanSetupBuilder {
    private final AndroidScanObjectsConverter androidScanObjectsConverter;
    private final InternalScanResultCreator internalScanResultCreator;
    private final RxBleAdapterWrapper rxBleAdapterWrapper;

    @Inject
    ScanSetupBuilderImplApi23(RxBleAdapterWrapper rxBleAdapterWrapper2, InternalScanResultCreator internalScanResultCreator2, AndroidScanObjectsConverter androidScanObjectsConverter2) {
        this.rxBleAdapterWrapper = rxBleAdapterWrapper2;
        this.internalScanResultCreator = internalScanResultCreator2;
        this.androidScanObjectsConverter = androidScanObjectsConverter2;
    }

    @Override // com.polidea.rxandroidble2.internal.scan.ScanSetupBuilder
    @RequiresApi(api = 21)
    public ScanSetup build(ScanSettings scanSettings, ScanFilter... scanFilterArr) {
        if (scanSettings.getCallbackType() != 1 && scanFilterArr.length == 0) {
            scanFilterArr = new ScanFilter[]{ScanFilter.empty()};
        }
        return new ScanSetup(new ScanOperationApi21(this.rxBleAdapterWrapper, this.internalScanResultCreator, this.androidScanObjectsConverter, scanSettings, new EmulatedScanFilterMatcher(new ScanFilter[0]), scanFilterArr), new ObservableTransformer<RxBleInternalScanResult, RxBleInternalScanResult>() {
            /* class com.polidea.rxandroidble2.internal.scan.ScanSetupBuilderImplApi23.AnonymousClass1 */

            /* Return type fixed from 'io.reactivex.Observable<com.polidea.rxandroidble2.internal.scan.RxBleInternalScanResult>' to match base method */
            @Override // io.reactivex.ObservableTransformer
            public ObservableSource<RxBleInternalScanResult> apply(Observable<RxBleInternalScanResult> observable) {
                return observable;
            }
        });
    }
}
