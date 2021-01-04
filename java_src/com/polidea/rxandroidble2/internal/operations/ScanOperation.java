package com.polidea.rxandroidble2.internal.operations;

import android.os.DeadObjectException;
import com.polidea.rxandroidble2.exceptions.BleException;
import com.polidea.rxandroidble2.exceptions.BleScanException;
import com.polidea.rxandroidble2.internal.QueueOperation;
import com.polidea.rxandroidble2.internal.RxBleLog;
import com.polidea.rxandroidble2.internal.serialization.QueueReleaseInterface;
import com.polidea.rxandroidble2.internal.util.RxBleAdapterWrapper;
import io.reactivex.Emitter;
import io.reactivex.ObservableEmitter;
import io.reactivex.functions.Cancellable;

public abstract class ScanOperation<SCAN_RESULT_TYPE, SCAN_CALLBACK_TYPE> extends QueueOperation<SCAN_RESULT_TYPE> {
    private final RxBleAdapterWrapper rxBleAdapterWrapper;

    /* access modifiers changed from: package-private */
    public abstract SCAN_CALLBACK_TYPE createScanCallback(Emitter<SCAN_RESULT_TYPE> emitter);

    /* access modifiers changed from: package-private */
    public abstract boolean startScan(RxBleAdapterWrapper rxBleAdapterWrapper2, SCAN_CALLBACK_TYPE scan_callback_type);

    /* access modifiers changed from: package-private */
    public abstract void stopScan(RxBleAdapterWrapper rxBleAdapterWrapper2, SCAN_CALLBACK_TYPE scan_callback_type);

    ScanOperation(RxBleAdapterWrapper rxBleAdapterWrapper2) {
        this.rxBleAdapterWrapper = rxBleAdapterWrapper2;
    }

    /* access modifiers changed from: protected */
    @Override // com.polidea.rxandroidble2.internal.QueueOperation
    public final void protectedRun(ObservableEmitter<SCAN_RESULT_TYPE> observableEmitter, QueueReleaseInterface queueReleaseInterface) {
        final SCAN_CALLBACK_TYPE createScanCallback = createScanCallback(observableEmitter);
        try {
            observableEmitter.setCancellable(new Cancellable() {
                /* class com.polidea.rxandroidble2.internal.operations.ScanOperation.AnonymousClass1 */

                /* JADX DEBUG: Multi-variable search result rejected for r0v1, resolved type: com.polidea.rxandroidble2.internal.operations.ScanOperation */
                /* JADX WARN: Multi-variable type inference failed */
                @Override // io.reactivex.functions.Cancellable
                public void cancel() throws Exception {
                    RxBleLog.i("Scan operation is requested to stop.", new Object[0]);
                    ScanOperation.this.stopScan(ScanOperation.this.rxBleAdapterWrapper, createScanCallback);
                }
            });
            RxBleLog.i("Scan operation is requested to start.", new Object[0]);
            if (!startScan(this.rxBleAdapterWrapper, createScanCallback)) {
                observableEmitter.tryOnError(new BleScanException(0));
            }
        } catch (Throwable th) {
            queueReleaseInterface.release();
            throw th;
        }
        queueReleaseInterface.release();
    }

    /* access modifiers changed from: protected */
    @Override // com.polidea.rxandroidble2.internal.QueueOperation
    public BleException provideException(DeadObjectException deadObjectException) {
        return new BleScanException(1, deadObjectException);
    }
}
