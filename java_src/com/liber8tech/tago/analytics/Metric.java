package com.liber8tech.tago.analytics;

import com.facebook.internal.FacebookRequestErrorClassification;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Lcom/liber8tech/tago/analytics/Metric;", "", "index", "", "metric", "", "(IF)V", "getIndex", "()I", "getMetric", "()F", "component1", "component2", "copy", "equals", "", FacebookRequestErrorClassification.KEY_OTHER, "hashCode", "toString", "", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: Metric.kt */
public final class Metric {
    private final int index;
    private final float metric;

    @NotNull
    public static /* synthetic */ Metric copy$default(Metric metric2, int i, float f, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = metric2.index;
        }
        if ((i2 & 2) != 0) {
            f = metric2.metric;
        }
        return metric2.copy(i, f);
    }

    public final int component1() {
        return this.index;
    }

    public final float component2() {
        return this.metric;
    }

    @NotNull
    public final Metric copy(int i, float f) {
        return new Metric(i, f);
    }

    public boolean equals(@Nullable Object obj) {
        if (this != obj) {
            if (obj instanceof Metric) {
                Metric metric2 = (Metric) obj;
                if (!(this.index == metric2.index) || Float.compare(this.metric, metric2.metric) != 0) {
                    return false;
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        return (this.index * 31) + Float.floatToIntBits(this.metric);
    }

    @NotNull
    public String toString() {
        return "Metric(index=" + this.index + ", metric=" + this.metric + ")";
    }

    public Metric(int i, float f) {
        this.index = i;
        this.metric = f;
    }

    public final int getIndex() {
        return this.index;
    }

    public final float getMetric() {
        return this.metric;
    }
}
