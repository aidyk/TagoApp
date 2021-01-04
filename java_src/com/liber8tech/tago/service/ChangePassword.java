package com.liber8tech.tago.service;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0007\"\u0004\b\u000b\u0010\t¨\u0006\f"}, d2 = {"Lcom/liber8tech/tago/service/ChangePassword;", "", "currentPassword", "", "newPassword", "(Ljava/lang/String;Ljava/lang/String;)V", "getCurrentPassword", "()Ljava/lang/String;", "setCurrentPassword", "(Ljava/lang/String;)V", "getNewPassword", "setNewPassword", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: AuthService.kt */
public final class ChangePassword {
    @Nullable
    private String currentPassword;
    @Nullable
    private String newPassword;

    public ChangePassword(@NotNull String str, @NotNull String str2) {
        Intrinsics.checkParameterIsNotNull(str, "currentPassword");
        Intrinsics.checkParameterIsNotNull(str2, "newPassword");
        this.currentPassword = str;
        this.newPassword = str2;
    }

    @Nullable
    public final String getCurrentPassword() {
        return this.currentPassword;
    }

    public final void setCurrentPassword(@Nullable String str) {
        this.currentPassword = str;
    }

    @Nullable
    public final String getNewPassword() {
        return this.newPassword;
    }

    public final void setNewPassword(@Nullable String str) {
        this.newPassword = str;
    }
}
