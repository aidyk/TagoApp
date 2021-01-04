package com.liber8tech.tago.analytics;

import com.facebook.internal.FacebookRequestErrorClassification;
import com.facebook.internal.NativeProtocol;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0006\n\u0002\b!\n\u0002\u0010\u000b\n\u0002\b\u0004\b\b\u0018\u00002\u00020\u0001B\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\r¢\u0006\u0002\u0010\u0010J\t\u0010!\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\"\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0002\u0010\u001dJ\u0010\u0010#\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0002\u0010\u001dJ\u000b\u0010$\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010%\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u0015J\u000b\u0010&\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010'\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010+\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0002\u0010\u001dJ\u0001\u0010,\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\rHÆ\u0001¢\u0006\u0002\u0010-J\u0013\u0010.\u001a\u00020/2\b\u00100\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00101\u001a\u00020\u0006HÖ\u0001J\t\u00102\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0012R\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b\u0014\u0010\u0015R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0012R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0012R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0012R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0012R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0012R\u0015\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\n\n\u0002\u0010\u001e\u001a\u0004\b\u001c\u0010\u001dR\u0015\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\n\n\u0002\u0010\u001e\u001a\u0004\b\u001f\u0010\u001dR\u0015\u0010\u000f\u001a\u0004\u0018\u00010\r¢\u0006\n\n\u0002\u0010\u001e\u001a\u0004\b \u0010\u001d¨\u00063"}, d2 = {"Lcom/liber8tech/tago/analytics/ProductAction;", "", NativeProtocol.WEB_DIALOG_ACTION, "", "checkoutOptions", "checkoutStep", "", "productActionList", "productListSource", "transactionAffiliation", "transactionCouponCode", "transactionId", "transactionRevenue", "", "transactionShipping", "transactionTax", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V", "getAction", "()Ljava/lang/String;", "getCheckoutOptions", "getCheckoutStep", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getProductActionList", "getProductListSource", "getTransactionAffiliation", "getTransactionCouponCode", "getTransactionId", "getTransactionRevenue", "()Ljava/lang/Double;", "Ljava/lang/Double;", "getTransactionShipping", "getTransactionTax", "component1", "component10", "component11", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)Lcom/liber8tech/tago/analytics/ProductAction;", "equals", "", FacebookRequestErrorClassification.KEY_OTHER, "hashCode", "toString", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: ProductAction.kt */
public final class ProductAction {
    @NotNull
    private final String action;
    @Nullable
    private final String checkoutOptions;
    @Nullable
    private final Integer checkoutStep;
    @Nullable
    private final String productActionList;
    @Nullable
    private final String productListSource;
    @Nullable
    private final String transactionAffiliation;
    @Nullable
    private final String transactionCouponCode;
    @Nullable
    private final String transactionId;
    @Nullable
    private final Double transactionRevenue;
    @Nullable
    private final Double transactionShipping;
    @Nullable
    private final Double transactionTax;

    @NotNull
    public static /* synthetic */ ProductAction copy$default(ProductAction productAction, String str, String str2, Integer num, String str3, String str4, String str5, String str6, String str7, Double d, Double d2, Double d3, int i, Object obj) {
        return productAction.copy((i & 1) != 0 ? productAction.action : str, (i & 2) != 0 ? productAction.checkoutOptions : str2, (i & 4) != 0 ? productAction.checkoutStep : num, (i & 8) != 0 ? productAction.productActionList : str3, (i & 16) != 0 ? productAction.productListSource : str4, (i & 32) != 0 ? productAction.transactionAffiliation : str5, (i & 64) != 0 ? productAction.transactionCouponCode : str6, (i & 128) != 0 ? productAction.transactionId : str7, (i & 256) != 0 ? productAction.transactionRevenue : d, (i & 512) != 0 ? productAction.transactionShipping : d2, (i & 1024) != 0 ? productAction.transactionTax : d3);
    }

    @NotNull
    public final String component1() {
        return this.action;
    }

    @Nullable
    public final Double component10() {
        return this.transactionShipping;
    }

    @Nullable
    public final Double component11() {
        return this.transactionTax;
    }

    @Nullable
    public final String component2() {
        return this.checkoutOptions;
    }

    @Nullable
    public final Integer component3() {
        return this.checkoutStep;
    }

    @Nullable
    public final String component4() {
        return this.productActionList;
    }

    @Nullable
    public final String component5() {
        return this.productListSource;
    }

    @Nullable
    public final String component6() {
        return this.transactionAffiliation;
    }

    @Nullable
    public final String component7() {
        return this.transactionCouponCode;
    }

    @Nullable
    public final String component8() {
        return this.transactionId;
    }

    @Nullable
    public final Double component9() {
        return this.transactionRevenue;
    }

    @NotNull
    public final ProductAction copy(@NotNull String str, @Nullable String str2, @Nullable Integer num, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable String str7, @Nullable Double d, @Nullable Double d2, @Nullable Double d3) {
        Intrinsics.checkParameterIsNotNull(str, NativeProtocol.WEB_DIALOG_ACTION);
        return new ProductAction(str, str2, num, str3, str4, str5, str6, str7, d, d2, d3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductAction)) {
            return false;
        }
        ProductAction productAction = (ProductAction) obj;
        return Intrinsics.areEqual(this.action, productAction.action) && Intrinsics.areEqual(this.checkoutOptions, productAction.checkoutOptions) && Intrinsics.areEqual(this.checkoutStep, productAction.checkoutStep) && Intrinsics.areEqual(this.productActionList, productAction.productActionList) && Intrinsics.areEqual(this.productListSource, productAction.productListSource) && Intrinsics.areEqual(this.transactionAffiliation, productAction.transactionAffiliation) && Intrinsics.areEqual(this.transactionCouponCode, productAction.transactionCouponCode) && Intrinsics.areEqual(this.transactionId, productAction.transactionId) && Intrinsics.areEqual(this.transactionRevenue, productAction.transactionRevenue) && Intrinsics.areEqual(this.transactionShipping, productAction.transactionShipping) && Intrinsics.areEqual(this.transactionTax, productAction.transactionTax);
    }

    public int hashCode() {
        String str = this.action;
        int i = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.checkoutOptions;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        Integer num = this.checkoutStep;
        int hashCode3 = (hashCode2 + (num != null ? num.hashCode() : 0)) * 31;
        String str3 = this.productActionList;
        int hashCode4 = (hashCode3 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.productListSource;
        int hashCode5 = (hashCode4 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.transactionAffiliation;
        int hashCode6 = (hashCode5 + (str5 != null ? str5.hashCode() : 0)) * 31;
        String str6 = this.transactionCouponCode;
        int hashCode7 = (hashCode6 + (str6 != null ? str6.hashCode() : 0)) * 31;
        String str7 = this.transactionId;
        int hashCode8 = (hashCode7 + (str7 != null ? str7.hashCode() : 0)) * 31;
        Double d = this.transactionRevenue;
        int hashCode9 = (hashCode8 + (d != null ? d.hashCode() : 0)) * 31;
        Double d2 = this.transactionShipping;
        int hashCode10 = (hashCode9 + (d2 != null ? d2.hashCode() : 0)) * 31;
        Double d3 = this.transactionTax;
        if (d3 != null) {
            i = d3.hashCode();
        }
        return hashCode10 + i;
    }

    @NotNull
    public String toString() {
        return "ProductAction(action=" + this.action + ", checkoutOptions=" + this.checkoutOptions + ", checkoutStep=" + this.checkoutStep + ", productActionList=" + this.productActionList + ", productListSource=" + this.productListSource + ", transactionAffiliation=" + this.transactionAffiliation + ", transactionCouponCode=" + this.transactionCouponCode + ", transactionId=" + this.transactionId + ", transactionRevenue=" + this.transactionRevenue + ", transactionShipping=" + this.transactionShipping + ", transactionTax=" + this.transactionTax + ")";
    }

    public ProductAction(@NotNull String str, @Nullable String str2, @Nullable Integer num, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable String str7, @Nullable Double d, @Nullable Double d2, @Nullable Double d3) {
        Intrinsics.checkParameterIsNotNull(str, NativeProtocol.WEB_DIALOG_ACTION);
        this.action = str;
        this.checkoutOptions = str2;
        this.checkoutStep = num;
        this.productActionList = str3;
        this.productListSource = str4;
        this.transactionAffiliation = str5;
        this.transactionCouponCode = str6;
        this.transactionId = str7;
        this.transactionRevenue = d;
        this.transactionShipping = d2;
        this.transactionTax = d3;
    }

    @NotNull
    public final String getAction() {
        return this.action;
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ProductAction(String str, String str2, Integer num, String str3, String str4, String str5, String str6, String str7, Double d, Double d2, Double d3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : num, (i & 8) != 0 ? null : str3, (i & 16) != 0 ? null : str4, (i & 32) != 0 ? null : str5, (i & 64) != 0 ? null : str6, (i & 128) != 0 ? null : str7, (i & 256) != 0 ? null : d, (i & 512) != 0 ? null : d2, (i & 1024) != 0 ? null : d3);
    }

    @Nullable
    public final String getCheckoutOptions() {
        return this.checkoutOptions;
    }

    @Nullable
    public final Integer getCheckoutStep() {
        return this.checkoutStep;
    }

    @Nullable
    public final String getProductActionList() {
        return this.productActionList;
    }

    @Nullable
    public final String getProductListSource() {
        return this.productListSource;
    }

    @Nullable
    public final String getTransactionAffiliation() {
        return this.transactionAffiliation;
    }

    @Nullable
    public final String getTransactionCouponCode() {
        return this.transactionCouponCode;
    }

    @Nullable
    public final String getTransactionId() {
        return this.transactionId;
    }

    @Nullable
    public final Double getTransactionRevenue() {
        return this.transactionRevenue;
    }

    @Nullable
    public final Double getTransactionShipping() {
        return this.transactionShipping;
    }

    @Nullable
    public final Double getTransactionTax() {
        return this.transactionTax;
    }
}
