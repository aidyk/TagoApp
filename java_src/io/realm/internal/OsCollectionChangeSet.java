package io.realm.internal;

import io.realm.OrderedCollectionChangeSet;
import io.realm.internal.sync.OsSubscription;
import java.util.Arrays;
import javax.annotation.Nullable;

public class OsCollectionChangeSet implements OrderedCollectionChangeSet, NativeObject {
    public static final int MAX_ARRAY_LENGTH = 2147483639;
    public static final int TYPE_DELETION = 0;
    public static final int TYPE_INSERTION = 1;
    public static final int TYPE_MODIFICATION = 2;
    private static long finalizerPtr = nativeGetFinalizerPtr();
    private final boolean firstAsyncCallback;
    protected final boolean isPartialRealm;
    private final long nativePtr;
    protected final OsSubscription subscription;

    private static native long nativeGetFinalizerPtr();

    private static native int[] nativeGetIndices(long j, int i);

    private static native int[] nativeGetRanges(long j, int i);

    public OsCollectionChangeSet(long j, boolean z) {
        this(j, z, null, false);
    }

    public OsCollectionChangeSet(long j, boolean z, @Nullable OsSubscription osSubscription, boolean z2) {
        this.nativePtr = j;
        this.firstAsyncCallback = z;
        this.subscription = osSubscription;
        this.isPartialRealm = z2;
        NativeContext.dummyContext.addReference(this);
    }

    @Override // io.realm.OrderedCollectionChangeSet
    public OrderedCollectionChangeSet.State getState() {
        throw new UnsupportedOperationException("This method should be overridden in a subclass");
    }

    @Override // io.realm.OrderedCollectionChangeSet
    public int[] getDeletions() {
        return nativeGetIndices(this.nativePtr, 0);
    }

    @Override // io.realm.OrderedCollectionChangeSet
    public int[] getInsertions() {
        return nativeGetIndices(this.nativePtr, 1);
    }

    @Override // io.realm.OrderedCollectionChangeSet
    public int[] getChanges() {
        return nativeGetIndices(this.nativePtr, 2);
    }

    @Override // io.realm.OrderedCollectionChangeSet
    public OrderedCollectionChangeSet.Range[] getDeletionRanges() {
        return longArrayToRangeArray(nativeGetRanges(this.nativePtr, 0));
    }

    @Override // io.realm.OrderedCollectionChangeSet
    public OrderedCollectionChangeSet.Range[] getInsertionRanges() {
        return longArrayToRangeArray(nativeGetRanges(this.nativePtr, 1));
    }

    @Override // io.realm.OrderedCollectionChangeSet
    public OrderedCollectionChangeSet.Range[] getChangeRanges() {
        return longArrayToRangeArray(nativeGetRanges(this.nativePtr, 2));
    }

    @Override // io.realm.OrderedCollectionChangeSet
    public Throwable getError() {
        if (this.subscription == null || this.subscription.getState() != OsSubscription.SubscriptionState.ERROR) {
            return null;
        }
        return this.subscription.getError();
    }

    @Override // io.realm.OrderedCollectionChangeSet
    public boolean isCompleteResult() {
        throw new UnsupportedOperationException("This method should be overridden in a subclass");
    }

    public boolean isRemoteDataLoaded() {
        if (!this.isPartialRealm) {
            return true;
        }
        if (this.subscription != null && this.subscription.getState() == OsSubscription.SubscriptionState.COMPLETE) {
            return true;
        }
        return false;
    }

    public boolean isFirstAsyncCallback() {
        return this.firstAsyncCallback;
    }

    public boolean isEmpty() {
        return this.nativePtr == 0;
    }

    private OrderedCollectionChangeSet.Range[] longArrayToRangeArray(int[] iArr) {
        if (iArr == null) {
            return new OrderedCollectionChangeSet.Range[0];
        }
        OrderedCollectionChangeSet.Range[] rangeArr = new OrderedCollectionChangeSet.Range[(iArr.length / 2)];
        for (int i = 0; i < rangeArr.length; i++) {
            int i2 = i * 2;
            rangeArr[i] = new OrderedCollectionChangeSet.Range(iArr[i2], iArr[i2 + 1]);
        }
        return rangeArr;
    }

    public String toString() {
        if (this.nativePtr == 0) {
            return "Change set is empty.";
        }
        return "Deletion Ranges: " + Arrays.toString(getDeletionRanges()) + "\nInsertion Ranges: " + Arrays.toString(getInsertionRanges()) + "\nChange Ranges: " + Arrays.toString(getChangeRanges());
    }

    @Override // io.realm.internal.NativeObject
    public long getNativePtr() {
        return this.nativePtr;
    }

    @Override // io.realm.internal.NativeObject
    public long getNativeFinalizerPtr() {
        return finalizerPtr;
    }
}
