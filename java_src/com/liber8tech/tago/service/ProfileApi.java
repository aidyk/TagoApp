package com.liber8tech.tago.service;

import io.reactivex.Single;
import kotlin.Metadata;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bb\u0018\u00002\u00020\u0001J\u000e\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H'J\u0018\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u00032\b\b\u0001\u0010\u0007\u001a\u00020\bH'J\u0018\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\u00032\b\b\u0001\u0010\n\u001a\u00020\u000bH'¨\u0006\f"}, d2 = {"Lcom/liber8tech/tago/service/ProfileApi;", "", "getProfile", "Lio/reactivex/Single;", "Lcom/liber8tech/tago/service/ProfileData;", "updateProfile", "", "profile", "Lcom/liber8tech/tago/service/UpdateProfileData;", "updateTerms", "terms", "Lcom/liber8tech/tago/service/Terms;", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: ProfileService.kt */
public interface ProfileApi {
    @GET("v1/me")
    @NotNull
    Single<ProfileData> getProfile();

    @POST("v1/me")
    @NotNull
    Single<Unit> updateProfile(@Body @NotNull UpdateProfileData updateProfileData);

    @POST("v1/me/terms")
    @NotNull
    Single<Unit> updateTerms(@Body @NotNull Terms terms);
}
