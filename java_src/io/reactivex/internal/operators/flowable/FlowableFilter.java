package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.functions.Predicate;
import io.reactivex.internal.fuseable.ConditionalSubscriber;
import io.reactivex.internal.subscribers.BasicFuseableConditionalSubscriber;
import io.reactivex.internal.subscribers.BasicFuseableSubscriber;
import org.reactivestreams.Subscriber;

public final class FlowableFilter<T> extends AbstractFlowableWithUpstream<T, T> {
    final Predicate<? super T> predicate;

    public FlowableFilter(Flowable<T> flowable, Predicate<? super T> predicate2) {
        super(flowable);
        this.predicate = predicate2;
    }

    /* access modifiers changed from: protected */
    @Override // io.reactivex.Flowable
    public void subscribeActual(Subscriber<? super T> subscriber) {
        if (subscriber instanceof ConditionalSubscriber) {
            this.source.subscribe((FlowableSubscriber) new FilterConditionalSubscriber((ConditionalSubscriber) subscriber, this.predicate));
        } else {
            this.source.subscribe((FlowableSubscriber) new FilterSubscriber(subscriber, this.predicate));
        }
    }

    static final class FilterSubscriber<T> extends BasicFuseableSubscriber<T, T> implements ConditionalSubscriber<T> {
        final Predicate<? super T> filter;

        FilterSubscriber(Subscriber<? super T> subscriber, Predicate<? super T> predicate) {
            super(subscriber);
            this.filter = predicate;
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
                this.downstream.onNext(null);
                return true;
            }
            try {
                boolean test = this.filter.test(t);
                if (test) {
                    this.downstream.onNext(t);
                }
                return test;
            } catch (Throwable th) {
                fail(th);
                return true;
            }
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            return transitiveBoundaryFusion(i);
        }

        /* JADX WARN: Type inference failed for: r2v0, types: [T, java.lang.Object] */
        /* JADX WARNING: Unknown variable types count: 1 */
        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @io.reactivex.annotations.Nullable
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public T poll() throws java.lang.Exception {
            /*
                r4 = this;
                io.reactivex.internal.fuseable.QueueSubscription r0 = r4.qs
                io.reactivex.functions.Predicate<? super T> r1 = r4.filter
            L_0x0004:
                java.lang.Object r2 = r0.poll()
                if (r2 != 0) goto L_0x000c
                r0 = 0
                return r0
            L_0x000c:
                boolean r3 = r1.test(r2)
                if (r3 == 0) goto L_0x0013
                return r2
            L_0x0013:
                int r2 = r4.sourceMode
                r3 = 2
                if (r2 != r3) goto L_0x0004
                r2 = 1
                r0.request(r2)
                goto L_0x0004
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableFilter.FilterSubscriber.poll():java.lang.Object");
        }
    }

    static final class FilterConditionalSubscriber<T> extends BasicFuseableConditionalSubscriber<T, T> {
        final Predicate<? super T> filter;

        FilterConditionalSubscriber(ConditionalSubscriber<? super T> conditionalSubscriber, Predicate<? super T> predicate) {
            super(conditionalSubscriber);
            this.filter = predicate;
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
                return this.downstream.tryOnNext(null);
            }
            try {
                if (!this.filter.test(t) || !this.downstream.tryOnNext(t)) {
                    return false;
                }
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

        /* JADX WARN: Type inference failed for: r2v0, types: [T, java.lang.Object] */
        /* JADX WARNING: Unknown variable types count: 1 */
        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @io.reactivex.annotations.Nullable
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public T poll() throws java.lang.Exception {
            /*
                r4 = this;
                io.reactivex.internal.fuseable.QueueSubscription r0 = r4.qs
                io.reactivex.functions.Predicate<? super T> r1 = r4.filter
            L_0x0004:
                java.lang.Object r2 = r0.poll()
                if (r2 != 0) goto L_0x000c
                r0 = 0
                return r0
            L_0x000c:
                boolean r3 = r1.test(r2)
                if (r3 == 0) goto L_0x0013
                return r2
            L_0x0013:
                int r2 = r4.sourceMode
                r3 = 2
                if (r2 != r3) goto L_0x0004
                r2 = 1
                r0.request(r2)
                goto L_0x0004
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableFilter.FilterConditionalSubscriber.poll():java.lang.Object");
        }
    }
}
