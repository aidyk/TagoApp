package com.polidea.rxandroidble2.internal.serialization;

import android.support.annotation.RestrictTo;
import bleshadow.javax.inject.Inject;
import bleshadow.javax.inject.Named;
import com.polidea.rxandroidble2.internal.RxBleLog;
import com.polidea.rxandroidble2.internal.operations.Operation;
import com.polidea.rxandroidble2.internal.util.OperationLogger;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.Scheduler;
import io.reactivex.disposables.Disposables;
import io.reactivex.functions.Action;

public class ClientOperationQueueImpl implements ClientOperationQueue {
    private OperationPriorityFifoBlockingQueue queue = new OperationPriorityFifoBlockingQueue();

    @Inject
    public ClientOperationQueueImpl(@Named("bluetooth_interaction") final Scheduler scheduler) {
        new Thread(new Runnable() {
            /* class com.polidea.rxandroidble2.internal.serialization.ClientOperationQueueImpl.AnonymousClass1 */

            public void run() {
                while (true) {
                    try {
                        FIFORunnableEntry<?> take = ClientOperationQueueImpl.this.queue.take();
                        Operation<T> operation = take.operation;
                        long currentTimeMillis = System.currentTimeMillis();
                        OperationLogger.logOperationStarted(operation);
                        QueueSemaphore queueSemaphore = new QueueSemaphore();
                        take.run(queueSemaphore, scheduler);
                        queueSemaphore.awaitRelease();
                        OperationLogger.logOperationFinished(operation, currentTimeMillis, System.currentTimeMillis());
                    } catch (InterruptedException e) {
                        RxBleLog.e(e, "Error while processing client operation queue", new Object[0]);
                    }
                }
            }
        }).start();
    }

    @Override // com.polidea.rxandroidble2.internal.serialization.ClientOperationQueue
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public <T> Observable<T> queue(final Operation<T> operation) {
        return Observable.create(new ObservableOnSubscribe<T>() {
            /* class com.polidea.rxandroidble2.internal.serialization.ClientOperationQueueImpl.AnonymousClass2 */

            @Override // io.reactivex.ObservableOnSubscribe
            public void subscribe(ObservableEmitter<T> observableEmitter) throws Exception {
                final FIFORunnableEntry fIFORunnableEntry = new FIFORunnableEntry(operation, observableEmitter);
                observableEmitter.setDisposable(Disposables.fromAction(new Action() {
                    /* class com.polidea.rxandroidble2.internal.serialization.ClientOperationQueueImpl.AnonymousClass2.AnonymousClass1 */

                    @Override // io.reactivex.functions.Action
                    public void run() throws Exception {
                        if (ClientOperationQueueImpl.this.queue.remove(fIFORunnableEntry)) {
                            OperationLogger.logOperationRemoved(operation);
                        }
                    }
                }));
                OperationLogger.logOperationQueued(operation);
                ClientOperationQueueImpl.this.queue.add(fIFORunnableEntry);
            }
        });
    }

    @RestrictTo({RestrictTo.Scope.SUBCLASSES})
    private void log(String str, Operation operation) {
        if (RxBleLog.isAtLeast(3)) {
            RxBleLog.d("%8s %s(%d)", str, operation.getClass().getSimpleName(), Integer.valueOf(System.identityHashCode(operation)));
        }
    }
}
