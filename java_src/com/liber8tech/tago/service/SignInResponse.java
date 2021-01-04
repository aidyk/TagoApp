package com.liber8tech.tago.service;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/liber8tech/tago/service/SignInResponse;", "", "user", "Lcom/liber8tech/tago/service/User;", "token", "", "(Lcom/liber8tech/tago/service/User;Ljava/lang/String;)V", "getToken", "()Ljava/lang/String;", "getUser", "()Lcom/liber8tech/tago/service/User;", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: AuthService.kt */
public final class SignInResponse {
    @NotNull
    private final String token;
    @NotNull
    private final User user;

    public SignInResponse(@NotNull User user2, @NotNull String str) {
        Intrinsics.checkParameterIsNotNull(user2, "user");
        Intrinsics.checkParameterIsNotNull(str, "token");
        this.user = user2;
        this.token = str;
    }

    @NotNull
    public final String getToken() {
        return this.token;
    }

    @NotNull
    public final User getUser() {
        return this.user;
    }
}
