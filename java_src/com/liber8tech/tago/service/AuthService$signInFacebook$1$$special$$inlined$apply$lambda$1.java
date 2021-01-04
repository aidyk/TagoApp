package com.liber8tech.tago.service;

import com.facebook.AccessToken;
import com.facebook.FacebookCallback;
import com.facebook.FacebookException;
import com.facebook.login.LoginResult;
import io.reactivex.SingleEmitter;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0002H\u0016¨\u0006\n¸\u0006\u0000"}, d2 = {"com/liber8tech/tago/service/AuthService$signInFacebook$1$1$1", "Lcom/facebook/FacebookCallback;", "Lcom/facebook/login/LoginResult;", "onCancel", "", "onError", "error", "Lcom/facebook/FacebookException;", "onSuccess", "result", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: AuthService.kt */
public final class AuthService$signInFacebook$1$$special$$inlined$apply$lambda$1 implements FacebookCallback<LoginResult> {
    final /* synthetic */ SingleEmitter $emitter$inlined;
    final /* synthetic */ AuthService$signInFacebook$1 this$0;

    @Override // com.facebook.FacebookCallback
    public void onCancel() {
    }

    AuthService$signInFacebook$1$$special$$inlined$apply$lambda$1(AuthService$signInFacebook$1 authService$signInFacebook$1, SingleEmitter singleEmitter) {
        this.this$0 = authService$signInFacebook$1;
        this.$emitter$inlined = singleEmitter;
    }

    public void onSuccess(@NotNull LoginResult loginResult) {
        Intrinsics.checkParameterIsNotNull(loginResult, "result");
        SingleEmitter singleEmitter = this.$emitter$inlined;
        AccessToken accessToken = loginResult.getAccessToken();
        Intrinsics.checkExpressionValueIsNotNull(accessToken, "result.accessToken");
        singleEmitter.onSuccess(accessToken.getToken());
    }

    @Override // com.facebook.FacebookCallback
    public void onError(@NotNull FacebookException facebookException) {
        Intrinsics.checkParameterIsNotNull(facebookException, "error");
        this.$emitter$inlined.onError(facebookException);
    }
}
