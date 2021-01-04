package com.liber8tech.tago.model;

import android.support.v4.app.NotificationCompat;
import com.facebook.internal.FacebookRequestErrorClassification;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\b\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\u0006\u0010\u0011\u001a\u00020\u000fJ\t\u0010\u0012\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0015"}, d2 = {"Lcom/liber8tech/tago/model/SyncState;", "", NotificationCompat.CATEGORY_PROGRESS, "", "battery", "", "(DI)V", "getBattery", "()I", "getProgress", "()D", "component1", "component2", "copy", "equals", "", FacebookRequestErrorClassification.KEY_OTHER, "finished", "hashCode", "toString", "", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: SyncState.kt */
public final class SyncState {
    private final int battery;
    private final double progress;

    public SyncState() {
        this(0.0d, 0, 3, null);
    }

    @NotNull
    public static /* synthetic */ SyncState copy$default(SyncState syncState, double d, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            d = syncState.progress;
        }
        if ((i2 & 2) != 0) {
            i = syncState.battery;
        }
        return syncState.copy(d, i);
    }

    public final double component1() {
        return this.progress;
    }

    public final int component2() {
        return this.battery;
    }

    @NotNull
    public final SyncState copy(double d, int i) {
        return new SyncState(d, i);
    }

    public boolean equals(@Nullable Object obj) {
        if (this != obj) {
            if (obj instanceof SyncState) {
                SyncState syncState = (SyncState) obj;
                if (Double.compare(this.progress, syncState.progress) == 0) {
                    if (this.battery == syncState.battery) {
                        return true;
                    }
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.progress);
        return (((int) (doubleToLongBits ^ (doubleToLongBits >>> 32))) * 31) + this.battery;
    }

    @NotNull
    public String toString() {
        return "SyncState(progress=" + this.progress + ", battery=" + this.battery + ")";
    }

    public SyncState(double d, int i) {
        this.progress = d;
        this.battery = i;
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ SyncState(double d, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0.0d : d, (i2 & 2) != 0 ? -1 : i);
    }

    public final int getBattery() {
        return this.battery;
    }

    public final double getProgress() {
        return this.progress;
    }

    public final boolean finished() {
        return this.progress == 2.0d;
    }
}
