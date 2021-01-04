package io.reactivex.internal.operators.observable;

import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.Scheduler;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.disposables.ResettableConnectable;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.fuseable.HasUpstreamObservableSource;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.observables.ConnectableObservable;
import io.reactivex.plugins.RxJavaPlugins;
import io.reactivex.schedulers.Timed;
import java.util.ArrayList;
import java.util.Collection;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class ObservableReplay<T> extends ConnectableObservable<T> implements HasUpstreamObservableSource<T>, ResettableConnectable {
    static final BufferSupplier DEFAULT_UNBOUNDED_FACTORY = new UnBoundedFactory();
    final BufferSupplier<T> bufferFactory;
    final AtomicReference<ReplayObserver<T>> current;
    final ObservableSource<T> onSubscribe;
    final ObservableSource<T> source;

    /* access modifiers changed from: package-private */
    public interface BufferSupplier<T> {
        ReplayBuffer<T> call();
    }

    /* access modifiers changed from: package-private */
    public interface ReplayBuffer<T> {
        void complete();

        void error(Throwable th);

        void next(T t);

        void replay(InnerDisposable<T> innerDisposable);
    }

    public static <U, R> Observable<R> multicastSelector(Callable<? extends ConnectableObservable<U>> callable, Function<? super Observable<U>, ? extends ObservableSource<R>> function) {
        return RxJavaPlugins.onAssembly(new MulticastReplay(callable, function));
    }

    public static <T> ConnectableObservable<T> observeOn(ConnectableObservable<T> connectableObservable, Scheduler scheduler) {
        return RxJavaPlugins.onAssembly((ConnectableObservable) new Replay(connectableObservable, connectableObservable.observeOn(scheduler)));
    }

    public static <T> ConnectableObservable<T> createFrom(ObservableSource<? extends T> observableSource) {
        return create(observableSource, DEFAULT_UNBOUNDED_FACTORY);
    }

    public static <T> ConnectableObservable<T> create(ObservableSource<T> observableSource, int i) {
        if (i == Integer.MAX_VALUE) {
            return createFrom(observableSource);
        }
        return create(observableSource, new ReplayBufferSupplier(i));
    }

    public static <T> ConnectableObservable<T> create(ObservableSource<T> observableSource, long j, TimeUnit timeUnit, Scheduler scheduler) {
        return create(observableSource, j, timeUnit, scheduler, Integer.MAX_VALUE);
    }

    public static <T> ConnectableObservable<T> create(ObservableSource<T> observableSource, long j, TimeUnit timeUnit, Scheduler scheduler, int i) {
        return create(observableSource, new ScheduledReplaySupplier(i, j, timeUnit, scheduler));
    }

    static <T> ConnectableObservable<T> create(ObservableSource<T> observableSource, BufferSupplier<T> bufferSupplier) {
        AtomicReference atomicReference = new AtomicReference();
        return RxJavaPlugins.onAssembly((ConnectableObservable) new ObservableReplay(new ReplaySource(atomicReference, bufferSupplier), observableSource, atomicReference, bufferSupplier));
    }

    private ObservableReplay(ObservableSource<T> observableSource, ObservableSource<T> observableSource2, AtomicReference<ReplayObserver<T>> atomicReference, BufferSupplier<T> bufferSupplier) {
        this.onSubscribe = observableSource;
        this.source = observableSource2;
        this.current = atomicReference;
        this.bufferFactory = bufferSupplier;
    }

    @Override // io.reactivex.internal.fuseable.HasUpstreamObservableSource
    public ObservableSource<T> source() {
        return this.source;
    }

    @Override // io.reactivex.internal.disposables.ResettableConnectable
    public void resetIf(Disposable disposable) {
        this.current.compareAndSet((ReplayObserver) disposable, null);
    }

    /* access modifiers changed from: protected */
    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super T> observer) {
        this.onSubscribe.subscribe(observer);
    }

    @Override // io.reactivex.observables.ConnectableObservable
    public void connect(Consumer<? super Disposable> consumer) {
        ReplayObserver<T> replayObserver;
        while (true) {
            replayObserver = this.current.get();
            if (replayObserver != null && !replayObserver.isDisposed()) {
                break;
            }
            ReplayObserver<T> replayObserver2 = new ReplayObserver<>(this.bufferFactory.call());
            if (this.current.compareAndSet(replayObserver, replayObserver2)) {
                replayObserver = replayObserver2;
                break;
            }
        }
        boolean z = !replayObserver.shouldConnect.get() && replayObserver.shouldConnect.compareAndSet(false, true);
        try {
            consumer.accept(replayObserver);
            if (z) {
                this.source.subscribe(replayObserver);
            }
        } catch (Throwable th) {
            if (z) {
                replayObserver.shouldConnect.compareAndSet(true, false);
            }
            Exceptions.throwIfFatal(th);
            throw ExceptionHelper.wrapOrThrow(th);
        }
    }

    static final class ReplayObserver<T> extends AtomicReference<Disposable> implements Observer<T>, Disposable {
        static final InnerDisposable[] EMPTY = new InnerDisposable[0];
        static final InnerDisposable[] TERMINATED = new InnerDisposable[0];
        private static final long serialVersionUID = -533785617179540163L;
        final ReplayBuffer<T> buffer;
        boolean done;
        final AtomicReference<InnerDisposable[]> observers = new AtomicReference<>(EMPTY);
        final AtomicBoolean shouldConnect = new AtomicBoolean();

        ReplayObserver(ReplayBuffer<T> replayBuffer) {
            this.buffer = replayBuffer;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.observers.get() == TERMINATED;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.observers.set(TERMINATED);
            DisposableHelper.dispose(this);
        }

        /* access modifiers changed from: package-private */
        public boolean add(InnerDisposable<T> innerDisposable) {
            InnerDisposable[] innerDisposableArr;
            InnerDisposable[] innerDisposableArr2;
            do {
                innerDisposableArr = this.observers.get();
                if (innerDisposableArr == TERMINATED) {
                    return false;
                }
                int length = innerDisposableArr.length;
                innerDisposableArr2 = new InnerDisposable[(length + 1)];
                System.arraycopy(innerDisposableArr, 0, innerDisposableArr2, 0, length);
                innerDisposableArr2[length] = innerDisposable;
            } while (!this.observers.compareAndSet(innerDisposableArr, innerDisposableArr2));
            return true;
        }

        /* access modifiers changed from: package-private */
        public void remove(InnerDisposable<T> innerDisposable) {
            InnerDisposable[] innerDisposableArr;
            InnerDisposable[] innerDisposableArr2;
            do {
                innerDisposableArr = this.observers.get();
                int length = innerDisposableArr.length;
                if (length != 0) {
                    int i = -1;
                    int i2 = 0;
                    while (true) {
                        if (i2 >= length) {
                            break;
                        } else if (innerDisposableArr[i2].equals(innerDisposable)) {
                            i = i2;
                            break;
                        } else {
                            i2++;
                        }
                    }
                    if (i >= 0) {
                        if (length == 1) {
                            innerDisposableArr2 = EMPTY;
                        } else {
                            InnerDisposable[] innerDisposableArr3 = new InnerDisposable[(length - 1)];
                            System.arraycopy(innerDisposableArr, 0, innerDisposableArr3, 0, i);
                            System.arraycopy(innerDisposableArr, i + 1, innerDisposableArr3, i, (length - i) - 1);
                            innerDisposableArr2 = innerDisposableArr3;
                        }
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            } while (!this.observers.compareAndSet(innerDisposableArr, innerDisposableArr2));
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.setOnce(this, disposable)) {
                replay();
            }
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (!this.done) {
                this.buffer.next(t);
                replay();
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (!this.done) {
                this.done = true;
                this.buffer.error(th);
                replayFinal();
                return;
            }
            RxJavaPlugins.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (!this.done) {
                this.done = true;
                this.buffer.complete();
                replayFinal();
            }
        }

        /* access modifiers changed from: package-private */
        public void replay() {
            for (InnerDisposable<T> innerDisposable : this.observers.get()) {
                this.buffer.replay(innerDisposable);
            }
        }

        /* access modifiers changed from: package-private */
        public void replayFinal() {
            for (InnerDisposable<T> innerDisposable : this.observers.getAndSet(TERMINATED)) {
                this.buffer.replay(innerDisposable);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public static final class InnerDisposable<T> extends AtomicInteger implements Disposable {
        private static final long serialVersionUID = 2728361546769921047L;
        volatile boolean cancelled;
        final Observer<? super T> child;
        Object index;
        final ReplayObserver<T> parent;

        InnerDisposable(ReplayObserver<T> replayObserver, Observer<? super T> observer) {
            this.parent = replayObserver;
            this.child = observer;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.cancelled;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (!this.cancelled) {
                this.cancelled = true;
                this.parent.remove(this);
            }
        }

        /* access modifiers changed from: package-private */
        public <U> U index() {
            return (U) this.index;
        }
    }

    static final class UnboundedReplayBuffer<T> extends ArrayList<Object> implements ReplayBuffer<T> {
        private static final long serialVersionUID = 7063189396499112664L;
        volatile int size;

        UnboundedReplayBuffer(int i) {
            super(i);
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.ReplayBuffer
        public void next(T t) {
            add(NotificationLite.next(t));
            this.size++;
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.ReplayBuffer
        public void error(Throwable th) {
            add(NotificationLite.error(th));
            this.size++;
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.ReplayBuffer
        public void complete() {
            add(NotificationLite.complete());
            this.size++;
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.ReplayBuffer
        public void replay(InnerDisposable<T> innerDisposable) {
            if (innerDisposable.getAndIncrement() == 0) {
                Observer<? super T> observer = innerDisposable.child;
                int i = 1;
                while (!innerDisposable.isDisposed()) {
                    int i2 = this.size;
                    Integer num = (Integer) innerDisposable.index();
                    int intValue = num != null ? num.intValue() : 0;
                    while (intValue < i2) {
                        if (!NotificationLite.accept(get(intValue), observer) && !innerDisposable.isDisposed()) {
                            intValue++;
                        } else {
                            return;
                        }
                    }
                    innerDisposable.index = Integer.valueOf(intValue);
                    i = innerDisposable.addAndGet(-i);
                    if (i == 0) {
                        return;
                    }
                }
            }
        }
    }

    /* access modifiers changed from: package-private */
    public static final class Node extends AtomicReference<Node> {
        private static final long serialVersionUID = 245354315435971818L;
        final Object value;

        Node(Object obj) {
            this.value = obj;
        }
    }

    static abstract class BoundedReplayBuffer<T> extends AtomicReference<Node> implements ReplayBuffer<T> {
        private static final long serialVersionUID = 2346567790059478686L;
        int size;
        Node tail;

        /* access modifiers changed from: package-private */
        public Object enterTransform(Object obj) {
            return obj;
        }

        /* access modifiers changed from: package-private */
        public Object leaveTransform(Object obj) {
            return obj;
        }

        /* access modifiers changed from: package-private */
        public abstract void truncate();

        BoundedReplayBuffer() {
            Node node = new Node(null);
            this.tail = node;
            set(node);
        }

        /* access modifiers changed from: package-private */
        public final void addLast(Node node) {
            this.tail.set(node);
            this.tail = node;
            this.size++;
        }

        /* access modifiers changed from: package-private */
        public final void removeFirst() {
            this.size--;
            setFirst((Node) ((Node) get()).get());
        }

        /* access modifiers changed from: package-private */
        public final void trimHead() {
            Node node = (Node) get();
            if (node.value != null) {
                Node node2 = new Node(null);
                node2.lazySet(node.get());
                set(node2);
            }
        }

        /* access modifiers changed from: package-private */
        public final void removeSome(int i) {
            Node node = (Node) get();
            while (i > 0) {
                node = (Node) node.get();
                i--;
                this.size--;
            }
            setFirst(node);
        }

        /* access modifiers changed from: package-private */
        public final void setFirst(Node node) {
            set(node);
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.ReplayBuffer
        public final void next(T t) {
            addLast(new Node(enterTransform(NotificationLite.next(t))));
            truncate();
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.ReplayBuffer
        public final void error(Throwable th) {
            addLast(new Node(enterTransform(NotificationLite.error(th))));
            truncateFinal();
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.ReplayBuffer
        public final void complete() {
            addLast(new Node(enterTransform(NotificationLite.complete())));
            truncateFinal();
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.ReplayBuffer
        public final void replay(InnerDisposable<T> innerDisposable) {
            if (innerDisposable.getAndIncrement() == 0) {
                int i = 1;
                do {
                    Node node = (Node) innerDisposable.index();
                    if (node == null) {
                        node = getHead();
                        innerDisposable.index = node;
                    }
                    while (!innerDisposable.isDisposed()) {
                        Node node2 = (Node) node.get();
                        if (node2 == null) {
                            innerDisposable.index = node;
                            i = innerDisposable.addAndGet(-i);
                        } else if (NotificationLite.accept(leaveTransform(node2.value), innerDisposable.child)) {
                            innerDisposable.index = null;
                            return;
                        } else {
                            node = node2;
                        }
                    }
                    return;
                } while (i != 0);
            }
        }

        /* access modifiers changed from: package-private */
        public void truncateFinal() {
            trimHead();
        }

        /* access modifiers changed from: package-private */
        public final void collect(Collection<? super T> collection) {
            Node head = getHead();
            while (true) {
                head = (Node) head.get();
                if (head != null) {
                    Object leaveTransform = leaveTransform(head.value);
                    if (!NotificationLite.isComplete(leaveTransform) && !NotificationLite.isError(leaveTransform)) {
                        collection.add((Object) NotificationLite.getValue(leaveTransform));
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            }
        }

        /* access modifiers changed from: package-private */
        public boolean hasError() {
            return this.tail.value != null && NotificationLite.isError(leaveTransform(this.tail.value));
        }

        /* access modifiers changed from: package-private */
        public boolean hasCompleted() {
            return this.tail.value != null && NotificationLite.isComplete(leaveTransform(this.tail.value));
        }

        /* access modifiers changed from: package-private */
        public Node getHead() {
            return (Node) get();
        }
    }

    static final class SizeBoundReplayBuffer<T> extends BoundedReplayBuffer<T> {
        private static final long serialVersionUID = -5898283885385201806L;
        final int limit;

        SizeBoundReplayBuffer(int i) {
            this.limit = i;
        }

        /* access modifiers changed from: package-private */
        @Override // io.reactivex.internal.operators.observable.ObservableReplay.BoundedReplayBuffer
        public void truncate() {
            if (this.size > this.limit) {
                removeFirst();
            }
        }
    }

    static final class SizeAndTimeBoundReplayBuffer<T> extends BoundedReplayBuffer<T> {
        private static final long serialVersionUID = 3457957419649567404L;
        final int limit;
        final long maxAge;
        final Scheduler scheduler;
        final TimeUnit unit;

        SizeAndTimeBoundReplayBuffer(int i, long j, TimeUnit timeUnit, Scheduler scheduler2) {
            this.scheduler = scheduler2;
            this.limit = i;
            this.maxAge = j;
            this.unit = timeUnit;
        }

        /* access modifiers changed from: package-private */
        @Override // io.reactivex.internal.operators.observable.ObservableReplay.BoundedReplayBuffer
        public Object enterTransform(Object obj) {
            return new Timed(obj, this.scheduler.now(this.unit), this.unit);
        }

        /* access modifiers changed from: package-private */
        @Override // io.reactivex.internal.operators.observable.ObservableReplay.BoundedReplayBuffer
        public Object leaveTransform(Object obj) {
            return ((Timed) obj).value();
        }

        /* access modifiers changed from: package-private */
        @Override // io.reactivex.internal.operators.observable.ObservableReplay.BoundedReplayBuffer
        public void truncate() {
            long now = this.scheduler.now(this.unit) - this.maxAge;
            Node node = (Node) get();
            Node node2 = (Node) node.get();
            int i = 0;
            while (true) {
                node = node2;
                if (node != null) {
                    if (this.size <= this.limit) {
                        if (((Timed) node.value).time() > now) {
                            break;
                        }
                        i++;
                        this.size--;
                        node2 = (Node) node.get();
                    } else {
                        i++;
                        this.size--;
                        node2 = (Node) node.get();
                    }
                } else {
                    break;
                }
            }
            if (i != 0) {
                setFirst(node);
            }
        }

        /* access modifiers changed from: package-private */
        /* JADX WARNING: Removed duplicated region for block: B:14:? A[RETURN, SYNTHETIC] */
        /* JADX WARNING: Removed duplicated region for block: B:9:0x003e  */
        @Override // io.reactivex.internal.operators.observable.ObservableReplay.BoundedReplayBuffer
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void truncateFinal() {
            /*
                r10 = this;
                io.reactivex.Scheduler r0 = r10.scheduler
                java.util.concurrent.TimeUnit r1 = r10.unit
                long r0 = r0.now(r1)
                long r2 = r10.maxAge
                long r0 = r0 - r2
                java.lang.Object r2 = r10.get()
                io.reactivex.internal.operators.observable.ObservableReplay$Node r2 = (io.reactivex.internal.operators.observable.ObservableReplay.Node) r2
                java.lang.Object r3 = r2.get()
                io.reactivex.internal.operators.observable.ObservableReplay$Node r3 = (io.reactivex.internal.operators.observable.ObservableReplay.Node) r3
                r4 = 0
            L_0x0018:
                r9 = r3
                r3 = r2
                r2 = r9
                if (r2 == 0) goto L_0x003c
                int r5 = r10.size
                r6 = 1
                if (r5 <= r6) goto L_0x003c
                java.lang.Object r5 = r2.value
                io.reactivex.schedulers.Timed r5 = (io.reactivex.schedulers.Timed) r5
                long r7 = r5.time()
                int r5 = (r7 > r0 ? 1 : (r7 == r0 ? 0 : -1))
                if (r5 > 0) goto L_0x003c
                int r4 = r4 + 1
                int r3 = r10.size
                int r3 = r3 - r6
                r10.size = r3
                java.lang.Object r3 = r2.get()
                io.reactivex.internal.operators.observable.ObservableReplay$Node r3 = (io.reactivex.internal.operators.observable.ObservableReplay.Node) r3
                goto L_0x0018
            L_0x003c:
                if (r4 == 0) goto L_0x0041
                r10.setFirst(r3)
            L_0x0041:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.observable.ObservableReplay.SizeAndTimeBoundReplayBuffer.truncateFinal():void");
        }

        /* access modifiers changed from: package-private */
        @Override // io.reactivex.internal.operators.observable.ObservableReplay.BoundedReplayBuffer
        public Node getHead() {
            long now = this.scheduler.now(this.unit) - this.maxAge;
            Node node = (Node) get();
            Object obj = node.get();
            while (true) {
                node = (Node) obj;
                if (node != null) {
                    Timed timed = (Timed) node.value;
                    if (NotificationLite.isComplete(timed.value()) || NotificationLite.isError(timed.value()) || timed.time() > now) {
                        break;
                    }
                    obj = node.get();
                } else {
                    break;
                }
            }
            return node;
        }
    }

    static final class UnBoundedFactory implements BufferSupplier<Object> {
        UnBoundedFactory() {
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.BufferSupplier
        public ReplayBuffer<Object> call() {
            return new UnboundedReplayBuffer(16);
        }
    }

    static final class DisposeConsumer<R> implements Consumer<Disposable> {
        private final ObserverResourceWrapper<R> srw;

        DisposeConsumer(ObserverResourceWrapper<R> observerResourceWrapper) {
            this.srw = observerResourceWrapper;
        }

        public void accept(Disposable disposable) {
            this.srw.setResource(disposable);
        }
    }

    /* access modifiers changed from: package-private */
    public static final class ReplayBufferSupplier<T> implements BufferSupplier<T> {
        private final int bufferSize;

        ReplayBufferSupplier(int i) {
            this.bufferSize = i;
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.BufferSupplier
        public ReplayBuffer<T> call() {
            return new SizeBoundReplayBuffer(this.bufferSize);
        }
    }

    /* access modifiers changed from: package-private */
    public static final class ScheduledReplaySupplier<T> implements BufferSupplier<T> {
        private final int bufferSize;
        private final long maxAge;
        private final Scheduler scheduler;
        private final TimeUnit unit;

        ScheduledReplaySupplier(int i, long j, TimeUnit timeUnit, Scheduler scheduler2) {
            this.bufferSize = i;
            this.maxAge = j;
            this.unit = timeUnit;
            this.scheduler = scheduler2;
        }

        @Override // io.reactivex.internal.operators.observable.ObservableReplay.BufferSupplier
        public ReplayBuffer<T> call() {
            return new SizeAndTimeBoundReplayBuffer(this.bufferSize, this.maxAge, this.unit, this.scheduler);
        }
    }

    /* access modifiers changed from: package-private */
    public static final class ReplaySource<T> implements ObservableSource<T> {
        private final BufferSupplier<T> bufferFactory;
        private final AtomicReference<ReplayObserver<T>> curr;

        ReplaySource(AtomicReference<ReplayObserver<T>> atomicReference, BufferSupplier<T> bufferSupplier) {
            this.curr = atomicReference;
            this.bufferFactory = bufferSupplier;
        }

        @Override // io.reactivex.ObservableSource
        public void subscribe(Observer<? super T> observer) {
            ReplayObserver<T> replayObserver;
            while (true) {
                replayObserver = this.curr.get();
                if (replayObserver != null) {
                    break;
                }
                ReplayObserver<T> replayObserver2 = new ReplayObserver<>(this.bufferFactory.call());
                if (this.curr.compareAndSet(null, replayObserver2)) {
                    replayObserver = replayObserver2;
                    break;
                }
            }
            InnerDisposable<T> innerDisposable = new InnerDisposable<>(replayObserver, observer);
            observer.onSubscribe(innerDisposable);
            replayObserver.add(innerDisposable);
            if (innerDisposable.isDisposed()) {
                replayObserver.remove(innerDisposable);
            } else {
                replayObserver.buffer.replay(innerDisposable);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public static final class MulticastReplay<R, U> extends Observable<R> {
        private final Callable<? extends ConnectableObservable<U>> connectableFactory;
        private final Function<? super Observable<U>, ? extends ObservableSource<R>> selector;

        MulticastReplay(Callable<? extends ConnectableObservable<U>> callable, Function<? super Observable<U>, ? extends ObservableSource<R>> function) {
            this.connectableFactory = callable;
            this.selector = function;
        }

        /* access modifiers changed from: protected */
        @Override // io.reactivex.Observable
        public void subscribeActual(Observer<? super R> observer) {
            try {
                ConnectableObservable connectableObservable = (ConnectableObservable) ObjectHelper.requireNonNull(this.connectableFactory.call(), "The connectableFactory returned a null ConnectableObservable");
                ObservableSource observableSource = (ObservableSource) ObjectHelper.requireNonNull(this.selector.apply(connectableObservable), "The selector returned a null ObservableSource");
                ObserverResourceWrapper observerResourceWrapper = new ObserverResourceWrapper(observer);
                observableSource.subscribe(observerResourceWrapper);
                connectableObservable.connect(new DisposeConsumer(observerResourceWrapper));
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                EmptyDisposable.error(th, observer);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public static final class Replay<T> extends ConnectableObservable<T> {
        private final ConnectableObservable<T> co;
        private final Observable<T> observable;

        Replay(ConnectableObservable<T> connectableObservable, Observable<T> observable2) {
            this.co = connectableObservable;
            this.observable = observable2;
        }

        @Override // io.reactivex.observables.ConnectableObservable
        public void connect(Consumer<? super Disposable> consumer) {
            this.co.connect(consumer);
        }

        /* access modifiers changed from: protected */
        @Override // io.reactivex.Observable
        public void subscribeActual(Observer<? super T> observer) {
            this.observable.subscribe(observer);
        }
    }
}
