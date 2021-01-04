package io.fabric.sdk.android.services.concurrency;

import io.fabric.sdk.android.services.concurrency.Dependency;
import io.fabric.sdk.android.services.concurrency.PriorityProvider;
import io.fabric.sdk.android.services.concurrency.Task;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Queue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;

public class DependencyPriorityBlockingQueue<E extends Dependency & Task & PriorityProvider> extends PriorityBlockingQueue<E> {
    static final int PEEK = 1;
    static final int POLL = 2;
    static final int POLL_WITH_TIMEOUT = 3;
    static final int TAKE = 0;
    final Queue<E> blockedQueue = new LinkedList();
    private final ReentrantLock lock = new ReentrantLock();

    @Override // java.util.concurrent.BlockingQueue, java.util.concurrent.PriorityBlockingQueue
    public E take() throws InterruptedException {
        return get(0, null, null);
    }

    @Override // java.util.Queue, java.util.concurrent.PriorityBlockingQueue
    public E peek() {
        try {
            return get(1, null, null);
        } catch (InterruptedException unused) {
            return null;
        }
    }

    @Override // java.util.concurrent.BlockingQueue, java.util.concurrent.PriorityBlockingQueue
    public E poll(long j, TimeUnit timeUnit) throws InterruptedException {
        return get(3, Long.valueOf(j), timeUnit);
    }

    @Override // java.util.Queue, java.util.concurrent.PriorityBlockingQueue
    public E poll() {
        try {
            return get(2, null, null);
        } catch (InterruptedException unused) {
            return null;
        }
    }

    public int size() {
        try {
            this.lock.lock();
            return this.blockedQueue.size() + super.size();
        } finally {
            this.lock.unlock();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.concurrent.PriorityBlockingQueue
    public <T> T[] toArray(T[] tArr) {
        try {
            this.lock.lock();
            return (T[]) concatenate(super.toArray(tArr), this.blockedQueue.toArray(tArr));
        } finally {
            this.lock.unlock();
        }
    }

    public Object[] toArray() {
        try {
            this.lock.lock();
            return concatenate(super.toArray(), this.blockedQueue.toArray());
        } finally {
            this.lock.unlock();
        }
    }

    @Override // java.util.concurrent.BlockingQueue, java.util.concurrent.PriorityBlockingQueue
    public int drainTo(Collection<? super E> collection) {
        try {
            this.lock.lock();
            int drainTo = super.drainTo(collection) + this.blockedQueue.size();
            while (!this.blockedQueue.isEmpty()) {
                collection.add(this.blockedQueue.poll());
            }
            return drainTo;
        } finally {
            this.lock.unlock();
        }
    }

    @Override // java.util.concurrent.BlockingQueue, java.util.concurrent.PriorityBlockingQueue
    public int drainTo(Collection<? super E> collection, int i) {
        try {
            this.lock.lock();
            int drainTo = super.drainTo(collection, i);
            while (!this.blockedQueue.isEmpty() && drainTo <= i) {
                collection.add(this.blockedQueue.poll());
                drainTo++;
            }
            return drainTo;
        } finally {
            this.lock.unlock();
        }
    }

    public boolean contains(Object obj) {
        try {
            this.lock.lock();
            return super.contains(obj) || this.blockedQueue.contains(obj);
        } finally {
            this.lock.unlock();
        }
    }

    public void clear() {
        try {
            this.lock.lock();
            this.blockedQueue.clear();
            super.clear();
        } finally {
            this.lock.unlock();
        }
    }

    public boolean remove(Object obj) {
        try {
            this.lock.lock();
            return super.remove(obj) || this.blockedQueue.remove(obj);
        } finally {
            this.lock.unlock();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        try {
            this.lock.lock();
            return this.blockedQueue.removeAll(collection) | super.removeAll(collection);
        } finally {
            this.lock.unlock();
        }
    }

    /* access modifiers changed from: package-private */
    public E performOperation(int i, Long l, TimeUnit timeUnit) throws InterruptedException {
        switch (i) {
            case 0:
                return (E) ((Dependency) super.take());
            case 1:
                return (E) ((Dependency) super.peek());
            case 2:
                return (E) ((Dependency) super.poll());
            case 3:
                return (E) ((Dependency) super.poll(l.longValue(), timeUnit));
            default:
                return null;
        }
    }

    /* access modifiers changed from: package-private */
    public boolean offerBlockedResult(int i, E e) {
        try {
            this.lock.lock();
            if (i == 1) {
                super.remove(e);
            }
            return this.blockedQueue.offer(e);
        } finally {
            this.lock.unlock();
        }
    }

    /* access modifiers changed from: package-private */
    public E get(int i, Long l, TimeUnit timeUnit) throws InterruptedException {
        E performOperation;
        while (true) {
            performOperation = performOperation(i, l, timeUnit);
            if (performOperation == null || canProcess(performOperation)) {
                return performOperation;
            }
            offerBlockedResult(i, performOperation);
        }
        return performOperation;
    }

    /* access modifiers changed from: package-private */
    public boolean canProcess(E e) {
        return e.areDependenciesMet();
    }

    public void recycleBlockedQueue() {
        try {
            this.lock.lock();
            Iterator<E> it2 = this.blockedQueue.iterator();
            while (it2.hasNext()) {
                E next = it2.next();
                if (canProcess(next)) {
                    super.offer(next);
                    it2.remove();
                }
            }
        } finally {
            this.lock.unlock();
        }
    }

    /* access modifiers changed from: package-private */
    public <T> T[] concatenate(T[] tArr, T[] tArr2) {
        int length = tArr.length;
        int length2 = tArr2.length;
        T[] tArr3 = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), length + length2));
        System.arraycopy(tArr, 0, tArr3, 0, length);
        System.arraycopy(tArr2, 0, tArr3, length, length2);
        return tArr3;
    }
}
