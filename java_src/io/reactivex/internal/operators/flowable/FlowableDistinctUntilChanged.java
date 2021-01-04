package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.functions.BiPredicate;
import io.reactivex.functions.Function;
import io.reactivex.internal.fuseable.ConditionalSubscriber;
import io.reactivex.internal.subscribers.BasicFuseableConditionalSubscriber;
import io.reactivex.internal.subscribers.BasicFuseableSubscriber;
import org.reactivestreams.Subscriber;

public final class FlowableDistinctUntilChanged<T, K> extends AbstractFlowableWithUpstream<T, T> {
    final BiPredicate<? super K, ? super K> comparer;
    final Function<? super T, K> keySelector;

    public FlowableDistinctUntilChanged(Flowable<T> flowable, Function<? super T, K> function, BiPredicate<? super K, ? super K> biPredicate) {
        super(flowable);
        this.keySelector = function;
        this.comparer = biPredicate;
    }

    /* access modifiers changed from: protected */
    @Override // io.reactivex.Flowable
    public void subscribeActual(Subscriber<? super T> subscriber) {
        if (subscriber instanceof ConditionalSubscriber) {
            this.source.subscribe((FlowableSubscriber) new DistinctUntilChangedConditionalSubscriber((ConditionalSubscriber) subscriber, this.keySelector, this.comparer));
        } else {
            this.source.subscribe((FlowableSubscriber) new DistinctUntilChangedSubscriber(subscriber, this.keySelector, this.comparer));
        }
    }

    static final class DistinctUntilChangedSubscriber<T, K> extends BasicFuseableSubscriber<T, T> implements ConditionalSubscriber<T> {
        final BiPredicate<? super K, ? super K> comparer;
        boolean hasValue;
        final Function<? super T, K> keySelector;
        K last;

        DistinctUntilChangedSubscriber(Subscriber<? super T> subscriber, Function<? super T, K> function, BiPredicate<? super K, ? super K> biPredicate) {
            super(subscriber);
            this.keySelector = function;
            this.comparer = biPredicate;
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!tryOnNext(t)) {
                this.upstream.request(1);
            }
        }

        @Override // io.reactivex.internal.fuseable.ConditionalSubscriber
        public boolean tryOnNext(T t) {
            if (this.done) {
                return false;
            }
            if (this.sourceMode != 0) {
                this.downstream.onNext(t);
                return true;
            }
            try {
                K apply = this.keySelector.apply(t);
                if (this.hasValue) {
                    boolean test = this.comparer.test(this.last, apply);
                    this.last = apply;
                    if (test) {
                        return false;
                    }
                } else {
                    this.hasValue = true;
                    this.last = apply;
                }
                this.downstream.onNext(t);
                return true;
            } catch (Throwable th) {
                fail(th);
                return true;
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
                r5 = this;
            L_0x0000:
                io.reactivex.internal.fuseable.QueueSubscription r0 = r5.qs
                java.lang.Object r0 = r0.poll()
                if (r0 != 0) goto L_0x000a
                r0 = 0
                return r0
            L_0x000a:
                io.reactivex.functions.Function<? super T, K> r1 = r5.keySelector
                java.lang.Object r1 = r1.apply(r0)
                boolean r2 = r5.hasValue
                r3 = 1
                if (r2 != 0) goto L_0x001a
                r5.hasValue = r3
                r5.last = r1
                return r0
            L_0x001a:
                io.reactivex.functions.BiPredicate<? super K, ? super K> r2 = r5.comparer
                K r4 = r5.last
                boolean r2 = r2.test(r4, r1)
                if (r2 != 0) goto L_0x0027
                r5.last = r1
                return r0
            L_0x0027:
                r5.last = r1
                int r0 = r5.sourceMode
                if (r0 == r3) goto L_0x0000
                org.reactivestreams.Subscription r0 = r5.upstream
                r1 = 1
                r0.request(r1)
                goto L_0x0000
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableDistinctUntilChanged.DistinctUntilChangedSubscriber.poll():java.lang.Object");
        }
    }

    static final class DistinctUntilChangedConditionalSubscriber<T, K> extends BasicFuseableConditionalSubscriber<T, T> {
        final BiPredicate<? super K, ? super K> comparer;
        boolean hasValue;
        final Function<? super T, K> keySelector;
        K last;

        DistinctUntilChangedConditionalSubscriber(ConditionalSubscriber<? super T> conditionalSubscriber, Function<? super T, K> function, BiPredicate<? super K, ? super K> biPredicate) {
            super(conditionalSubscriber);
            this.keySelector = function;
            this.comparer = biPredicate;
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!tryOnNext(t)) {
                this.upstream.request(1);
            }
        }

        @Override // io.reactivex.internal.fuseable.ConditionalSubscriber
        public boolean tryOnNext(T t) {
            if (this.done) {
                return false;
            }
            if (this.sourceMode != 0) {
                return this.downstream.tryOnNext(t);
            }
            try {
                K apply = this.keySelector.apply(t);
                if (this.hasValue) {
                    boolean test = this.comparer.test(this.last, apply);
                    this.last = apply;
                    if (test) {
                        return false;
                    }
                } else {
                    this.hasValue = true;
                    this.last = apply;
                }
                this.downstream.onNext(t);
                return true;
            } catch (Throwable th) {
                fail(th);
                return true;
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
                r5 = this;
            L_0x0000:
                io.reactivex.internal.fuseable.QueueSubscription r0 = r5.qs
                java.lang.Object r0 = r0.poll()
                if (r0 != 0) goto L_0x000a
                r0 = 0
                return r0
            L_0x000a:
                io.reactivex.functions.Function<? super T, K> r1 = r5.keySelector
                java.lang.Object r1 = r1.apply(r0)
                boolean r2 = r5.hasValue
                r3 = 1
                if (r2 != 0) goto L_0x001a
                r5.hasValue = r3
                r5.last = r1
                return r0
            L_0x001a:
                io.reactivex.functions.BiPredicate<? super K, ? super K> r2 = r5.comparer
                K r4 = r5.last
                boolean r2 = r2.test(r4, r1)
                if (r2 != 0) goto L_0x0027
                r5.last = r1
                return r0
            L_0x0027:
                r5.last = r1
                int r0 = r5.sourceMode
                if (r0 == r3) goto L_0x0000
                org.reactivestreams.Subscription r0 = r5.upstream
                r1 = 1
                r0.request(r1)
                goto L_0x0000
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableDistinctUntilChanged.DistinctUntilChangedConditionalSubscriber.poll():java.lang.Object");
        }
    }
}
