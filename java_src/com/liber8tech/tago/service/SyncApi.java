package com.liber8tech.tago.service;

import com.liber8tech.tago.model.TagoDevice;
import io.reactivex.Observable;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import retrofit2.http.Body;
import retrofit2.http.DELETE;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Path;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\bb\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u0006H'J\u0014\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\b0\u0003H'J\u0018\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\n\u001a\u00020\u0004H'¨\u0006\u000b"}, d2 = {"Lcom/liber8tech/tago/service/SyncApi;", "", "delete", "Lio/reactivex/Observable;", "Lcom/liber8tech/tago/model/TagoDevice;", "id", "", "get", "", "update", "tago", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: TagoApiService.kt */
public interface SyncApi {
    @DELETE("v1/tagos/{id}")
    @NotNull
    Observable<TagoDevice> delete(@Path("id") @NotNull String str);

    @GET("v1/tagos")
    @NotNull
    Observable<List<TagoDevice>> get();

    @POST("v1/tagos")
    @NotNull
    Observable<TagoDevice> update(@Body @NotNull TagoDevice tagoDevice);
}
