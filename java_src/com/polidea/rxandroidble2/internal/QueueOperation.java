package com.polidea.rxandroidble2.internal;

import android.os.DeadObjectException;
import android.support.annotation.NonNull;
import com.polidea.rxandroidble2.exceptions.BleException;
import com.polidea.rxandroidble2.internal.operations.Operation;
import com.polidea.rxandroidble2.internal.serialization.QueueReleaseInterface;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;

public abstract class QueueOperation<T> implements Operation<T> {
    /* access modifiers changed from: protected */
    public abstract void protectedRun(ObservableEmitter<T> observableEmitter, QueueReleaseInterface queueReleaseInterface) throws Throwable;

    /* access modifiers changed from: protected */
    public abstract BleException provideException(DeadObjectException deadObjectException);

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(@NonNull Operation<?> operation) {
        return compareTo((Operation) operation);
    }

    @Override // com.polidea.rxandroidble2.internal.operations.Operation
    public final Observable<T> run(final QueueReleaseInterface queueReleaseInterface) {
        return Observable.create(new ObservableOnSubscribe<T>() {
            /* class com.polidea.rxandroidble2.internal.QueueOperation.AnonymousClass1 */

            @Override // io.reactivex.ObservableOnSubscribe
            public void subscribe(ObservableEmitter<T> observableEmitter) {
                try {
                    QueueOperation.this.protectedRun(observableEmitter, queueReleaseInterface);
                } catch (DeadObjectException e) {
                    observableEmitter.tryOnError(QueueOperation.this.provideException(e));
                    RxBleLog.e(e, "QueueOperation terminated with a DeadObjectException", new Object[0]);
                } catch (Throwable th) {
                    observableEmitter.tryOnError(th);
                    RxBleLog.e(th, "QueueOperation terminated with an unexpected exception", new Object[0]);
                }
            }
        });
    }

    @Override // com.polidea.rxandroidble2.internal.operations.Operation
    public Priority definedPriority() {
        return Priority.NORMAL;
    }

    public int compareTo(@NonNull Operation operation) {
        return operation.definedPriority().priority - definedPriority().priority;
    }
}
