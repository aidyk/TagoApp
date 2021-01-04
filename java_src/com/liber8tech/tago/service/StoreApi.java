package com.liber8tech.tago.service;

import com.liber8tech.tago.model.Category;
import com.liber8tech.tago.model.Pack;
import io.reactivex.Observable;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Path;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\bb\u0018\u00002\u00020\u0001J\u0014\u0010\u0002\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u0003H'J\u001e\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00040\u00032\b\b\u0001\u0010\b\u001a\u00020\tH'J$\u0010\n\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00040\u00032\u000e\b\u0001\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\t0\u0004H'¨\u0006\f"}, d2 = {"Lcom/liber8tech/tago/service/StoreApi;", "", "getCategories", "Lio/reactivex/Observable;", "", "Lcom/liber8tech/tago/model/Category;", "getPacks", "Lcom/liber8tech/tago/model/Pack;", "categoryId", "", "getPacksByIds", "ids", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: StoreService.kt */
public interface StoreApi {
    @GET("v1/categories")
    @NotNull
    Observable<List<Category>> getCategories();

    @GET("v1/categories/{id}/packs")
    @NotNull
    Observable<List<Pack>> getPacks(@Path("id") @NotNull String str);

    @POST("v1/packs/by-product-ids")
    @NotNull
    Observable<List<Pack>> getPacksByIds(@Body @NotNull List<String> list);
}
