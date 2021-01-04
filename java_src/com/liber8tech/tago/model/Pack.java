package com.liber8tech.tago.model;

import com.facebook.internal.FacebookRequestErrorClassification;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0017\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\b\u0018\u00002\u00020\u0001BI\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u000bHÆ\u0003J[\u0010 \u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u000bHÆ\u0001J\u0013\u0010!\u001a\u00020\u000b2\b\u0010\"\u001a\u0004\u0018\u00010#HÖ\u0003J\t\u0010$\u001a\u00020%HÖ\u0001J\t\u0010&\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\t\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000eR\u001a\u0010\n\u001a\u00020\u000bX\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u000eR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u000eR\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u000e¨\u0006'"}, d2 = {"Lcom/liber8tech/tago/model/Pack;", "Ljava/io/Serializable;", "name", "", "id", "productId", "featuredImageUrl", "packImageUrl", "zipUrl", "categoryId", "isBought", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V", "getCategoryId", "()Ljava/lang/String;", "getFeaturedImageUrl", "getId", "()Z", "setBought", "(Z)V", "getName", "getPackImageUrl", "getProductId", "getZipUrl", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "equals", FacebookRequestErrorClassification.KEY_OTHER, "", "hashCode", "", "toString", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: Pack.kt */
public final class Pack implements Serializable {
    @NotNull
    private final String categoryId;
    @NotNull
    private final String featuredImageUrl;
    @NotNull
    private final String id;
    private boolean isBought;
    @NotNull
    private final String name;
    @NotNull
    private final String packImageUrl;
    @Nullable
    private final String productId;
    @NotNull
    private final String zipUrl;

    @NotNull
    public static /* synthetic */ Pack copy$default(Pack pack, String str, String str2, String str3, String str4, String str5, String str6, String str7, boolean z, int i, Object obj) {
        return pack.copy((i & 1) != 0 ? pack.name : str, (i & 2) != 0 ? pack.id : str2, (i & 4) != 0 ? pack.productId : str3, (i & 8) != 0 ? pack.featuredImageUrl : str4, (i & 16) != 0 ? pack.packImageUrl : str5, (i & 32) != 0 ? pack.zipUrl : str6, (i & 64) != 0 ? pack.categoryId : str7, (i & 128) != 0 ? pack.isBought : z);
    }

    @NotNull
    public final String component1() {
        return this.name;
    }

    @NotNull
    public final String component2() {
        return this.id;
    }

    @Nullable
    public final String component3() {
        return this.productId;
    }

    @NotNull
    public final String component4() {
        return this.featuredImageUrl;
    }

    @NotNull
    public final String component5() {
        return this.packImageUrl;
    }

    @NotNull
    public final String component6() {
        return this.zipUrl;
    }

    @NotNull
    public final String component7() {
        return this.categoryId;
    }

    public final boolean component8() {
        return this.isBought;
    }

    @NotNull
    public final Pack copy(@NotNull String str, @NotNull String str2, @Nullable String str3, @NotNull String str4, @NotNull String str5, @NotNull String str6, @NotNull String str7, boolean z) {
        Intrinsics.checkParameterIsNotNull(str, "name");
        Intrinsics.checkParameterIsNotNull(str2, "id");
        Intrinsics.checkParameterIsNotNull(str4, "featuredImageUrl");
        Intrinsics.checkParameterIsNotNull(str5, "packImageUrl");
        Intrinsics.checkParameterIsNotNull(str6, "zipUrl");
        Intrinsics.checkParameterIsNotNull(str7, "categoryId");
        return new Pack(str, str2, str3, str4, str5, str6, str7, z);
    }

    public boolean equals(@Nullable Object obj) {
        if (this != obj) {
            if (obj instanceof Pack) {
                Pack pack = (Pack) obj;
                if (Intrinsics.areEqual(this.name, pack.name) && Intrinsics.areEqual(this.id, pack.id) && Intrinsics.areEqual(this.productId, pack.productId) && Intrinsics.areEqual(this.featuredImageUrl, pack.featuredImageUrl) && Intrinsics.areEqual(this.packImageUrl, pack.packImageUrl) && Intrinsics.areEqual(this.zipUrl, pack.zipUrl) && Intrinsics.areEqual(this.categoryId, pack.categoryId)) {
                    if (this.isBought == pack.isBought) {
                        return true;
                    }
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        String str = this.name;
        int i = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.id;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.productId;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.featuredImageUrl;
        int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.packImageUrl;
        int hashCode5 = (hashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31;
        String str6 = this.zipUrl;
        int hashCode6 = (hashCode5 + (str6 != null ? str6.hashCode() : 0)) * 31;
        String str7 = this.categoryId;
        if (str7 != null) {
            i = str7.hashCode();
        }
        int i2 = (hashCode6 + i) * 31;
        boolean z = this.isBought;
        if (z) {
            z = true;
        }
        int i3 = z ? 1 : 0;
        int i4 = z ? 1 : 0;
        int i5 = z ? 1 : 0;
        return i2 + i3;
    }

    @NotNull
    public String toString() {
        return "Pack(name=" + this.name + ", id=" + this.id + ", productId=" + this.productId + ", featuredImageUrl=" + this.featuredImageUrl + ", packImageUrl=" + this.packImageUrl + ", zipUrl=" + this.zipUrl + ", categoryId=" + this.categoryId + ", isBought=" + this.isBought + ")";
    }

    public Pack(@NotNull String str, @NotNull String str2, @Nullable String str3, @NotNull String str4, @NotNull String str5, @NotNull String str6, @NotNull String str7, boolean z) {
        Intrinsics.checkParameterIsNotNull(str, "name");
        Intrinsics.checkParameterIsNotNull(str2, "id");
        Intrinsics.checkParameterIsNotNull(str4, "featuredImageUrl");
        Intrinsics.checkParameterIsNotNull(str5, "packImageUrl");
        Intrinsics.checkParameterIsNotNull(str6, "zipUrl");
        Intrinsics.checkParameterIsNotNull(str7, "categoryId");
        this.name = str;
        this.id = str2;
        this.productId = str3;
        this.featuredImageUrl = str4;
        this.packImageUrl = str5;
        this.zipUrl = str6;
        this.categoryId = str7;
        this.isBought = z;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    @NotNull
    public final String getId() {
        return this.id;
    }

    @Nullable
    public final String getProductId() {
        return this.productId;
    }

    @NotNull
    public final String getFeaturedImageUrl() {
        return this.featuredImageUrl;
    }

    @NotNull
    public final String getPackImageUrl() {
        return this.packImageUrl;
    }

    @NotNull
    public final String getZipUrl() {
        return this.zipUrl;
    }

    @NotNull
    public final String getCategoryId() {
        return this.categoryId;
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ Pack(String str, String str2, String str3, String str4, String str5, String str6, String str7, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, str5, str6, str7, (i & 128) != 0 ? false : z);
    }

    public final boolean isBought() {
        return this.isBought;
    }

    public final void setBought(boolean z) {
        this.isBought = z;
    }
}
