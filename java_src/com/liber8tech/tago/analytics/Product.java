package com.liber8tech.tago.analytics;

import com.facebook.internal.FacebookRequestErrorClassification;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0006\n\u0002\b#\n\u0002\u0010\u000b\n\u0002\b\u0004\b\b\u0018\u00002\u00020\u0001B\u0001\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0012J\u000b\u0010%\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010&\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0002\u0010\u001eJ\u000b\u0010'\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010,\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010-\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010.\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0002\u0010\u001eJ\u0010\u0010/\u001a\u0004\u0018\u00010\u000fHÆ\u0003¢\u0006\u0002\u0010!J\u0001\u00100\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u00101J\u0013\u00102\u001a\u0002032\b\u00104\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00105\u001a\u00020\rHÖ\u0001J\t\u00106\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0014R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0014R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0013\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0014R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0014R\u0015\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\n\n\u0002\u0010\u001f\u001a\u0004\b\u001d\u0010\u001eR\u0015\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\n\n\u0002\u0010\"\u001a\u0004\b \u0010!R\u0015\u0010\u0010\u001a\u0004\u0018\u00010\r¢\u0006\n\n\u0002\u0010\u001f\u001a\u0004\b#\u0010\u001eR\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\u0014¨\u00067"}, d2 = {"Lcom/liber8tech/tago/analytics/Product;", "", "brand", "", "category", "couponCode", "customDimension", "Lcom/liber8tech/tago/analytics/Dimension;", "customMetric", "Lcom/liber8tech/tago/analytics/ProductMetric;", "id", "name", "position", "", "price", "", "quantity", "variant", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/liber8tech/tago/analytics/Dimension;Lcom/liber8tech/tago/analytics/ProductMetric;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/String;)V", "getBrand", "()Ljava/lang/String;", "getCategory", "getCouponCode", "getCustomDimension", "()Lcom/liber8tech/tago/analytics/Dimension;", "getCustomMetric", "()Lcom/liber8tech/tago/analytics/ProductMetric;", "getId", "getName", "getPosition", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getPrice", "()Ljava/lang/Double;", "Ljava/lang/Double;", "getQuantity", "getVariant", "component1", "component10", "component11", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/liber8tech/tago/analytics/Dimension;Lcom/liber8tech/tago/analytics/ProductMetric;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/String;)Lcom/liber8tech/tago/analytics/Product;", "equals", "", FacebookRequestErrorClassification.KEY_OTHER, "hashCode", "toString", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: Product.kt */
public final class Product {
    @Nullable
    private final String brand;
    @Nullable
    private final String category;
    @Nullable
    private final String couponCode;
    @Nullable
    private final Dimension customDimension;
    @Nullable
    private final ProductMetric customMetric;
    @Nullable
    private final String id;
    @Nullable
    private final String name;
    @Nullable
    private final Integer position;
    @Nullable
    private final Double price;
    @Nullable
    private final Integer quantity;
    @Nullable
    private final String variant;

    public Product() {
        this(null, null, null, null, null, null, null, null, null, null, null, 2047, null);
    }

    @NotNull
    public static /* synthetic */ Product copy$default(Product product, String str, String str2, String str3, Dimension dimension, ProductMetric productMetric, String str4, String str5, Integer num, Double d, Integer num2, String str6, int i, Object obj) {
        return product.copy((i & 1) != 0 ? product.brand : str, (i & 2) != 0 ? product.category : str2, (i & 4) != 0 ? product.couponCode : str3, (i & 8) != 0 ? product.customDimension : dimension, (i & 16) != 0 ? product.customMetric : productMetric, (i & 32) != 0 ? product.id : str4, (i & 64) != 0 ? product.name : str5, (i & 128) != 0 ? product.position : num, (i & 256) != 0 ? product.price : d, (i & 512) != 0 ? product.quantity : num2, (i & 1024) != 0 ? product.variant : str6);
    }

    @Nullable
    public final String component1() {
        return this.brand;
    }

    @Nullable
    public final Integer component10() {
        return this.quantity;
    }

    @Nullable
    public final String component11() {
        return this.variant;
    }

    @Nullable
    public final String component2() {
        return this.category;
    }

    @Nullable
    public final String component3() {
        return this.couponCode;
    }

    @Nullable
    public final Dimension component4() {
        return this.customDimension;
    }

    @Nullable
    public final ProductMetric component5() {
        return this.customMetric;
    }

    @Nullable
    public final String component6() {
        return this.id;
    }

    @Nullable
    public final String component7() {
        return this.name;
    }

    @Nullable
    public final Integer component8() {
        return this.position;
    }

    @Nullable
    public final Double component9() {
        return this.price;
    }

    @NotNull
    public final Product copy(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable Dimension dimension, @Nullable ProductMetric productMetric, @Nullable String str4, @Nullable String str5, @Nullable Integer num, @Nullable Double d, @Nullable Integer num2, @Nullable String str6) {
        return new Product(str, str2, str3, dimension, productMetric, str4, str5, num, d, num2, str6);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Product)) {
            return false;
        }
        Product product = (Product) obj;
        return Intrinsics.areEqual(this.brand, product.brand) && Intrinsics.areEqual(this.category, product.category) && Intrinsics.areEqual(this.couponCode, product.couponCode) && Intrinsics.areEqual(this.customDimension, product.customDimension) && Intrinsics.areEqual(this.customMetric, product.customMetric) && Intrinsics.areEqual(this.id, product.id) && Intrinsics.areEqual(this.name, product.name) && Intrinsics.areEqual(this.position, product.position) && Intrinsics.areEqual(this.price, product.price) && Intrinsics.areEqual(this.quantity, product.quantity) && Intrinsics.areEqual(this.variant, product.variant);
    }

    public int hashCode() {
        String str = this.brand;
        int i = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.category;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.couponCode;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        Dimension dimension = this.customDimension;
        int hashCode4 = (hashCode3 + (dimension != null ? dimension.hashCode() : 0)) * 31;
        ProductMetric productMetric = this.customMetric;
        int hashCode5 = (hashCode4 + (productMetric != null ? productMetric.hashCode() : 0)) * 31;
        String str4 = this.id;
        int hashCode6 = (hashCode5 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.name;
        int hashCode7 = (hashCode6 + (str5 != null ? str5.hashCode() : 0)) * 31;
        Integer num = this.position;
        int hashCode8 = (hashCode7 + (num != null ? num.hashCode() : 0)) * 31;
        Double d = this.price;
        int hashCode9 = (hashCode8 + (d != null ? d.hashCode() : 0)) * 31;
        Integer num2 = this.quantity;
        int hashCode10 = (hashCode9 + (num2 != null ? num2.hashCode() : 0)) * 31;
        String str6 = this.variant;
        if (str6 != null) {
            i = str6.hashCode();
        }
        return hashCode10 + i;
    }

    @NotNull
    public String toString() {
        return "Product(brand=" + this.brand + ", category=" + this.category + ", couponCode=" + this.couponCode + ", customDimension=" + this.customDimension + ", customMetric=" + this.customMetric + ", id=" + this.id + ", name=" + this.name + ", position=" + this.position + ", price=" + this.price + ", quantity=" + this.quantity + ", variant=" + this.variant + ")";
    }

    public Product(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable Dimension dimension, @Nullable ProductMetric productMetric, @Nullable String str4, @Nullable String str5, @Nullable Integer num, @Nullable Double d, @Nullable Integer num2, @Nullable String str6) {
        this.brand = str;
        this.category = str2;
        this.couponCode = str3;
        this.customDimension = dimension;
        this.customMetric = productMetric;
        this.id = str4;
        this.name = str5;
        this.position = num;
        this.price = d;
        this.quantity = num2;
        this.variant = str6;
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ Product(String str, String str2, String str3, Dimension dimension, ProductMetric productMetric, String str4, String str5, Integer num, Double d, Integer num2, String str6, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : dimension, (i & 16) != 0 ? null : productMetric, (i & 32) != 0 ? null : str4, (i & 64) != 0 ? null : str5, (i & 128) != 0 ? null : num, (i & 256) != 0 ? null : d, (i & 512) != 0 ? null : num2, (i & 1024) != 0 ? null : str6);
    }

    @Nullable
    public final String getBrand() {
        return this.brand;
    }

    @Nullable
    public final String getCategory() {
        return this.category;
    }

    @Nullable
    public final String getCouponCode() {
        return this.couponCode;
    }

    @Nullable
    public final Dimension getCustomDimension() {
        return this.customDimension;
    }

    @Nullable
    public final ProductMetric getCustomMetric() {
        return this.customMetric;
    }

    @Nullable
    public final String getId() {
        return this.id;
    }

    @Nullable
    public final String getName() {
        return this.name;
    }

    @Nullable
    public final Integer getPosition() {
        return this.position;
    }

    @Nullable
    public final Double getPrice() {
        return this.price;
    }

    @Nullable
    public final Integer getQuantity() {
        return this.quantity;
    }

    @Nullable
    public final String getVariant() {
        return this.variant;
    }
}
