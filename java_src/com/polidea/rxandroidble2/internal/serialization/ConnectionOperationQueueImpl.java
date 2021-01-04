package com.polidea.rxandroidble2.internal.serialization;

import android.support.annotation.RestrictTo;
import bleshadow.javax.inject.Inject;
import bleshadow.javax.inject.Named;
import com.polidea.rxandroidble2.exceptions.BleDisconnectedException;
import com.polidea.rxandroidble2.exceptions.BleException;
import com.polidea.rxandroidble2.internal.RxBleLog;
import com.polidea.rxandroidble2.internal.connection.ConnectionScope;
import com.polidea.rxandroidble2.internal.connection.ConnectionSubscriptionWatcher;
import com.polidea.rxandroidble2.internal.connection.DisconnectionRouterOutput;
import com.polidea.rxandroidble2.internal.operations.Operation;
import com.polidea.rxandroidble2.internal.util.OperationLogger;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.Scheduler;
import io.reactivex.functions.Cancellable;
import io.reactivex.observers.DisposableObserver;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

@ConnectionScope
public class ConnectionOperationQueueImpl implements ConnectionOperationQueue, ConnectionSubscriptionWatcher {
    private final String deviceMacAddress;
    private BleException disconnectionException = null;
    private final DisconnectionRouterOutput disconnectionRouterOutput;
    private DisposableObserver<BleException> disconnectionThrowableSubscription;
    private final OperationPriorityFifoBlockingQueue queue = new OperationPriorityFifoBlockingQueue();
    private final Future<?> runnableFuture;
    private volatile boolean shouldRun = true;

    @Inject
    ConnectionOperationQueueImpl(@Named("mac-address") String str, DisconnectionRouterOutput disconnectionRouterOutput2, @Named("executor_connection_queue") ExecutorService executorService, @Named("bluetooth_interaction") final Scheduler scheduler) {
        this.deviceMacAddress = str;
        this.disconnectionRouterOutput = disconnectionRouterOutput2;
        this.runnableFuture = executorService.submit(new Runnable() {
            /* class com.polidea.rxandroidble2.internal.serialization.ConnectionOperationQueueImpl.AnonymousClass1 */

            public void run() {
                while (true) {
                    if (!ConnectionOperationQueueImpl.this.shouldRun) {
                        break;
                    }
                    try {
                        FIFORunnableEntry<?> take = ConnectionOperationQueueImpl.this.queue.take();
                        Operation<T> operation = take.operation;
                        long currentTimeMillis = System.currentTimeMillis();
                        OperationLogger.logOperationStarted(operation);
                        QueueSemaphore queueSemaphore = new QueueSemaphore();
                        take.run(queueSemaphore, scheduler);
                        queueSemaphore.awaitRelease();
                        OperationLogger.logOperationFinished(operation, currentTimeMillis, System.currentTimeMillis());
                    } catch (InterruptedException e) {
                        synchronized (ConnectionOperationQueueImpl.this) {
                            if (!ConnectionOperationQueueImpl.this.shouldRun) {
                                break;
                            }
                            RxBleLog.e(e, "Error while processing connection operation queue", new Object[0]);
                        }
                    }
                }
                ConnectionOperationQueueImpl.this.flushQueue();
                RxBleLog.d("Terminated.", new Object[0]);
            }
        });
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private synchronized void flushQueue() {
        while (!this.queue.isEmpty()) {
            this.queue.takeNow().operationResultObserver.tryOnError(this.disconnectionException);
        }
    }

    @Override // com.polidea.rxandroidble2.internal.serialization.ClientOperationQueue
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public synchronized <T> Observable<T> queue(final Operation<T> operation) {
        if (!this.shouldRun) {
            return Observable.error(this.disconnectionException);
        }
        return Observable.create(new ObservableOnSubscribe<T>() {
            /* class com.polidea.rxandroidble2.internal.serialization.ConnectionOperationQueueImpl.AnonymousClass2 */

            @Override // io.reactivex.ObservableOnSubscribe
            public void subscribe(ObservableEmitter<T> observableEmitter) throws Exception {
                final FIFORunnableEntry fIFORunnableEntry = new FIFORunnableEntry(operation, observableEmitter);
                observableEmitter.setCancellable(new Cancellable() {
                    /* class com.polidea.rxandroidble2.internal.serialization.ConnectionOperationQueueImpl.AnonymousClass2.AnonymousClass1 */

                    @Override // io.reactivex.functions.Cancellable
                    public void cancel() throws Exception {
                        if (ConnectionOperationQueueImpl.this.queue.remove(fIFORunnableEntry)) {
                            OperationLogger.logOperationRemoved(operation);
                        }
                    }
                });
                OperationLogger.logOperationQueued(operation);
                ConnectionOperationQueueImpl.this.queue.add(fIFORunnableEntry);
            }
        });
    }

    @Override // com.polidea.rxandroidble2.internal.serialization.ConnectionOperationQueue
    public synchronized void terminate(BleException bleException) {
        if (this.disconnectionException == null) {
            RxBleLog.i("Connection operations queue to be terminated (" + this.deviceMacAddress + ')', new Object[0]);
            this.shouldRun = false;
            this.disconnectionException = bleException;
            this.runnableFuture.cancel(true);
        }
    }

    @Override // com.polidea.rxandroidble2.internal.connection.ConnectionSubscriptionWatcher
    public void onConnectionSubscribed() {
        this.disconnectionThrowableSubscription = (DisposableObserver) this.disconnectionRouterOutput.asValueOnlyObservable().subscribeWith(new DisposableObserver<BleException>() {
            /* class com.polidea.rxandroidble2.internal.serialization.ConnectionOperationQueueImpl.AnonymousClass3 */

            @Override // io.reactivex.Observer
            public void onComplete() {
            }

            @Override // io.reactivex.Observer
            public void onError(Throwable th) {
            }

            public void onNext(BleException bleException) {
                ConnectionOperationQueueImpl.this.terminate(bleException);
            }
        });
    }

    @Override // com.polidea.rxandroidble2.internal.connection.ConnectionSubscriptionWatcher
    public void onConnectionUnsubscribed() {
        this.disconnectionThrowableSubscription.dispose();
        this.disconnectionThrowableSubscription = null;
        terminate(new BleDisconnectedException(this.deviceMacAddress, -1));
    }
}
