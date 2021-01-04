package com.polidea.rxandroidble2.internal.operations;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.support.annotation.NonNull;
import com.polidea.rxandroidble2.internal.scan.EmulatedScanFilterMatcher;
import com.polidea.rxandroidble2.internal.scan.InternalScanResultCreator;
import com.polidea.rxandroidble2.internal.scan.RxBleInternalScanResult;
import com.polidea.rxandroidble2.internal.util.RxBleAdapterWrapper;
import io.reactivex.Emitter;

public class ScanOperationApi18 extends ScanOperation<RxBleInternalScanResult, BluetoothAdapter.LeScanCallback> {
    @NonNull
    private final EmulatedScanFilterMatcher scanFilterMatcher;
    @NonNull
    private final InternalScanResultCreator scanResultCreator;

    public ScanOperationApi18(@NonNull RxBleAdapterWrapper rxBleAdapterWrapper, @NonNull InternalScanResultCreator internalScanResultCreator, @NonNull EmulatedScanFilterMatcher emulatedScanFilterMatcher) {
        super(rxBleAdapterWrapper);
        this.scanResultCreator = internalScanResultCreator;
        this.scanFilterMatcher = emulatedScanFilterMatcher;
    }

    /* access modifiers changed from: package-private */
    @Override // com.polidea.rxandroidble2.internal.operations.ScanOperation
    public BluetoothAdapter.LeScanCallback createScanCallback(final Emitter<RxBleInternalScanResult> emitter) {
        return new BluetoothAdapter.LeScanCallback() {
            /* class com.polidea.rxandroidble2.internal.operations.ScanOperationApi18.AnonymousClass1 */

            public void onLeScan(BluetoothDevice bluetoothDevice, int i, byte[] bArr) {
                RxBleInternalScanResult create = ScanOperationApi18.this.scanResultCreator.create(bluetoothDevice, i, bArr);
                if (ScanOperationApi18.this.scanFilterMatcher.matches(create)) {
                    emitter.onNext(create);
                }
            }
        };
    }

    /* access modifiers changed from: package-private */
    public boolean startScan(RxBleAdapterWrapper rxBleAdapterWrapper, BluetoothAdapter.LeScanCallback leScanCallback) {
        return rxBleAdapterWrapper.startLegacyLeScan(leScanCallback);
    }

    /* access modifiers changed from: package-private */
    public void stopScan(RxBleAdapterWrapper rxBleAdapterWrapper, BluetoothAdapter.LeScanCallback leScanCallback) {
        rxBleAdapterWrapper.stopLegacyLeScan(leScanCallback);
    }
}
