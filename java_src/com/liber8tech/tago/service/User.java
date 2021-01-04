package com.liber8tech.tago.service;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000b¨\u0006\r"}, d2 = {"Lcom/liber8tech/tago/service/User;", "", "id", "", "tocAccepted", "", "ppAccepted", "(Ljava/lang/String;ZZ)V", "getId", "()Ljava/lang/String;", "getPpAccepted", "()Z", "getTocAccepted", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: AuthService.kt */
public final class User {
    @NotNull
    private final String id;
    private final boolean ppAccepted;
    private final boolean tocAccepted;

    public User(@NotNull String str, boolean z, boolean z2) {
        Intrinsics.checkParameterIsNotNull(str, "id");
        this.id = str;
        this.tocAccepted = z;
        this.ppAccepted = z2;
    }

    @NotNull
    public final String getId() {
        return this.id;
    }

    public final boolean getPpAccepted() {
        return this.ppAccepted;
    }

    public final boolean getTocAccepted() {
        return this.tocAccepted;
    }
}
