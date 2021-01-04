.class interface abstract Lcom/liber8tech/tago/service/AuthApi;
.super Ljava/lang/Object;
.source "AuthService.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008b\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0005H\'J\u0018\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0008H\'J\u0018\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00032\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u000cH\'J\u0018\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e2\u0008\u0008\u0001\u0010\u0010\u001a\u00020\u0011H\'J\u0018\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00032\u0008\u0008\u0001\u0010\u0013\u001a\u00020\u0014H\'\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/liber8tech/tago/service/AuthApi;",
        "",
        "changePassword",
        "Lio/reactivex/Observable;",
        "Lokhttp3/ResponseBody;",
        "Lcom/liber8tech/tago/service/ChangePassword;",
        "forgotPassword",
        "email",
        "Lcom/liber8tech/tago/service/ForgetPassword;",
        "signIn",
        "Lcom/liber8tech/tago/service/SignInResponse;",
        "signInObject",
        "Lcom/liber8tech/tago/service/SignIn;",
        "signInFacebook",
        "Lio/reactivex/Single;",
        "Lcom/liber8tech/tago/service/FacebookSignInResponse;",
        "token",
        "Lcom/liber8tech/tago/service/FacebookSignIn;",
        "signUp",
        "signUpObject",
        "Lcom/liber8tech/tago/service/SignUp;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# virtual methods
.method public abstract changePassword(Lcom/liber8tech/tago/service/ChangePassword;)Lio/reactivex/Observable;
    .param p1    # Lcom/liber8tech/tago/service/ChangePassword;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liber8tech/tago/service/ChangePassword;",
            ")",
            "Lio/reactivex/Observable<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/auth/change"
    .end annotation
.end method

.method public abstract forgotPassword(Lcom/liber8tech/tago/service/ForgetPassword;)Lio/reactivex/Observable;
    .param p1    # Lcom/liber8tech/tago/service/ForgetPassword;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liber8tech/tago/service/ForgetPassword;",
            ")",
            "Lio/reactivex/Observable<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/auth/forgot"
    .end annotation
.end method

.method public abstract signIn(Lcom/liber8tech/tago/service/SignIn;)Lio/reactivex/Observable;
    .param p1    # Lcom/liber8tech/tago/service/SignIn;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liber8tech/tago/service/SignIn;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/liber8tech/tago/service/SignInResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/auth/signin"
    .end annotation
.end method

.method public abstract signInFacebook(Lcom/liber8tech/tago/service/FacebookSignIn;)Lio/reactivex/Single;
    .param p1    # Lcom/liber8tech/tago/service/FacebookSignIn;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liber8tech/tago/service/FacebookSignIn;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/liber8tech/tago/service/FacebookSignInResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/auth/social/facebook"
    .end annotation
.end method

.method public abstract signUp(Lcom/liber8tech/tago/service/SignUp;)Lio/reactivex/Observable;
    .param p1    # Lcom/liber8tech/tago/service/SignUp;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liber8tech/tago/service/SignUp;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/liber8tech/tago/service/SignInResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/auth/signup"
    .end annotation
.end method
