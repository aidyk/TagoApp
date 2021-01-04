package com.liber8tech.tago.service;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import io.reactivex.Observable;
import io.reactivex.Single;
import java.util.List;
import kotlin.Metadata;
import okhttp3.MultipartBody;
import okhttp3.ResponseBody;
import org.jetbrains.annotations.NotNull;
import retrofit2.http.DELETE;
import retrofit2.http.GET;
import retrofit2.http.Multipart;
import retrofit2.http.POST;
import retrofit2.http.Part;
import retrofit2.http.Path;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bb\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u0006H'J\u0018\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\b2\b\b\u0001\u0010\u0005\u001a\u00020\u0006H'J\u0014\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\n0\bH'J\u0018\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00060\b2\b\b\u0001\u0010\f\u001a\u00020\rH'¨\u0006\u000e"}, d2 = {"Lcom/liber8tech/tago/service/ImageApi;", "", "deleteImage", "Lio/reactivex/Single;", "Lokhttp3/ResponseBody;", "id", "", "downloadImage", "Lio/reactivex/Observable;", "getImages", "", "uploadImage", TtmlNode.TAG_BODY, "Lokhttp3/MultipartBody$Part;", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: ImageEditorService.kt */
public interface ImageApi {
    @DELETE("v2/images/{id}")
    @NotNull
    Single<ResponseBody> deleteImage(@Path("id") @NotNull String str);

    @GET("v2/images/{id}")
    @NotNull
    Observable<ResponseBody> downloadImage(@Path("id") @NotNull String str);

    @GET("v2/images")
    @NotNull
    Observable<List<String>> getImages();

    @NotNull
    @POST("v2/images")
    @Multipart
    Observable<String> uploadImage(@NotNull @Part MultipartBody.Part part);
}
