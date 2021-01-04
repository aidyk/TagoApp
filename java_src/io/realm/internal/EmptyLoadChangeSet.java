package io.realm.internal;

import io.realm.OrderedCollectionChangeSet;
import io.realm.internal.sync.OsSubscription;
import javax.annotation.Nullable;

public class EmptyLoadChangeSet extends OsCollectionChangeSet {
    private static final int[] NO_INDEX_CHANGES = new int[0];
    private static final OrderedCollectionChangeSet.Range[] NO_RANGE_CHANGES = new OrderedCollectionChangeSet.Range[0];

    public EmptyLoadChangeSet(@Nullable OsSubscription osSubscription, boolean z, boolean z2) {
        super(0, z, osSubscription, z2);
    }

    public EmptyLoadChangeSet(@Nullable OsSubscription osSubscription, boolean z) {
        super(0, true, osSubscription, z);
    }

    @Override // io.realm.OrderedCollectionChangeSet, io.realm.internal.OsCollectionChangeSet
    public OrderedCollectionChangeSet.State getState() {
        return OrderedCollectionChangeSet.State.INITIAL;
    }

    @Override // io.realm.OrderedCollectionChangeSet, io.realm.internal.OsCollectionChangeSet
    public int[] getDeletions() {
        return NO_INDEX_CHANGES;
    }

    @Override // io.realm.OrderedCollectionChangeSet, io.realm.internal.OsCollectionChangeSet
    public int[] getInsertions() {
        return NO_INDEX_CHANGES;
    }

    @Override // io.realm.OrderedCollectionChangeSet, io.realm.internal.OsCollectionChangeSet
    public int[] getChanges() {
        return NO_INDEX_CHANGES;
    }

    @Override // io.realm.OrderedCollectionChangeSet, io.realm.internal.OsCollectionChangeSet
    public OrderedCollectionChangeSet.Range[] getDeletionRanges() {
        return NO_RANGE_CHANGES;
    }

    @Override // io.realm.OrderedCollectionChangeSet, io.realm.internal.OsCollectionChangeSet
    public OrderedCollectionChangeSet.Range[] getInsertionRanges() {
        return NO_RANGE_CHANGES;
    }

    @Override // io.realm.OrderedCollectionChangeSet, io.realm.internal.OsCollectionChangeSet
    public OrderedCollectionChangeSet.Range[] getChangeRanges() {
        return NO_RANGE_CHANGES;
    }

    @Override // io.realm.OrderedCollectionChangeSet, io.realm.internal.OsCollectionChangeSet
    public Throwable getError() {
        if (this.subscription == null || this.subscription.getState() != OsSubscription.SubscriptionState.ERROR) {
            return null;
        }
        return this.subscription.getError();
    }

    @Override // io.realm.internal.OsCollectionChangeSet
    public boolean isRemoteDataLoaded() {
        return super.isRemoteDataLoaded();
    }

    @Override // io.realm.OrderedCollectionChangeSet, io.realm.internal.OsCollectionChangeSet
    public boolean isCompleteResult() {
        return isRemoteDataLoaded();
    }

    @Override // io.realm.internal.OsCollectionChangeSet
    public boolean isFirstAsyncCallback() {
        return super.isFirstAsyncCallback();
    }

    @Override // io.realm.internal.OsCollectionChangeSet
    public boolean isEmpty() {
        return this.subscription == null;
    }

    @Override // io.realm.internal.OsCollectionChangeSet
    public String toString() {
        return super.toString();
    }

    @Override // io.realm.internal.OsCollectionChangeSet, io.realm.internal.NativeObject
    public long getNativePtr() {
        return super.getNativePtr();
    }

    @Override // io.realm.internal.OsCollectionChangeSet, io.realm.internal.NativeObject
    public long getNativeFinalizerPtr() {
        return super.getNativeFinalizerPtr();
    }
}
