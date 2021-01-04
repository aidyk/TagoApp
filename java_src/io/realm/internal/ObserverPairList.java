package io.realm.internal;

import io.realm.internal.ObserverPairList.ObserverPair;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public class ObserverPairList<T extends ObserverPair> {
    private boolean cleared = false;
    private List<T> pairs = new CopyOnWriteArrayList();

    public interface Callback<T extends ObserverPair> {
        void onCalled(T t, Object obj);
    }

    public static abstract class ObserverPair<T, S> {
        protected final S listener;
        final WeakReference<T> observerRef;
        boolean removed = false;

        public ObserverPair(T t, S s) {
            this.listener = s;
            this.observerRef = new WeakReference<>(t);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ObserverPair)) {
                return false;
            }
            ObserverPair observerPair = (ObserverPair) obj;
            if (!this.listener.equals(observerPair.listener) || this.observerRef.get() != observerPair.observerRef.get()) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            T t = this.observerRef.get();
            int i = 0;
            int hashCode = (527 + (t != null ? t.hashCode() : 0)) * 31;
            if (this.listener != null) {
                i = this.listener.hashCode();
            }
            return hashCode + i;
        }
    }

    public void foreach(Callback<T> callback) {
        for (T t : this.pairs) {
            if (!this.cleared) {
                T t2 = t.observerRef.get();
                if (t2 == null) {
                    this.pairs.remove(t);
                } else if (!t.removed) {
                    callback.onCalled(t, t2);
                }
            } else {
                return;
            }
        }
    }

    public boolean isEmpty() {
        return this.pairs.isEmpty();
    }

    public void clear() {
        this.cleared = true;
        this.pairs.clear();
    }

    public void add(T t) {
        if (!this.pairs.contains(t)) {
            this.pairs.add(t);
            t.removed = false;
        }
        if (this.cleared) {
            this.cleared = false;
        }
    }

    public <S, U> void remove(S s, U u) {
        for (T t : this.pairs) {
            if (s == t.observerRef.get() && u.equals(t.listener)) {
                t.removed = true;
                this.pairs.remove(t);
                return;
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void removeByObserver(Object obj) {
        for (T t : this.pairs) {
            T t2 = t.observerRef.get();
            if (t2 == null || t2 == obj) {
                t.removed = true;
                this.pairs.remove(t);
            }
        }
    }

    public int size() {
        return this.pairs.size();
    }
}
