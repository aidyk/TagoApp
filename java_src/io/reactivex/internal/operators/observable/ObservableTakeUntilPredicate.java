package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Predicate;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.plugins.RxJavaPlugins;

public final class ObservableTakeUntilPredicate<T> extends AbstractObservableWithUpstream<T, T> {
    final Predicate<? super T> predicate;

    public ObservableTakeUntilPredicate(ObservableSource<T> observableSource, Predicate<? super T> predicate2) {
        super(observableSource);
        this.predicate = predicate2;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super T> observer) {
        this.source.subscribe(new TakeUntilPredicateObserver(observer, this.predicate));
    }

    static final class TakeUntilPredicateObserver<T> implements Observer<T>, Disposable {
        boolean done;
        final Observer<? super T> downstream;
        final Predicate<? super T> predicate;
        Disposable upstream;

        TakeUntilPredicateObserver(Observer<? super T> observer, Predicate<? super T> predicate2) {
            this.downstream = observer;
            this.predicate = predicate2;
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.upstream, disposable)) {
                this.upstream = disposable;
                this.downstream.onSubscribe(this);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.upstream.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.upstream.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (!this.done) {
                this.downstream.onNext(t);
                try {
                    if (this.predicate.test(t)) {
                        this.done = true;
                        this.upstream.dispose();
                        this.downstream.onComplete();
                    }
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    this.upstream.dispose();
                    onError(th);
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (!this.done) {
                this.done = true;
                this.downstream.onError(th);
                return;
            }
            RxJavaPlugins.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (!this.done) {
                this.done = true;
                this.downstream.onComplete();
            }
        }
    }
}
