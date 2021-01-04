package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.functions.BiPredicate;
import io.reactivex.functions.Function;
import io.reactivex.internal.observers.BasicFuseableObserver;

public final class ObservableDistinctUntilChanged<T, K> extends AbstractObservableWithUpstream<T, T> {
    final BiPredicate<? super K, ? super K> comparer;
    final Function<? super T, K> keySelector;

    public ObservableDistinctUntilChanged(ObservableSource<T> observableSource, Function<? super T, K> function, BiPredicate<? super K, ? super K> biPredicate) {
        super(observableSource);
        this.keySelector = function;
        this.comparer = biPredicate;
    }

    /* access modifiers changed from: protected */
    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super T> observer) {
        this.source.subscribe(new DistinctUntilChangedObserver(observer, this.keySelector, this.comparer));
    }

    static final class DistinctUntilChangedObserver<T, K> extends BasicFuseableObserver<T, T> {
        final BiPredicate<? super K, ? super K> comparer;
        boolean hasValue;
        final Function<? super T, K> keySelector;
        K last;

        DistinctUntilChangedObserver(Observer<? super T> observer, Function<? super T, K> function, BiPredicate<? super K, ? super K> biPredicate) {
            super(observer);
            this.keySelector = function;
            this.comparer = biPredicate;
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (!this.done) {
                if (this.sourceMode != 0) {
                    this.downstream.onNext(t);
                    return;
                }
                try {
                    K apply = this.keySelector.apply(t);
                    if (this.hasValue) {
                        boolean test = this.comparer.test(this.last, apply);
                        this.last = apply;
                        if (test) {
                            return;
                        }
                    } else {
                        this.hasValue = true;
                        this.last = apply;
                    }
                    this.downstream.onNext(t);
                } catch (Throwable th) {
                    fail(th);
                }
            }
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            return transitiveBoundaryFusion(i);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [T, java.lang.Object] */
        /* JADX WARNING: Unknown variable types count: 1 */
        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @io.reactivex.annotations.Nullable
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public T poll() throws java.lang.Exception {
            /*
                r4 = this;
            L_0x0000:
                io.reactivex.internal.fuseable.QueueDisposable r0 = r4.qd
                java.lang.Object r0 = r0.poll()
                if (r0 != 0) goto L_0x000a
                r0 = 0
                return r0
            L_0x000a:
                io.reactivex.functions.Function<? super T, K> r1 = r4.keySelector
                java.lang.Object r1 = r1.apply(r0)
                boolean r2 = r4.hasValue
                if (r2 != 0) goto L_0x001a
                r2 = 1
                r4.hasValue = r2
                r4.last = r1
                return r0
            L_0x001a:
                io.reactivex.functions.BiPredicate<? super K, ? super K> r2 = r4.comparer
                K r3 = r4.last
                boolean r2 = r2.test(r3, r1)
                if (r2 != 0) goto L_0x0027
                r4.last = r1
                return r0
            L_0x0027:
                r4.last = r1
                goto L_0x0000
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.observable.ObservableDistinctUntilChanged.DistinctUntilChangedObserver.poll():java.lang.Object");
        }
    }
}
