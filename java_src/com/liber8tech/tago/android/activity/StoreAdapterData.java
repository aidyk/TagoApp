package com.liber8tech.tago.android.activity;

import com.facebook.internal.FacebookRequestErrorClassification;
import com.liber8tech.tago.model.Category;
import com.liber8tech.tago.model.Pack;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\b\u0018\u00002\u00020\u0001B'\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0012\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00030\u0006¢\u0006\u0002\u0010\bJ\u000f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0015\u0010\u0010\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00030\u0006HÆ\u0003J/\u0010\u0011\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0014\b\u0002\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00030\u0006HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001R&\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00030\u0006X\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR \u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\n\"\u0004\b\u000e\u0010\f¨\u0006\u0019"}, d2 = {"Lcom/liber8tech/tago/android/activity/StoreAdapterData;", "", "categoryTitleList", "", "Lcom/liber8tech/tago/model/Category;", "categoryData", "", "Lcom/liber8tech/tago/model/Pack;", "(Ljava/util/List;Ljava/util/List;)V", "getCategoryData", "()Ljava/util/List;", "setCategoryData", "(Ljava/util/List;)V", "getCategoryTitleList", "setCategoryTitleList", "component1", "component2", "copy", "equals", "", FacebookRequestErrorClassification.KEY_OTHER, "hashCode", "", "toString", "", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: StoreActivity.kt */
public final class StoreAdapterData {
    @NotNull
    private List<List<Pack>> categoryData;
    @NotNull
    private List<Category> categoryTitleList;

    /* JADX DEBUG: Multi-variable search result rejected for r0v0, resolved type: com.liber8tech.tago.android.activity.StoreAdapterData */
    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static /* synthetic */ StoreAdapterData copy$default(StoreAdapterData storeAdapterData, List list, List list2, int i, Object obj) {
        if ((i & 1) != 0) {
            list = storeAdapterData.categoryTitleList;
        }
        if ((i & 2) != 0) {
            list2 = storeAdapterData.categoryData;
        }
        return storeAdapterData.copy(list, list2);
    }

    @NotNull
    public final List<Category> component1() {
        return this.categoryTitleList;
    }

    @NotNull
    public final List<List<Pack>> component2() {
        return this.categoryData;
    }

    @NotNull
    public final StoreAdapterData copy(@NotNull List<Category> list, @NotNull List<List<Pack>> list2) {
        Intrinsics.checkParameterIsNotNull(list, "categoryTitleList");
        Intrinsics.checkParameterIsNotNull(list2, "categoryData");
        return new StoreAdapterData(list, list2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StoreAdapterData)) {
            return false;
        }
        StoreAdapterData storeAdapterData = (StoreAdapterData) obj;
        return Intrinsics.areEqual(this.categoryTitleList, storeAdapterData.categoryTitleList) && Intrinsics.areEqual(this.categoryData, storeAdapterData.categoryData);
    }

    public int hashCode() {
        List<Category> list = this.categoryTitleList;
        int i = 0;
        int hashCode = (list != null ? list.hashCode() : 0) * 31;
        List<List<Pack>> list2 = this.categoryData;
        if (list2 != null) {
            i = list2.hashCode();
        }
        return hashCode + i;
    }

    @NotNull
    public String toString() {
        return "StoreAdapterData(categoryTitleList=" + this.categoryTitleList + ", categoryData=" + this.categoryData + ")";
    }

    public StoreAdapterData(@NotNull List<Category> list, @NotNull List<List<Pack>> list2) {
        Intrinsics.checkParameterIsNotNull(list, "categoryTitleList");
        Intrinsics.checkParameterIsNotNull(list2, "categoryData");
        this.categoryTitleList = list;
        this.categoryData = list2;
    }

    @NotNull
    public final List<Category> getCategoryTitleList() {
        return this.categoryTitleList;
    }

    public final void setCategoryTitleList(@NotNull List<Category> list) {
        Intrinsics.checkParameterIsNotNull(list, "<set-?>");
        this.categoryTitleList = list;
    }

    @NotNull
    public final List<List<Pack>> getCategoryData() {
        return this.categoryData;
    }

    public final void setCategoryData(@NotNull List<List<Pack>> list) {
        Intrinsics.checkParameterIsNotNull(list, "<set-?>");
        this.categoryData = list;
    }
}
