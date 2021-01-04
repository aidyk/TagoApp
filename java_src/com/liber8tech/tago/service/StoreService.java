package com.liber8tech.tago.service;

import com.liber8tech.tago.model.Category;
import com.liber8tech.tago.model.Pack;
import io.reactivex.Observable;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import retrofit2.Retrofit;

@Singleton
@Metadata(bv = {1, 0, 3}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u000f\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0012\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\bJ\u001a\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\t0\b2\u0006\u0010\r\u001a\u00020\u000eJ \u0010\u000f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\t0\b2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000e0\tR\u000e\u0010\u0005\u001a\u00020\u0006X\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/liber8tech/tago/service/StoreService;", "", "retrofit", "Lretrofit2/Retrofit;", "(Lretrofit2/Retrofit;)V", "storeApi", "Lcom/liber8tech/tago/service/StoreApi;", "getCategories", "Lio/reactivex/Observable;", "", "Lcom/liber8tech/tago/model/Category;", "getPacks", "Lcom/liber8tech/tago/model/Pack;", "categoryId", "", "getPacksBySkus", "listOfSkus", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: StoreService.kt */
public final class StoreService {
    private final StoreApi storeApi;

    @Inject
    public StoreService(@NotNull Retrofit retrofit) {
        Intrinsics.checkParameterIsNotNull(retrofit, "retrofit");
        Object create = retrofit.create(StoreApi.class);
        Intrinsics.checkExpressionValueIsNotNull(create, "retrofit.create(StoreApi::class.java)");
        this.storeApi = (StoreApi) create;
    }

    @NotNull
    public final Observable<List<Category>> getCategories() {
        return this.storeApi.getCategories();
    }

    @NotNull
    public final Observable<List<Pack>> getPacks(@NotNull String str) {
        Intrinsics.checkParameterIsNotNull(str, "categoryId");
        return this.storeApi.getPacks(str);
    }

    @NotNull
    public final Observable<List<Pack>> getPacksBySkus(@NotNull List<String> list) {
        Intrinsics.checkParameterIsNotNull(list, "listOfSkus");
        return this.storeApi.getPacksByIds(list);
    }
}
