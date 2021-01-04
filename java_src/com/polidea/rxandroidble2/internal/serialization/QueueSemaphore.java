package com.polidea.rxandroidble2.internal.serialization;

import com.polidea.rxandroidble2.internal.RxBleLog;
import java.util.concurrent.atomic.AtomicBoolean;

/* access modifiers changed from: package-private */
public class QueueSemaphore implements QueueReleaseInterface, QueueAwaitReleaseInterface {
    private final AtomicBoolean isReleased = new AtomicBoolean(false);

    QueueSemaphore() {
    }

    @Override // com.polidea.rxandroidble2.internal.serialization.QueueAwaitReleaseInterface
    public synchronized void awaitRelease() throws InterruptedException {
        while (!this.isReleased.get()) {
            try {
                wait();
            } catch (InterruptedException e) {
                if (!this.isReleased.get()) {
                    RxBleLog.w(e, "Queue's awaitRelease() has been interrupted abruptly while it wasn't released by the release() method.", new Object[0]);
                }
            }
        }
    }

    @Override // com.polidea.rxandroidble2.internal.serialization.QueueReleaseInterface
    public synchronized void release() {
        if (this.isReleased.compareAndSet(false, true)) {
            notify();
        }
    }
}
