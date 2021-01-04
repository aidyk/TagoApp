package com.liber8tech.tago.service;

import android.app.Activity;
import com.facebook.login.LoginManager;
import io.reactivex.SingleEmitter;
import io.reactivex.SingleOnSubscribe;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u0014\u0010\u0002\u001a\u0010\u0012\f\u0012\n \u0005*\u0004\u0018\u00010\u00040\u00040\u0003H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "", "emitter", "Lio/reactivex/SingleEmitter;", "", "kotlin.jvm.PlatformType", "subscribe"}, k = 3, mv = {1, 1, 13})
/* compiled from: AuthService.kt */
public final class AuthService$signInFacebook$1<T> implements SingleOnSubscribe<T> {
    final /* synthetic */ Activity $source;
    final /* synthetic */ AuthService this$0;

    AuthService$signInFacebook$1(AuthService authService, Activity activity) {
        this.this$0 = authService;
        this.$source = activity;
    }

    @Override // io.reactivex.SingleOnSubscribe
    public final void subscribe(@NotNull SingleEmitter<String> singleEmitter) {
        Intrinsics.checkParameterIsNotNull(singleEmitter, "emitter");
        LoginManager instance = LoginManager.getInstance();
        instance.logInWithReadPermissions(this.$source, CollectionsKt.listOf((Object[]) new String[]{"email", "user_birthday", "user_location"}));
        instance.registerCallback(this.this$0.getCallbackManager(), new AuthService$signInFacebook$1$$special$$inlined$apply$lambda$1(this, singleEmitter));
    }
}
