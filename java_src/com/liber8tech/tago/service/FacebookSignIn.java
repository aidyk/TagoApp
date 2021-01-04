package com.liber8tech.tago.service;

import com.facebook.internal.FacebookRequestErrorClassification;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\f\u001a\u00020\rHÖ\u0001J\t\u0010\u000e\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000f"}, d2 = {"Lcom/liber8tech/tago/service/FacebookSignIn;", "", "access_token", "", "(Ljava/lang/String;)V", "getAccess_token", "()Ljava/lang/String;", "component1", "copy", "equals", "", FacebookRequestErrorClassification.KEY_OTHER, "hashCode", "", "toString", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: AuthService.kt */
public final class FacebookSignIn {
    @NotNull
    private final String access_token;

    @NotNull
    public static /* synthetic */ FacebookSignIn copy$default(FacebookSignIn facebookSignIn, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = facebookSignIn.access_token;
        }
        return facebookSignIn.copy(str);
    }

    @NotNull
    public final String component1() {
        return this.access_token;
    }

    @NotNull
    public final FacebookSignIn copy(@NotNull String str) {
        Intrinsics.checkParameterIsNotNull(str, "access_token");
        return new FacebookSignIn(str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this != obj) {
            return (obj instanceof FacebookSignIn) && Intrinsics.areEqual(this.access_token, ((FacebookSignIn) obj).access_token);
        }
        return true;
    }

    public int hashCode() {
        String str = this.access_token;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    @NotNull
    public String toString() {
        return "FacebookSignIn(access_token=" + this.access_token + ")";
    }

    public FacebookSignIn(@NotNull String str) {
        Intrinsics.checkParameterIsNotNull(str, "access_token");
        this.access_token = str;
    }

    @NotNull
    public final String getAccess_token() {
        return this.access_token;
    }
}
