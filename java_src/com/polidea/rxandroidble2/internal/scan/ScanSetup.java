package com.polidea.rxandroidble2.internal.scan;

import android.support.annotation.RestrictTo;
import com.polidea.rxandroidble2.internal.operations.Operation;
import io.reactivex.ObservableTransformer;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class ScanSetup {
    public final Operation<RxBleInternalScanResult> scanOperation;
    public final ObservableTransformer<RxBleInternalScanResult, RxBleInternalScanResult> scanOperationBehaviourEmulatorTransformer;

    public ScanSetup(Operation<RxBleInternalScanResult> operation, ObservableTransformer<RxBleInternalScanResult, RxBleInternalScanResult> observableTransformer) {
        this.scanOperation = operation;
        this.scanOperationBehaviourEmulatorTransformer = observableTransformer;
    }
}
