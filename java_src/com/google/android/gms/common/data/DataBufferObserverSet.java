package com.google.android.gms.common.data;

import com.google.android.gms.common.data.DataBufferObserver;
import java.util.HashSet;
import java.util.Iterator;

public final class DataBufferObserverSet implements DataBufferObserver, DataBufferObserver.Observable {
    private HashSet<DataBufferObserver> zall = new HashSet<>();

    public final boolean hasObservers() {
        return !this.zall.isEmpty();
    }

    public final void clear() {
        this.zall.clear();
    }

    @Override // com.google.android.gms.common.data.DataBufferObserver.Observable
    public final void addObserver(DataBufferObserver dataBufferObserver) {
        this.zall.add(dataBufferObserver);
    }

    @Override // com.google.android.gms.common.data.DataBufferObserver.Observable
    public final void removeObserver(DataBufferObserver dataBufferObserver) {
        this.zall.remove(dataBufferObserver);
    }

    @Override // com.google.android.gms.common.data.DataBufferObserver
    public final void onDataChanged() {
        Iterator<DataBufferObserver> it2 = this.zall.iterator();
        while (it2.hasNext()) {
            it2.next().onDataChanged();
        }
    }

    @Override // com.google.android.gms.common.data.DataBufferObserver
    public final void onDataRangeChanged(int i, int i2) {
        Iterator<DataBufferObserver> it2 = this.zall.iterator();
        while (it2.hasNext()) {
            it2.next().onDataRangeChanged(i, i2);
        }
    }

    @Override // com.google.android.gms.common.data.DataBufferObserver
    public final void onDataRangeInserted(int i, int i2) {
        Iterator<DataBufferObserver> it2 = this.zall.iterator();
        while (it2.hasNext()) {
            it2.next().onDataRangeInserted(i, i2);
        }
    }

    @Override // com.google.android.gms.common.data.DataBufferObserver
    public final void onDataRangeRemoved(int i, int i2) {
        Iterator<DataBufferObserver> it2 = this.zall.iterator();
        while (it2.hasNext()) {
            it2.next().onDataRangeRemoved(i, i2);
        }
    }

    @Override // com.google.android.gms.common.data.DataBufferObserver
    public final void onDataRangeMoved(int i, int i2, int i3) {
        Iterator<DataBufferObserver> it2 = this.zall.iterator();
        while (it2.hasNext()) {
            it2.next().onDataRangeMoved(i, i2, i3);
        }
    }
}
