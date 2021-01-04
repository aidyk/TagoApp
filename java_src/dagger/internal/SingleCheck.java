package dagger.internal;

import dagger.Lazy;
import javax.inject.Provider;

public final class SingleCheck<T> implements Provider<T>, Lazy<T> {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final Object UNINITIALIZED = new Object();
    private volatile Object instance = UNINITIALIZED;
    private volatile Provider<T> provider;

    private SingleCheck(Provider<T> provider2) {
        this.provider = provider2;
    }

    @Override // javax.inject.Provider, dagger.Lazy
    public T get() {
        Provider<T> provider2 = this.provider;
        if (this.instance == UNINITIALIZED) {
            this.instance = provider2.get();
            this.provider = null;
        }
        return (T) this.instance;
    }

    public static <P extends Provider<T>, T> Provider<T> provider(P p) {
        return ((p instanceof SingleCheck) || (p instanceof DoubleCheck)) ? p : new SingleCheck((Provider) Preconditions.checkNotNull(p));
    }
}
