package com.liber8tech.tago.service;

import com.facebook.internal.FacebookRequestErrorClassification;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Lcom/liber8tech/tago/service/FacebookSignInResponse;", "", "user", "Lcom/liber8tech/tago/service/ProfileData;", "token", "", "(Lcom/liber8tech/tago/service/ProfileData;Ljava/lang/String;)V", "getToken", "()Ljava/lang/String;", "getUser", "()Lcom/liber8tech/tago/service/ProfileData;", "component1", "component2", "copy", "equals", "", FacebookRequestErrorClassification.KEY_OTHER, "hashCode", "", "toString", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: AuthService.kt */
public final class FacebookSignInResponse {
    @NotNull
    private final String token;
    @NotNull
    private final ProfileData user;

    @NotNull
    public static /* synthetic */ FacebookSignInResponse copy$default(FacebookSignInResponse facebookSignInResponse, ProfileData profileData, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            profileData = facebookSignInResponse.user;
        }
        if ((i & 2) != 0) {
            str = facebookSignInResponse.token;
        }
        return facebookSignInResponse.copy(profileData, str);
    }

    @NotNull
    public final ProfileData component1() {
        return this.user;
    }

    @NotNull
    public final String component2() {
        return this.token;
    }

    @NotNull
    public final FacebookSignInResponse copy(@NotNull ProfileData profileData, @NotNull String str) {
        Intrinsics.checkParameterIsNotNull(profileData, "user");
        Intrinsics.checkParameterIsNotNull(str, "token");
        return new FacebookSignInResponse(profileData, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FacebookSignInResponse)) {
            return false;
        }
        FacebookSignInResponse facebookSignInResponse = (FacebookSignInResponse) obj;
        return Intrinsics.areEqual(this.user, facebookSignInResponse.user) && Intrinsics.areEqual(this.token, facebookSignInResponse.token);
    }

    public int hashCode() {
        ProfileData profileData = this.user;
        int i = 0;
        int hashCode = (profileData != null ? profileData.hashCode() : 0) * 31;
        String str = this.token;
        if (str != null) {
            i = str.hashCode();
        }
        return hashCode + i;
    }

    @NotNull
    public String toString() {
        return "FacebookSignInResponse(user=" + this.user + ", token=" + this.token + ")";
    }

    public FacebookSignInResponse(@NotNull ProfileData profileData, @NotNull String str) {
        Intrinsics.checkParameterIsNotNull(profileData, "user");
        Intrinsics.checkParameterIsNotNull(str, "token");
        this.user = profileData;
        this.token = str;
    }

    @NotNull
    public final String getToken() {
        return this.token;
    }

    @NotNull
    public final ProfileData getUser() {
        return this.user;
    }
}
