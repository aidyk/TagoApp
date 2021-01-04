package com.polidea.rxandroidble2.internal.operations;

import android.bluetooth.le.ScanCallback;
import android.bluetooth.le.ScanResult;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import com.polidea.rxandroidble2.exceptions.BleScanException;
import com.polidea.rxandroidble2.internal.RxBleLog;
import com.polidea.rxandroidble2.internal.scan.AndroidScanObjectsConverter;
import com.polidea.rxandroidble2.internal.scan.EmulatedScanFilterMatcher;
import com.polidea.rxandroidble2.internal.scan.InternalScanResultCreator;
import com.polidea.rxandroidble2.internal.scan.RxBleInternalScanResult;
import com.polidea.rxandroidble2.internal.util.RxBleAdapterWrapper;
import com.polidea.rxandroidble2.scan.ScanFilter;
import com.polidea.rxandroidble2.scan.ScanSettings;
import io.reactivex.Emitter;
import java.util.List;

@RequiresApi(api = 21)
public class ScanOperationApi21 extends ScanOperation<RxBleInternalScanResult, ScanCallback> {
    @NonNull
    private final AndroidScanObjectsConverter androidScanObjectsConverter;
    @NonNull
    private final EmulatedScanFilterMatcher emulatedScanFilterMatcher;
    @NonNull
    private final InternalScanResultCreator internalScanResultCreator;
    @Nullable
    private final ScanFilter[] scanFilters;
    @NonNull
    private final ScanSettings scanSettings;

    public ScanOperationApi21(@NonNull RxBleAdapterWrapper rxBleAdapterWrapper, @NonNull InternalScanResultCreator internalScanResultCreator2, @NonNull AndroidScanObjectsConverter androidScanObjectsConverter2, @NonNull ScanSettings scanSettings2, @NonNull EmulatedScanFilterMatcher emulatedScanFilterMatcher2, @Nullable ScanFilter[] scanFilterArr) {
        super(rxBleAdapterWrapper);
        this.internalScanResultCreator = internalScanResultCreator2;
        this.scanSettings = scanSettings2;
        this.emulatedScanFilterMatcher = emulatedScanFilterMatcher2;
        this.scanFilters = scanFilterArr;
        this.androidScanObjectsConverter = androidScanObjectsConverter2;
    }

    /* access modifiers changed from: package-private */
    @Override // com.polidea.rxandroidble2.internal.operations.ScanOperation
    public ScanCallback createScanCallback(final Emitter<RxBleInternalScanResult> emitter) {
        return new ScanCallback() {
            /* class com.polidea.rxandroidble2.internal.operations.ScanOperationApi21.AnonymousClass1 */

            public void onScanResult(int i, ScanResult scanResult) {
                RxBleInternalScanResult create = ScanOperationApi21.this.internalScanResultCreator.create(i, scanResult);
                if (ScanOperationApi21.this.emulatedScanFilterMatcher.matches(create)) {
                    emitter.onNext(create);
                }
            }

            @Override // android.bluetooth.le.ScanCallback
            public void onBatchScanResults(List<ScanResult> list) {
                for (ScanResult scanResult : list) {
                    RxBleInternalScanResult create = ScanOperationApi21.this.internalScanResultCreator.create(scanResult);
                    if (ScanOperationApi21.this.emulatedScanFilterMatcher.matches(create)) {
                        emitter.onNext(create);
                    }
                }
            }

            public void onScanFailed(int i) {
                emitter.onError(new BleScanException(ScanOperationApi21.errorCodeToBleErrorCode(i)));
            }
        };
    }

    /* access modifiers changed from: package-private */
    public boolean startScan(RxBleAdapterWrapper rxBleAdapterWrapper, ScanCallback scanCallback) {
        rxBleAdapterWrapper.startLeScan(this.androidScanObjectsConverter.toNativeFilters(this.scanFilters), this.androidScanObjectsConverter.toNativeSettings(this.scanSettings), scanCallback);
        return true;
    }

    /* access modifiers changed from: package-private */
    public void stopScan(RxBleAdapterWrapper rxBleAdapterWrapper, ScanCallback scanCallback) {
        rxBleAdapterWrapper.stopLeScan(scanCallback);
    }

    /* access modifiers changed from: private */
    public static int errorCodeToBleErrorCode(int i) {
        switch (i) {
            case 1:
                return 5;
            case 2:
                return 6;
            case 3:
                return 7;
            case 4:
                return 8;
            case 5:
                return 9;
            default:
                RxBleLog.w("Encountered unknown scanning error code: %d -> check android.bluetooth.le.ScanCallback", new Object[0]);
                return Integer.MAX_VALUE;
        }
    }
}
