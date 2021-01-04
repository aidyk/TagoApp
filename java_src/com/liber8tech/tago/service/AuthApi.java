package com.liber8tech.tago.service;

import io.reactivex.Observable;
import io.reactivex.Single;
import kotlin.Metadata;
import okhttp3.ResponseBody;
import org.jetbrains.annotations.NotNull;
import retrofit2.http.Body;
import retrofit2.http.POST;

/* access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bb\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0002\u001a\u00020\u0005H'J\u0018\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0007\u001a\u00020\bH'J\u0018\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u00032\b\b\u0001\u0010\u000b\u001a\u00020\fH'J\u0018\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\b\b\u0001\u0010\u0010\u001a\u00020\u0011H'J\u0018\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\n0\u00032\b\b\u0001\u0010\u0013\u001a\u00020\u0014H'¨\u0006\u0015"}, d2 = {"Lcom/liber8tech/tago/service/AuthApi;", "", "changePassword", "Lio/reactivex/Observable;", "Lokhttp3/ResponseBody;", "Lcom/liber8tech/tago/service/ChangePassword;", "forgotPassword", "email", "Lcom/liber8tech/tago/service/ForgetPassword;", "signIn", "Lcom/liber8tech/tago/service/SignInResponse;", "signInObject", "Lcom/liber8tech/tago/service/SignIn;", "signInFacebook", "Lio/reactivex/Single;", "Lcom/liber8tech/tago/service/FacebookSignInResponse;", "token", "Lcom/liber8tech/tago/service/FacebookSignIn;", "signUp", "signUpObject", "Lcom/liber8tech/tago/service/SignUp;", "app_release"}, k = 1, mv = {1, 1, 13})
/* compiled from: AuthService.kt */
public interface AuthApi {
    @POST("v1/auth/change")
    @NotNull
    Observable<ResponseBody> changePassword(@Body @NotNull ChangePassword changePassword);

    @POST("v1/auth/forgot")
    @NotNull
    Observable<ResponseBody> forgotPassword(@Body @NotNull ForgetPassword forgetPassword);

    @POST("v1/auth/signin")
    @NotNull
    Observable<SignInResponse> signIn(@Body @NotNull SignIn signIn);

    @POST("v1/auth/social/facebook")
    @NotNull
    Single<FacebookSignInResponse> signInFacebook(@Body @NotNull FacebookSignIn facebookSignIn);

    @POST("v1/auth/signup")
    @NotNull
    Observable<SignInResponse> signUp(@Body @NotNull SignUp signUp);
}
