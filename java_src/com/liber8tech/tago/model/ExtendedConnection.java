package com.liber8tech.tago.model;

import com.facebook.internal.FacebookRequestErrorClassification;
import com.polidea.rxandroidble2.RxBleConnection;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000b\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\r\u001a\u00020\u00052\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\t¨\u0006\u0013"}, d2 = {"Lcom/liber8tech/tago/model/ExtendedConnection;", "", "connection", "Lcom/polidea/rxandroidble2/RxBleConnection;", "isNewestFirmware", "", "(Lcom/polidea/rxandroidble2/RxBleConnection;Z)V", "getConnection", "()Lcom/polidea/rxandroidble2/RxBleConnection;", "()Z", "component1", "component2", "copy", "equals", FacebookRequestErrorClassification.KEY_OTHER, "hashCode", "", "toString", "", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: ExtendedConnection.kt */
public final class ExtendedConnection {
    @NotNull
    private final RxBleConnection connection;
    private final boolean isNewestFirmware;

    @NotNull
    public static /* synthetic */ ExtendedConnection copy$default(ExtendedConnection extendedConnection, RxBleConnection rxBleConnection, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            rxBleConnection = extendedConnection.connection;
        }
        if ((i & 2) != 0) {
            z = extendedConnection.isNewestFirmware;
        }
        return extendedConnection.copy(rxBleConnection, z);
    }

    @NotNull
    public final RxBleConnection component1() {
        return this.connection;
    }

    public final boolean component2() {
        return this.isNewestFirmware;
    }

    @NotNull
    public final ExtendedConnection copy(@NotNull RxBleConnection rxBleConnection, boolean z) {
        Intrinsics.checkParameterIsNotNull(rxBleConnection, "connection");
        return new ExtendedConnection(rxBleConnection, z);
    }

    public boolean equals(@Nullable Object obj) {
        if (this != obj) {
            if (obj instanceof ExtendedConnection) {
                ExtendedConnection extendedConnection = (ExtendedConnection) obj;
                if (Intrinsics.areEqual(this.connection, extendedConnection.connection)) {
                    if (this.isNewestFirmware == extendedConnection.isNewestFirmware) {
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
        int hashCode = (rxBleConnection != null ? rxBleConnection.hashCode() : 0) * 31;
        boolean z = this.isNewestFirmware;
        if (z) {
            z = true;
        }
        int i = z ? 1 : 0;
        int i2 = z ? 1 : 0;
        int i3 = z ? 1 : 0;
        return hashCode + i;
    }

    @NotNull
    public String toString() {
        return "ExtendedConnection(connection=" + this.connection + ", isNewestFirmware=" + this.isNewestFirmware + ")";
    }

    public ExtendedConnection(@NotNull RxBleConnection rxBleConnection, boolean z) {
        Intrinsics.checkParameterIsNotNull(rxBleConnection, "connection");
        this.connection = rxBleConnection;
        this.isNewestFirmware = z;
    }

    @NotNull
    public final RxBleConnection getConnection() {
        return this.connection;
    }

    public final boolean isNewestFirmware() {
        return this.isNewestFirmware;
    }
}
