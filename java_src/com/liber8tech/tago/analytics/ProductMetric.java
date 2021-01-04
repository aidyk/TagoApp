package com.liber8tech.tago.analytics;

import com.facebook.internal.FacebookRequestErrorClassification;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/liber8tech/tago/analytics/ProductMetric;", "", "index", "", "value", "(II)V", "getIndex", "()I", "getValue", "component1", "component2", "copy", "equals", "", FacebookRequestErrorClassification.KEY_OTHER, "hashCode", "toString", "", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: ProductMetric.kt */
public final class ProductMetric {
    private final int index;
    private final int value;

    @NotNull
    public static /* synthetic */ ProductMetric copy$default(ProductMetric productMetric, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = productMetric.index;
        }
        if ((i3 & 2) != 0) {
            i2 = productMetric.value;
        }
        return productMetric.copy(i, i2);
    }

    public final int component1() {
        return this.index;
    }

    public final int component2() {
        return this.value;
    }

    @NotNull
    public final ProductMetric copy(int i, int i2) {
        return new ProductMetric(i, i2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this != obj) {
            if (obj instanceof ProductMetric) {
                ProductMetric productMetric = (ProductMetric) obj;
                if (this.index == productMetric.index) {
                    if (this.value == productMetric.value) {
                        return true;
                    }
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        return (this.index * 31) + this.value;
    }

    @NotNull
    public String toString() {
        return "ProductMetric(index=" + this.index + ", value=" + this.value + ")";
    }

    public ProductMetric(int i, int i2) {
        this.index = i;
        this.value = i2;
    }

    public final int getIndex() {
        return this.index;
    }

    public final int getValue() {
        return this.value;
    }
}
