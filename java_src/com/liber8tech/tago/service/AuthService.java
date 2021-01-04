package com.liber8tech.tago.service;

import android.app.Activity;
import com.facebook.CallbackManager;
import com.facebook.share.internal.ShareConstants;
import com.liber8tech.tago.util.RuntimeConfig;
import io.reactivex.Observable;
import io.reactivex.Single;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.ResponseBody;
import org.jetbrains.annotations.NotNull;
import retrofit2.Retrofit;

@Singleton
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0017\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u001c\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011J\u0016\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00150\u00142\u0006\u0010\u0016\u001a\u00020\u0011H\u0002J\u0014\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\u0018\u001a\u00020\u0011J\u001c\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001a0\u000e2\u0006\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u0011J\u0014\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001d0\u00142\u0006\u0010\u001e\u001a\u00020\u001fJ,\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001a0\u000e2\u0006\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u00112\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\"R\u000e\u0010\u0007\u001a\u00020\bX\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u000e\u0010\u0004\u001a\u00020\u0005X\u0004¢\u0006\u0002\n\u0000¨\u0006$"}, d2 = {"Lcom/liber8tech/tago/service/AuthService;", "", "retrofit", "Lretrofit2/Retrofit;", "runtimeConfig", "Lcom/liber8tech/tago/util/RuntimeConfig;", "(Lretrofit2/Retrofit;Lcom/liber8tech/tago/util/RuntimeConfig;)V", "authApi", "Lcom/liber8tech/tago/service/AuthApi;", "callbackManager", "Lcom/facebook/CallbackManager;", "getCallbackManager", "()Lcom/facebook/CallbackManager;", "changePassword", "Lio/reactivex/Observable;", "Lokhttp3/ResponseBody;", "currentPassword", "", "newPassword", "facebookSignIn", "Lio/reactivex/Single;", "Lcom/liber8tech/tago/service/FacebookSignInResponse;", "token", "forgetPassword", "email", "signIn", "Lcom/liber8tech/tago/service/SignInResponse;", "password", "signInFacebook", "Lcom/liber8tech/tago/service/UpdateProfileData;", ShareConstants.FEED_SOURCE_PARAM, "Landroid/app/Activity;", "signUp", "toc", "", "pp", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: AuthService.kt */
public final class AuthService {
    private final AuthApi authApi;
    @NotNull
    private final CallbackManager callbackManager;
    private final RuntimeConfig runtimeConfig;

    @Inject
    public AuthService(@NotNull Retrofit retrofit, @NotNull RuntimeConfig runtimeConfig2) {
        Intrinsics.checkParameterIsNotNull(retrofit, "retrofit");
        Intrinsics.checkParameterIsNotNull(runtimeConfig2, "runtimeConfig");
        this.runtimeConfig = runtimeConfig2;
        Object create = retrofit.create(AuthApi.class);
        Intrinsics.checkExpressionValueIsNotNull(create, "retrofit.create(AuthApi::class.java)");
        this.authApi = (AuthApi) create;
        CallbackManager create2 = CallbackManager.Factory.create();
        Intrinsics.checkExpressionValueIsNotNull(create2, "CallbackManager.Factory.create()");
        this.callbackManager = create2;
    }

    @NotNull
    public final CallbackManager getCallbackManager() {
        return this.callbackManager;
    }

    @NotNull
    public final Observable<SignInResponse> signIn(@NotNull String str, @NotNull String str2) {
        Intrinsics.checkParameterIsNotNull(str, "email");
        Intrinsics.checkParameterIsNotNull(str2, "password");
        Observable<SignInResponse> doOnNext = this.authApi.signIn(new SignIn(str, str2)).doOnNext(new AuthService$signIn$1(this));
        Intrinsics.checkExpressionValueIsNotNull(doOnNext, "authApi.signIn(SignIn(em…InResponse.user.id)\n    }");
        return doOnNext;
    }

    @NotNull
    public final Observable<SignInResponse> signUp(@NotNull String str, @NotNull String str2, boolean z, boolean z2) {
        Intrinsics.checkParameterIsNotNull(str, "email");
        Intrinsics.checkParameterIsNotNull(str2, "password");
        Observable<SignInResponse> doOnNext = this.authApi.signUp(new SignUp(str, str2, z, z2)).doOnNext(new AuthService$signUp$1(this));
        Intrinsics.checkExpressionValueIsNotNull(doOnNext, "authApi.signUp(SignUp(em…InResponse.user.id)\n    }");
        return doOnNext;
    }

    @NotNull
    public final Observable<ResponseBody> changePassword(@NotNull String str, @NotNull String str2) {
        Intrinsics.checkParameterIsNotNull(str, "currentPassword");
        Intrinsics.checkParameterIsNotNull(str2, "newPassword");
        return this.authApi.changePassword(new ChangePassword(str, str2));
    }

    @NotNull
    public final Observable<ResponseBody> forgetPassword(@NotNull String str) {
        Intrinsics.checkParameterIsNotNull(str, "email");
        return this.authApi.forgotPassword(new ForgetPassword(str));
    }

    /* access modifiers changed from: private */
    public final Single<FacebookSignInResponse> facebookSignIn(String str) {
        return this.authApi.signInFacebook(new FacebookSignIn(str));
    }

    @NotNull
    public final Single<UpdateProfileData> signInFacebook(@NotNull Activity activity) {
        Intrinsics.checkParameterIsNotNull(activity, ShareConstants.FEED_SOURCE_PARAM);
        Single<UpdateProfileData> map = Single.create(new AuthService$signInFacebook$1(this, activity)).flatMap(new AuthService$signInFacebook$2(this)).doOnSuccess(new AuthService$signInFacebook$3(this)).map(AuthService$signInFacebook$4.INSTANCE);
        Intrinsics.checkExpressionValueIsNotNull(map, "Single.create<String> { …r.completedProfile)\n    }");
        return map;
    }
}
