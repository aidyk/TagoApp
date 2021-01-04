package com.liber8tech.tago.model;

import android.support.v4.app.NotificationCompat;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.polidea.rxandroidble2.RxBleConnection;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\b\b\u0018\u00002\u00020\u0001B%\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0007HÆ\u0003J)\u0010\u0012\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\u0006\u0010\u0016\u001a\u00020\u0014J\t\u0010\u0017\u001a\u00020\u0007HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u001a"}, d2 = {"Lcom/liber8tech/tago/model/ExtendedSyncState;", "", "connection", "Lcom/polidea/rxandroidble2/RxBleConnection;", NotificationCompat.CATEGORY_PROGRESS, "", "battery", "", "(Lcom/polidea/rxandroidble2/RxBleConnection;DI)V", "getBattery", "()I", "getConnection", "()Lcom/polidea/rxandroidble2/RxBleConnection;", "getProgress", "()D", "component1", "component2", "component3", "copy", "equals", "", FacebookRequestErrorClassification.KEY_OTHER, "finished", "hashCode", "toString", "", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: ExtendedSyncState.kt */
public final class ExtendedSyncState {
    private final int battery;
    @Nullable
    private final RxBleConnection connection;
    private final double progress;

    public ExtendedSyncState() {
        this(null, 0.0d, 0, 7, null);
    }

    @NotNull
    public static /* synthetic */ ExtendedSyncState copy$default(ExtendedSyncState extendedSyncState, RxBleConnection rxBleConnection, double d, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            rxBleConnection = extendedSyncState.connection;
        }
        if ((i2 & 2) != 0) {
            d = extendedSyncState.progress;
        }
        if ((i2 & 4) != 0) {
            i = extendedSyncState.battery;
        }
        return extendedSyncState.copy(rxBleConnection, d, i);
    }

    @Nullable
    public final RxBleConnection component1() {
        return this.connection;
    }

    public final double component2() {
        return this.progress;
    }

    public final int component3() {
        return this.battery;
    }

    @NotNull
    public final ExtendedSyncState copy(@Nullable RxBleConnection rxBleConnection, double d, int i) {
        return new ExtendedSyncState(rxBleConnection, d, i);
    }

    public boolean equals(@Nullable Object obj) {
        if (this != obj) {
            if (obj instanceof ExtendedSyncState) {
                ExtendedSyncState extendedSyncState = (ExtendedSyncState) obj;
                if (Intrinsics.areEqual(this.connection, extendedSyncState.connection) && Double.compare(this.progress, extendedSyncState.progress) == 0) {
                    if (this.battery == extendedSyncState.battery) {
                        return true;
                    }
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        RxBleConnection rxBleConnection = this.connection;
        int hashCode = rxBleConnection != null ? rxBleConnection.hashCode() : 0;
        long doubleToLongBits = Double.doubleToLongBits(this.progress);
        return (((hashCode * 31) + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)))) * 31) + this.battery;
    }

    @NotNull
    public String toString() {
        return "ExtendedSyncState(connection=" + this.connection + ", progress=" + this.progress + ", battery=" + this.battery + ")";
    }

    public ExtendedSyncState(@Nullable RxBleConnection rxBleConnection, double d, int i) {
        this.connection = rxBleConnection;
        this.progress = d;
        this.battery = i;
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ExtendedSyncState(RxBleConnection rxBleConnection, double d, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : rxBleConnection, (i2 & 2) != 0 ? 0.0d : d, (i2 & 4) != 0 ? -1 : i);
    }

    public final int getBattery() {
        return this.battery;
    }

    @Nullable
    public final RxBleConnection getConnection() {
        return this.connection;
    }

    public final double getProgress() {
        return this.progress;
    }

    public final boolean finished() {
        return this.progress == 2.0d;
    }
}
