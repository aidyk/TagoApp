package com.polidea.rxandroidble2.internal.serialization;

import android.support.annotation.NonNull;
import com.polidea.rxandroidble2.internal.RxBleLog;
import com.polidea.rxandroidble2.internal.operations.Operation;
import io.reactivex.ObservableEmitter;
import io.reactivex.Observer;
import io.reactivex.Scheduler;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicLong;

/* access modifiers changed from: package-private */
public class FIFORunnableEntry<T> implements Comparable<FIFORunnableEntry> {
    private static final AtomicLong SEQUENCE = new AtomicLong(0);
    final Operation<T> operation;
    final ObservableEmitter<T> operationResultObserver;
    private final long seqNum = SEQUENCE.getAndIncrement();

    FIFORunnableEntry(Operation<T> operation2, ObservableEmitter<T> observableEmitter) {
        this.operation = operation2;
        this.operationResultObserver = observableEmitter;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r0v0, resolved type: com.polidea.rxandroidble2.internal.operations.Operation<T> */
    /* JADX WARN: Multi-variable type inference failed */
    public int compareTo(@NonNull FIFORunnableEntry fIFORunnableEntry) {
        int compareTo = this.operation.compareTo(fIFORunnableEntry.operation);
        if (compareTo != 0 || fIFORunnableEntry.operation == this.operation) {
            return compareTo;
        }
        return this.seqNum < fIFORunnableEntry.seqNum ? -1 : 1;
    }

    public void run(QueueSemaphore queueSemaphore, Scheduler scheduler) {
        if (this.operationResultObserver.isDisposed()) {
            RxBleLog.d("The operation was about to be run but the observer had been already disposed: " + this.operation, new Object[0]);
            queueSemaphore.release();
            return;
        }
        this.operation.run(queueSemaphore).subscribeOn(scheduler).unsubscribeOn(scheduler).subscribe(new Observer<T>() {
            /* class com.polidea.rxandroidble2.internal.serialization.FIFORunnableEntry.AnonymousClass1 */

            @Override // io.reactivex.Observer
            public void onSubscribe(Disposable disposable) {
                FIFORunnableEntry.this.operationResultObserver.setDisposable(disposable);
            }

            @Override // io.reactivex.Observer
            public void onNext(T t) {
                FIFORunnableEntry.this.operationResultObserver.onNext(t);
            }

            @Override // io.reactivex.Observer
            public void onError(Throwable th) {
                FIFORunnableEntry.this.operationResultObserver.tryOnError(th);
            }

            @Override // io.reactivex.Observer
            public void onComplete() {
                FIFORunnableEntry.this.operationResultObserver.onComplete();
            }
        });
    }
}
