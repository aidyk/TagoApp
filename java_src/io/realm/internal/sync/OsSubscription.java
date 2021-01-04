package io.realm.internal.sync;

import io.realm.RealmChangeListener;
import io.realm.internal.KeepMember;
import io.realm.internal.NativeObject;
import io.realm.internal.ObserverPairList;
import io.realm.internal.OsResults;
import javax.annotation.Nullable;

public class OsSubscription implements NativeObject {
    private static final long nativeFinalizerPtr = nativeGetFinalizerPtr();
    private final long nativePtr;
    protected final ObserverPairList<SubscriptionObserverPair> observerPairs = new ObserverPairList<>();

    private static native long nativeCreate(long j, String str);

    private static native Object nativeGetError(long j);

    private static native long nativeGetFinalizerPtr();

    private static native int nativeGetState(long j);

    private native void nativeStartListening(long j);

    private native void nativeStopListening(long j);

    public enum SubscriptionState {
        ERROR(-1),
        CREATING(2),
        PENDING(0),
        COMPLETE(1),
        INVALIDATED(3);
        
        private final int val;

        private SubscriptionState(int i) {
            this.val = i;
        }

        public static SubscriptionState fromInternalValue(int i) {
            SubscriptionState[] values = values();
            for (SubscriptionState subscriptionState : values) {
                if (subscriptionState.val == i) {
                    return subscriptionState;
                }
            }
            throw new IllegalArgumentException("Unknown value: " + i);
        }
    }

    /* access modifiers changed from: private */
    public static class SubscriptionObserverPair extends ObserverPairList.ObserverPair<OsSubscription, RealmChangeListener<OsSubscription>> {
        public SubscriptionObserverPair(OsSubscription osSubscription, RealmChangeListener<OsSubscription> realmChangeListener) {
            super(osSubscription, realmChangeListener);
        }

        public void onChange(OsSubscription osSubscription) {
            ((RealmChangeListener) this.listener).onChange(osSubscription);
        }
    }

    private static class Callback implements ObserverPairList.Callback<SubscriptionObserverPair> {
        private Callback() {
        }

        public void onCalled(SubscriptionObserverPair subscriptionObserverPair, Object obj) {
            subscriptionObserverPair.onChange((OsSubscription) obj);
        }
    }

    public OsSubscription(OsResults osResults, String str) {
        this.nativePtr = nativeCreate(osResults.getNativePtr(), str);
    }

    @Override // io.realm.internal.NativeObject
    public long getNativePtr() {
        return this.nativePtr;
    }

    @Override // io.realm.internal.NativeObject
    public long getNativeFinalizerPtr() {
        return nativeFinalizerPtr;
    }

    public SubscriptionState getState() {
        return SubscriptionState.fromInternalValue(nativeGetState(this.nativePtr));
    }

    @Nullable
    public Throwable getError() {
        return (Throwable) nativeGetError(this.nativePtr);
    }

    public void addChangeListener(RealmChangeListener<OsSubscription> realmChangeListener) {
        if (this.observerPairs.isEmpty()) {
            nativeStartListening(this.nativePtr);
        }
        this.observerPairs.add(new SubscriptionObserverPair(this, realmChangeListener));
    }

    public void removeChangeListener(RealmChangeListener<OsSubscription> realmChangeListener) {
        this.observerPairs.remove(this, realmChangeListener);
        if (this.observerPairs.isEmpty()) {
            nativeStopListening(this.nativePtr);
        }
    }

    @KeepMember
    private void notifyChangeListeners() {
        this.observerPairs.foreach(new Callback());
    }
}
