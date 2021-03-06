package com.liber8tech.tago.service;

import io.reactivex.functions.Consumer;
import kotlin.Metadata;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "signInResponse", "Lcom/liber8tech/tago/service/FacebookSignInResponse;", "kotlin.jvm.PlatformType", "accept"}, k = 3, mv = {1, 1, 13})
/* compiled from: AuthService.kt */
public final class AuthService$signInFacebook$3<T> implements Consumer<FacebookSignInResponse> {
    final /* synthetic */ AuthService this$0;

    AuthService$signInFacebook$3(AuthService authService) {
        this.this$0 = authService;
    }

    public final void accept(FacebookSignInResponse facebookSignInResponse) {
        this.this$0.runtimeConfig.setToken(facebookSignInResponse.getToken());
        this.this$0.runtimeConfig.setUserId(facebookSignInResponse.getUser().getId());
    }
}
