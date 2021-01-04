package com.liber8tech.tago.analytics;

import com.facebook.internal.FacebookRequestErrorClassification;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0004\b\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0013"}, d2 = {"Lcom/liber8tech/tago/analytics/Dimension;", "", "index", "", "value", "", "(ILjava/lang/String;)V", "getIndex", "()I", "getValue", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", FacebookRequestErrorClassification.KEY_OTHER, "hashCode", "toString", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: Dimension.kt */
public final class Dimension {
    private final int index;
    @NotNull
    private final String value;

    @NotNull
    public static /* synthetic */ Dimension copy$default(Dimension dimension, int i, String str, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = dimension.index;
        }
        if ((i2 & 2) != 0) {
            str = dimension.value;
        }
        return dimension.copy(i, str);
    }

    public final int component1() {
        return this.index;
    }

    @NotNull
    public final String component2() {
        return this.value;
    }

    @NotNull
    public final Dimension copy(int i, @NotNull String str) {
        Intrinsics.checkParameterIsNotNull(str, "value");
        return new Dimension(i, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this != obj) {
            if (obj instanceof Dimension) {
                Dimension dimension = (Dimension) obj;
                if (!(this.index == dimension.index) || !Intrinsics.areEqual(this.value, dimension.value)) {
                    return false;
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        int i = this.index * 31;
        String str = this.value;
        return i + (str != null ? str.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "Dimension(index=" + this.index + ", value=" + this.value + ")";
    }

    public Dimension(int i, @NotNull String str) {
        Intrinsics.checkParameterIsNotNull(str, "value");
        this.index = i;
        this.value = str;
    }

    public final int getIndex() {
        return this.index;
    }

    @NotNull
    public final String getValue() {
        return this.value;
    }
}
