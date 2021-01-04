package android.support.v7.widget;

import android.support.v4.util.Pools;
import android.support.v7.widget.OpReorderer;
import android.support.v7.widget.RecyclerView;
import com.google.android.gms.analytics.ecommerce.ProductAction;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* access modifiers changed from: package-private */
public class AdapterHelper implements OpReorderer.Callback {
    private static final boolean DEBUG = false;
    static final int POSITION_TYPE_INVISIBLE = 0;
    static final int POSITION_TYPE_NEW_OR_LAID_OUT = 1;
    private static final String TAG = "AHT";
    final Callback mCallback;
    final boolean mDisableRecycler;
    private int mExistingUpdateTypes;
    Runnable mOnItemProcessedCallback;
    final OpReorderer mOpReorderer;
    final ArrayList<UpdateOp> mPendingUpdates;
    final ArrayList<UpdateOp> mPostponedList;
    private Pools.Pool<UpdateOp> mUpdateOpPool;

    /* access modifiers changed from: package-private */
    public interface Callback {
        RecyclerView.ViewHolder findViewHolder(int i);

        void markViewHoldersUpdated(int i, int i2, Object obj);

        void offsetPositionsForAdd(int i, int i2);

        void offsetPositionsForMove(int i, int i2);

        void offsetPositionsForRemovingInvisible(int i, int i2);

        void offsetPositionsForRemovingLaidOutOrNewView(int i, int i2);

        void onDispatchFirstPass(UpdateOp updateOp);

        void onDispatchSecondPass(UpdateOp updateOp);
    }

    AdapterHelper(Callback callback) {
        this(callback, false);
    }

    AdapterHelper(Callback callback, boolean z) {
        this.mUpdateOpPool = new Pools.SimplePool(30);
        this.mPendingUpdates = new ArrayList<>();
        this.mPostponedList = new ArrayList<>();
        this.mExistingUpdateTypes = 0;
        this.mCallback = callback;
        this.mDisableRecycler = z;
        this.mOpReorderer = new OpReorderer(this);
    }

    /* access modifiers changed from: package-private */
    public AdapterHelper addUpdateOp(UpdateOp... updateOpArr) {
        Collections.addAll(this.mPendingUpdates, updateOpArr);
        return this;
    }

    /* access modifiers changed from: package-private */
    public void reset() {
        recycleUpdateOpsAndClearList(this.mPendingUpdates);
        recycleUpdateOpsAndClearList(this.mPostponedList);
        this.mExistingUpdateTypes = 0;
    }

    /* access modifiers changed from: package-private */
    public void preProcess() {
        this.mOpReorderer.reorderOps(this.mPendingUpdates);
        int size = this.mPendingUpdates.size();
        for (int i = 0; i < size; i++) {
            UpdateOp updateOp = this.mPendingUpdates.get(i);
            int i2 = updateOp.cmd;
            if (i2 == 4) {
                applyUpdate(updateOp);
            } else if (i2 != 8) {
                switch (i2) {
                    case 1:
                        applyAdd(updateOp);
                        break;
                    case 2:
                        applyRemove(updateOp);
                        break;
                }
            } else {
                applyMove(updateOp);
            }
            if (this.mOnItemProcessedCallback != null) {
                this.mOnItemProcessedCallback.run();
            }
        }
        this.mPendingUpdates.clear();
    }

    /* access modifiers changed from: package-private */
    public void consumePostponedUpdates() {
        int size = this.mPostponedList.size();
        for (int i = 0; i < size; i++) {
            this.mCallback.onDispatchSecondPass(this.mPostponedList.get(i));
        }
        recycleUpdateOpsAndClearList(this.mPostponedList);
        this.mExistingUpdateTypes = 0;
    }

    private void applyMove(UpdateOp updateOp) {
        postponeAndUpdateViewHolders(updateOp);
    }

    private void applyRemove(UpdateOp updateOp) {
        char c;
        boolean z;
        int i = updateOp.positionStart;
        int i2 = updateOp.positionStart + updateOp.itemCount;
        int i3 = updateOp.positionStart;
        int i4 = 0;
        char c2 = 65535;
        while (i3 < i2) {
            if (this.mCallback.findViewHolder(i3) != null || canFindInPreLayout(i3)) {
                if (c2 == 0) {
                    dispatchAndUpdateViewHolders(obtainUpdateOp(2, i, i4, null));
                    z = true;
                } else {
                    z = false;
                }
                c = 1;
            } else {
                if (c2 == 1) {
                    postponeAndUpdateViewHolders(obtainUpdateOp(2, i, i4, null));
                    z = true;
                } else {
                    z = false;
                }
                c = 0;
            }
            if (z) {
                i3 -= i4;
                i2 -= i4;
                i4 = 1;
            } else {
                i4++;
            }
            i3++;
            c2 = c;
        }
        if (i4 != updateOp.itemCount) {
            recycleUpdateOp(updateOp);
            updateOp = obtainUpdateOp(2, i, i4, null);
        }
        if (c2 == 0) {
            dispatchAndUpdateViewHolders(updateOp);
        } else {
            postponeAndUpdateViewHolders(updateOp);
        }
    }

    private void applyUpdate(UpdateOp updateOp) {
        int i = updateOp.positionStart;
        int i2 = updateOp.positionStart + updateOp.itemCount;
        char c = 65535;
        int i3 = i;
        int i4 = 0;
        for (int i5 = updateOp.positionStart; i5 < i2; i5++) {
            if (this.mCallback.findViewHolder(i5) != null || canFindInPreLayout(i5)) {
                if (c == 0) {
                    dispatchAndUpdateViewHolders(obtainUpdateOp(4, i3, i4, updateOp.payload));
                    i3 = i5;
                    i4 = 0;
                }
                c = 1;
            } else {
                if (c == 1) {
                    postponeAndUpdateViewHolders(obtainUpdateOp(4, i3, i4, updateOp.payload));
                    i3 = i5;
                    i4 = 0;
                }
                c = 0;
            }
            i4++;
        }
        if (i4 != updateOp.itemCount) {
            Object obj = updateOp.payload;
            recycleUpdateOp(updateOp);
            updateOp = obtainUpdateOp(4, i3, i4, obj);
        }
        if (c == 0) {
            dispatchAndUpdateViewHolders(updateOp);
        } else {
            postponeAndUpdateViewHolders(updateOp);
        }
    }

    private void dispatchAndUpdateViewHolders(UpdateOp updateOp) {
        int i;
        if (updateOp.cmd == 1 || updateOp.cmd == 8) {
            throw new IllegalArgumentException("should not dispatch add or move for pre layout");
        }
        int updatePositionWithPostponed = updatePositionWithPostponed(updateOp.positionStart, updateOp.cmd);
        int i2 = updateOp.positionStart;
        int i3 = updateOp.cmd;
        if (i3 == 2) {
            i = 0;
        } else if (i3 == 4) {
            i = 1;
        } else {
            throw new IllegalArgumentException("op should be remove or update." + updateOp);
        }
        int i4 = updatePositionWithPostponed;
        int i5 = i2;
        int i6 = 1;
        for (int i7 = 1; i7 < updateOp.itemCount; i7++) {
            int updatePositionWithPostponed2 = updatePositionWithPostponed(updateOp.positionStart + (i * i7), updateOp.cmd);
            int i8 = updateOp.cmd;
            if (i8 == 2 ? updatePositionWithPostponed2 == i4 : i8 == 4 && updatePositionWithPostponed2 == i4 + 1) {
                i6++;
            } else {
                UpdateOp obtainUpdateOp = obtainUpdateOp(updateOp.cmd, i4, i6, updateOp.payload);
                dispatchFirstPassAndUpdateViewHolders(obtainUpdateOp, i5);
                recycleUpdateOp(obtainUpdateOp);
                if (updateOp.cmd == 4) {
                    i5 += i6;
                }
                i4 = updatePositionWithPostponed2;
                i6 = 1;
            }
        }
        Object obj = updateOp.payload;
        recycleUpdateOp(updateOp);
        if (i6 > 0) {
            UpdateOp obtainUpdateOp2 = obtainUpdateOp(updateOp.cmd, i4, i6, obj);
            dispatchFirstPassAndUpdateViewHolders(obtainUpdateOp2, i5);
            recycleUpdateOp(obtainUpdateOp2);
        }
    }

    /* access modifiers changed from: package-private */
    public void dispatchFirstPassAndUpdateViewHolders(UpdateOp updateOp, int i) {
        this.mCallback.onDispatchFirstPass(updateOp);
        int i2 = updateOp.cmd;
        if (i2 == 2) {
            this.mCallback.offsetPositionsForRemovingInvisible(i, updateOp.itemCount);
        } else if (i2 == 4) {
            this.mCallback.markViewHoldersUpdated(i, updateOp.itemCount, updateOp.payload);
        } else {
            throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
        }
    }

    private int updatePositionWithPostponed(int i, int i2) {
        int i3;
        int i4;
        for (int size = this.mPostponedList.size() - 1; size >= 0; size--) {
            UpdateOp updateOp = this.mPostponedList.get(size);
            if (updateOp.cmd == 8) {
                if (updateOp.positionStart < updateOp.itemCount) {
                    i4 = updateOp.positionStart;
                    i3 = updateOp.itemCount;
                } else {
                    i4 = updateOp.itemCount;
                    i3 = updateOp.positionStart;
                }
                if (i < i4 || i > i3) {
                    if (i < updateOp.positionStart) {
                        if (i2 == 1) {
                            updateOp.positionStart++;
                            updateOp.itemCount++;
                        } else if (i2 == 2) {
                            updateOp.positionStart--;
                            updateOp.itemCount--;
                        }
                    }
                } else if (i4 == updateOp.positionStart) {
                    if (i2 == 1) {
                        updateOp.itemCount++;
                    } else if (i2 == 2) {
                        updateOp.itemCount--;
                    }
                    i++;
                } else {
                    if (i2 == 1) {
                        updateOp.positionStart++;
                    } else if (i2 == 2) {
                        updateOp.positionStart--;
                    }
                    i--;
                }
            } else if (updateOp.positionStart <= i) {
                if (updateOp.cmd == 1) {
                    i -= updateOp.itemCount;
                } else if (updateOp.cmd == 2) {
                    i += updateOp.itemCount;
                }
            } else if (i2 == 1) {
                updateOp.positionStart++;
            } else if (i2 == 2) {
                updateOp.positionStart--;
            }
        }
        for (int size2 = this.mPostponedList.size() - 1; size2 >= 0; size2--) {
            UpdateOp updateOp2 = this.mPostponedList.get(size2);
            if (updateOp2.cmd == 8) {
                if (updateOp2.itemCount == updateOp2.positionStart || updateOp2.itemCount < 0) {
                    this.mPostponedList.remove(size2);
                    recycleUpdateOp(updateOp2);
                }
            } else if (updateOp2.itemCount <= 0) {
                this.mPostponedList.remove(size2);
                recycleUpdateOp(updateOp2);
            }
        }
        return i;
    }

    private boolean canFindInPreLayout(int i) {
        int size = this.mPostponedList.size();
        for (int i2 = 0; i2 < size; i2++) {
            UpdateOp updateOp = this.mPostponedList.get(i2);
            if (updateOp.cmd == 8) {
                if (findPositionOffset(updateOp.itemCount, i2 + 1) == i) {
                    return true;
                }
            } else if (updateOp.cmd == 1) {
                int i3 = updateOp.positionStart + updateOp.itemCount;
                for (int i4 = updateOp.positionStart; i4 < i3; i4++) {
                    if (findPositionOffset(i4, i2 + 1) == i) {
                        return true;
                    }
                }
                continue;
            } else {
                continue;
            }
        }
        return false;
    }

    private void applyAdd(UpdateOp updateOp) {
        postponeAndUpdateViewHolders(updateOp);
    }

    private void postponeAndUpdateViewHolders(UpdateOp updateOp) {
        this.mPostponedList.add(updateOp);
        int i = updateOp.cmd;
        if (i == 4) {
            this.mCallback.markViewHoldersUpdated(updateOp.positionStart, updateOp.itemCount, updateOp.payload);
        } else if (i != 8) {
            switch (i) {
                case 1:
                    this.mCallback.offsetPositionsForAdd(updateOp.positionStart, updateOp.itemCount);
                    return;
                case 2:
                    this.mCallback.offsetPositionsForRemovingLaidOutOrNewView(updateOp.positionStart, updateOp.itemCount);
                    return;
                default:
                    throw new IllegalArgumentException("Unknown update op type for " + updateOp);
            }
        } else {
            this.mCallback.offsetPositionsForMove(updateOp.positionStart, updateOp.itemCount);
        }
    }

    /* access modifiers changed from: package-private */
    public boolean hasPendingUpdates() {
        return this.mPendingUpdates.size() > 0;
    }

    /* access modifiers changed from: package-private */
    public boolean hasAnyUpdateTypes(int i) {
        return (i & this.mExistingUpdateTypes) != 0;
    }

    /* access modifiers changed from: package-private */
    public int findPositionOffset(int i) {
        return findPositionOffset(i, 0);
    }

    /* access modifiers changed from: package-private */
    public int findPositionOffset(int i, int i2) {
        int size = this.mPostponedList.size();
        while (i2 < size) {
            UpdateOp updateOp = this.mPostponedList.get(i2);
            if (updateOp.cmd == 8) {
                if (updateOp.positionStart == i) {
                    i = updateOp.itemCount;
                } else {
                    if (updateOp.positionStart < i) {
                        i--;
                    }
                    if (updateOp.itemCount <= i) {
                        i++;
                    }
                }
            } else if (updateOp.positionStart > i) {
                continue;
            } else if (updateOp.cmd == 2) {
                if (i < updateOp.positionStart + updateOp.itemCount) {
                    return -1;
                }
                i -= updateOp.itemCount;
            } else if (updateOp.cmd == 1) {
                i += updateOp.itemCount;
            }
            i2++;
        }
        return i;
    }

    /* access modifiers changed from: package-private */
    public boolean onItemRangeChanged(int i, int i2, Object obj) {
        if (i2 < 1) {
            return false;
        }
        this.mPendingUpdates.add(obtainUpdateOp(4, i, i2, obj));
        this.mExistingUpdateTypes |= 4;
        if (this.mPendingUpdates.size() == 1) {
            return true;
        }
        return false;
    }

    /* access modifiers changed from: package-private */
    public boolean onItemRangeInserted(int i, int i2) {
        if (i2 < 1) {
            return false;
        }
        this.mPendingUpdates.add(obtainUpdateOp(1, i, i2, null));
        this.mExistingUpdateTypes |= 1;
        if (this.mPendingUpdates.size() == 1) {
            return true;
        }
        return false;
    }

    /* access modifiers changed from: package-private */
    public boolean onItemRangeRemoved(int i, int i2) {
        if (i2 < 1) {
            return false;
        }
        this.mPendingUpdates.add(obtainUpdateOp(2, i, i2, null));
        this.mExistingUpdateTypes |= 2;
        if (this.mPendingUpdates.size() == 1) {
            return true;
        }
        return false;
    }

    /* access modifiers changed from: package-private */
    public boolean onItemRangeMoved(int i, int i2, int i3) {
        if (i == i2) {
            return false;
        }
        if (i3 == 1) {
            this.mPendingUpdates.add(obtainUpdateOp(8, i, i2, null));
            this.mExistingUpdateTypes |= 8;
            if (this.mPendingUpdates.size() == 1) {
                return true;
            }
            return false;
        }
        throw new IllegalArgumentException("Moving more than 1 item is not supported yet");
    }

    /* access modifiers changed from: package-private */
    public void consumeUpdatesInOnePass() {
        consumePostponedUpdates();
        int size = this.mPendingUpdates.size();
        for (int i = 0; i < size; i++) {
            UpdateOp updateOp = this.mPendingUpdates.get(i);
            int i2 = updateOp.cmd;
            if (i2 == 4) {
                this.mCallback.onDispatchSecondPass(updateOp);
                this.mCallback.markViewHoldersUpdated(updateOp.positionStart, updateOp.itemCount, updateOp.payload);
            } else if (i2 != 8) {
                switch (i2) {
                    case 1:
                        this.mCallback.onDispatchSecondPass(updateOp);
                        this.mCallback.offsetPositionsForAdd(updateOp.positionStart, updateOp.itemCount);
                        break;
                    case 2:
                        this.mCallback.onDispatchSecondPass(updateOp);
                        this.mCallback.offsetPositionsForRemovingInvisible(updateOp.positionStart, updateOp.itemCount);
                        break;
                }
            } else {
                this.mCallback.onDispatchSecondPass(updateOp);
                this.mCallback.offsetPositionsForMove(updateOp.positionStart, updateOp.itemCount);
            }
            if (this.mOnItemProcessedCallback != null) {
                this.mOnItemProcessedCallback.run();
            }
        }
        recycleUpdateOpsAndClearList(this.mPendingUpdates);
        this.mExistingUpdateTypes = 0;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:34:0x0047, code lost:
        continue;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public int applyPendingUpdatesToPosition(int r6) {
        /*
            r5 = this;
            java.util.ArrayList<android.support.v7.widget.AdapterHelper$UpdateOp> r0 = r5.mPendingUpdates
            int r0 = r0.size()
            r1 = 0
        L_0x0007:
            if (r1 >= r0) goto L_0x004a
            java.util.ArrayList<android.support.v7.widget.AdapterHelper$UpdateOp> r2 = r5.mPendingUpdates
            java.lang.Object r2 = r2.get(r1)
            android.support.v7.widget.AdapterHelper$UpdateOp r2 = (android.support.v7.widget.AdapterHelper.UpdateOp) r2
            int r3 = r2.cmd
            r4 = 8
            if (r3 == r4) goto L_0x0034
            switch(r3) {
                case 1: goto L_0x002c;
                case 2: goto L_0x001b;
                default: goto L_0x001a;
            }
        L_0x001a:
            goto L_0x0047
        L_0x001b:
            int r3 = r2.positionStart
            if (r3 > r6) goto L_0x0047
            int r3 = r2.positionStart
            int r4 = r2.itemCount
            int r3 = r3 + r4
            if (r3 <= r6) goto L_0x0028
            r6 = -1
            return r6
        L_0x0028:
            int r2 = r2.itemCount
            int r6 = r6 - r2
            goto L_0x0047
        L_0x002c:
            int r3 = r2.positionStart
            if (r3 > r6) goto L_0x0047
            int r2 = r2.itemCount
            int r6 = r6 + r2
            goto L_0x0047
        L_0x0034:
            int r3 = r2.positionStart
            if (r3 != r6) goto L_0x003b
            int r6 = r2.itemCount
            goto L_0x0047
        L_0x003b:
            int r3 = r2.positionStart
            if (r3 >= r6) goto L_0x0041
            int r6 = r6 + -1
        L_0x0041:
            int r2 = r2.itemCount
            if (r2 > r6) goto L_0x0047
            int r6 = r6 + 1
        L_0x0047:
            int r1 = r1 + 1
            goto L_0x0007
        L_0x004a:
            return r6
            switch-data {1->0x002c, 2->0x001b, }
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.AdapterHelper.applyPendingUpdatesToPosition(int):int");
    }

    /* access modifiers changed from: package-private */
    public boolean hasUpdates() {
        return !this.mPostponedList.isEmpty() && !this.mPendingUpdates.isEmpty();
    }

    /* access modifiers changed from: package-private */
    public static class UpdateOp {
        static final int ADD = 1;
        static final int MOVE = 8;
        static final int POOL_SIZE = 30;
        static final int REMOVE = 2;
        static final int UPDATE = 4;
        int cmd;
        int itemCount;
        Object payload;
        int positionStart;

        UpdateOp(int i, int i2, int i3, Object obj) {
            this.cmd = i;
            this.positionStart = i2;
            this.itemCount = i3;
            this.payload = obj;
        }

        /* access modifiers changed from: package-private */
        public String cmdToString() {
            int i = this.cmd;
            if (i == 4) {
                return "up";
            }
            if (i == 8) {
                return "mv";
            }
            switch (i) {
                case 1:
                    return ProductAction.ACTION_ADD;
                case 2:
                    return "rm";
                default:
                    return "??";
            }
        }

        public String toString() {
            return Integer.toHexString(System.identityHashCode(this)) + "[" + cmdToString() + ",s:" + this.positionStart + "c:" + this.itemCount + ",p:" + this.payload + "]";
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            UpdateOp updateOp = (UpdateOp) obj;
            if (this.cmd != updateOp.cmd) {
                return false;
            }
            if (this.cmd == 8 && Math.abs(this.itemCount - this.positionStart) == 1 && this.itemCount == updateOp.positionStart && this.positionStart == updateOp.itemCount) {
                return true;
            }
            if (this.itemCount != updateOp.itemCount || this.positionStart != updateOp.positionStart) {
                return false;
            }
            if (this.payload != null) {
                if (!this.payload.equals(updateOp.payload)) {
                    return false;
                }
            } else if (updateOp.payload != null) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return (((this.cmd * 31) + this.positionStart) * 31) + this.itemCount;
        }
    }

    @Override // android.support.v7.widget.OpReorderer.Callback
    public UpdateOp obtainUpdateOp(int i, int i2, int i3, Object obj) {
        UpdateOp acquire = this.mUpdateOpPool.acquire();
        if (acquire == null) {
            return new UpdateOp(i, i2, i3, obj);
        }
        acquire.cmd = i;
        acquire.positionStart = i2;
        acquire.itemCount = i3;
        acquire.payload = obj;
        return acquire;
    }

    @Override // android.support.v7.widget.OpReorderer.Callback
    public void recycleUpdateOp(UpdateOp updateOp) {
        if (!this.mDisableRecycler) {
            updateOp.payload = null;
            this.mUpdateOpPool.release(updateOp);
        }
    }

    /* access modifiers changed from: package-private */
    public void recycleUpdateOpsAndClearList(List<UpdateOp> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            recycleUpdateOp(list.get(i));
        }
        list.clear();
    }
}
