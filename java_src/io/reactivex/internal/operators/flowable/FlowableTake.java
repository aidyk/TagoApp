package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicBoolean;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

public final class FlowableTake<T> extends AbstractFlowableWithUpstream<T, T> {
    final long limit;

    public FlowableTake(Flowable<T> flowable, long j) {
        super(flowable);
        this.limit = j;
    }

    /* access modifiers changed from: protected */
    @Override // io.reactivex.Flowable
    public void subscribeActual(Subscriber<? super T> subscriber) {
        this.source.subscribe((FlowableSubscriber) new TakeSubscriber(subscriber, this.limit));
    }

    static final class TakeSubscriber<T> extends AtomicBoolean implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = -5636543848937116287L;
        boolean done;
        final Subscriber<? super T> downstream;
        final long limit;
        long remaining;
        Subscription upstream;

        TakeSubscriber(Subscriber<? super T> subscriber, long j) {
            this.downstream = subscriber;
            this.limit = j;
            this.remaining = j;
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.upstream, subscription)) {
                this.upstream = subscription;
                if (this.limit == 0) {
                    subscription.cancel();
                    this.done = true;
                    EmptySubscription.complete(this.downstream);
                    return;
                }
                this.downstream.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.done) {
                long j = this.remaining;
                this.remaining = j - 1;
                if (j > 0) {
                    boolean z = this.remaining == 0;
                    this.downstream.onNext(t);
                    if (z) {
                        this.upstream.cancel();
                        onComplete();
                    }
                }
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (!this.done) {
                this.done = true;
                this.upstream.cancel();
                this.downstream.onError(th);
                return;
            }
            RxJavaPlugins.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.done) {
                this.done = true;
                this.downstream.onComplete();
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                if (get() || !compareAndSet(false, true) || j < this.limit) {
                    this.upstream.request(j);
                } else {
                    this.upstream.request(Long.MAX_VALUE);
                }
            }
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.upstream.cancel();
        }
    }
}
