package com.liber8tech.tago.service;

import io.reactivex.Single;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import retrofit2.Retrofit;

@Singleton
@Metadata(bv = {1, 0, 3}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tJ\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\t2\u0006\u0010\r\u001a\u00020\nJ\u001c\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\f0\t2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010R\u0016\u0010\u0005\u001a\n \u0007*\u0004\u0018\u00010\u00060\u0006X\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/liber8tech/tago/service/ProfileService;", "", "retrofit", "Lretrofit2/Retrofit;", "(Lretrofit2/Retrofit;)V", "profileApi", "Lcom/liber8tech/tago/service/ProfileApi;", "kotlin.jvm.PlatformType", "getProfile", "Lio/reactivex/Single;", "Lcom/liber8tech/tago/service/UpdateProfileData;", "updateProfile", "", "profile", "updateTerms", "termsOfCondition", "", "privacyPolicy", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: ProfileService.kt */
public final class ProfileService {
    private final ProfileApi profileApi;

    @Inject
    public ProfileService(@NotNull Retrofit retrofit) {
        Intrinsics.checkParameterIsNotNull(retrofit, "retrofit");
        this.profileApi = (ProfileApi) retrofit.create(ProfileApi.class);
    }

    @NotNull
    public final Single<Unit> updateProfile(@NotNull UpdateProfileData updateProfileData) {
        Intrinsics.checkParameterIsNotNull(updateProfileData, "profile");
        return this.profileApi.updateProfile(updateProfileData);
    }

    @NotNull
    public final Single<UpdateProfileData> getProfile() {
        Single<R> map = this.profileApi.getProfile().map(ProfileService$getProfile$1.INSTANCE);
        Intrinsics.checkExpressionValueIsNotNull(map, "profileApi.getProfile()\n…completedProfile)\n      }");
        return map;
    }

    @NotNull
    public final Single<Unit> updateTerms(boolean z, boolean z2) {
        return this.profileApi.updateTerms(new Terms(z, z2));
    }
}
