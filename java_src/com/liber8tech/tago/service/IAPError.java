package com.liber8tech.tago.service;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\b\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010¨\u0006\u0011"}, d2 = {"Lcom/liber8tech/tago/service/IAPError;", "", "message", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getMessage", "()Ljava/lang/String;", "ERROR", "BILLING_UNAVAILABLE", "DEVELOPER_ERROR", "FEATURE_NOT_SUPPORTED", "ITEM_ALREADY_OWNED", "ITEM_NOT_OWNED", "ITEM_UNAVAILABLE", "SERVICE_DISCONNECTED", "SERVICE_UNAVAILABLE", "USER_CANCELED", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: IAPService.kt */
public enum IAPError {
    ERROR("ERROR"),
    BILLING_UNAVAILABLE("BILLING_UNAVAILABLE"),
    DEVELOPER_ERROR("DEVELOPER_ERROR"),
    FEATURE_NOT_SUPPORTED("FEATURE_NOT_SUPPORTED"),
    ITEM_ALREADY_OWNED("ITEM_ALREADY_OWNED"),
    ITEM_NOT_OWNED("ITEM_NOT_OWNED"),
    ITEM_UNAVAILABLE("ITEM_UNAVAILABLE"),
    SERVICE_DISCONNECTED("SERVICE_DISCONNECTED"),
    SERVICE_UNAVAILABLE("SERVICE_UNAVAILABLE"),
    USER_CANCELED("USER_CANCELED");
    
    @NotNull
    private final String message;

    protected IAPError(@NotNull String str) {
        Intrinsics.checkParameterIsNotNull(str, "message");
        this.message = str;
    }

    @NotNull
    public final String getMessage() {
        return this.message;
    }
}
