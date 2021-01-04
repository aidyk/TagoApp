package com.polidea.rxandroidble2.internal.serialization;

import java.util.Iterator;
import java.util.concurrent.PriorityBlockingQueue;

/* access modifiers changed from: package-private */
public class OperationPriorityFifoBlockingQueue {
    private final PriorityBlockingQueue<FIFORunnableEntry> q = new PriorityBlockingQueue<>();

    OperationPriorityFifoBlockingQueue() {
    }

    public void add(FIFORunnableEntry fIFORunnableEntry) {
        this.q.add(fIFORunnableEntry);
    }

    public FIFORunnableEntry<?> take() throws InterruptedException {
        return this.q.take();
    }

    public FIFORunnableEntry<?> takeNow() {
        return this.q.poll();
    }

    public boolean isEmpty() {
        return this.q.isEmpty();
    }

    public boolean remove(FIFORunnableEntry fIFORunnableEntry) {
        Iterator<FIFORunnableEntry> it2 = this.q.iterator();
        while (it2.hasNext()) {
            FIFORunnableEntry next = it2.next();
            if (next == fIFORunnableEntry) {
                return this.q.remove(next);
            }
        }
        return false;
    }
}
