.class public final Lcom/liber8tech/tago/service/AuthService;
.super Ljava/lang/Object;
.source "AuthService.kt"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u001c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011J\u0016\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00142\u0006\u0010\u0016\u001a\u00020\u0011H\u0002J\u0014\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\u0018\u001a\u00020\u0011J\u001c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u000e2\u0006\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u0011J\u0014\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u00142\u0006\u0010\u001e\u001a\u00020\u001fJ,\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u000e2\u0006\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u00112\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\"R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcom/liber8tech/tago/service/AuthService;",
        "",
        "retrofit",
        "Lretrofit2/Retrofit;",
        "runtimeConfig",
        "Lcom/liber8tech/tago/util/RuntimeConfig;",
        "(Lretrofit2/Retrofit;Lcom/liber8tech/tago/util/RuntimeConfig;)V",
        "authApi",
        "Lcom/liber8tech/tago/service/AuthApi;",
        "callbackManager",
        "Lcom/facebook/CallbackManager;",
        "getCallbackManager",
        "()Lcom/facebook/CallbackManager;",
        "changePassword",
        "Lio/reactivex/Observable;",
        "Lokhttp3/ResponseBody;",
        "currentPassword",
        "",
        "newPassword",
        "facebookSignIn",
        "Lio/reactivex/Single;",
        "Lcom/liber8tech/tago/service/FacebookSignInResponse;",
        "token",
        "forgetPassword",
        "email",
        "signIn",
        "Lcom/liber8tech/tago/service/SignInResponse;",
        "password",
        "signInFacebook",
        "Lcom/liber8tech/tago/service/UpdateProfileData;",
        "source",
        "Landroid/app/Activity;",
        "signUp",
        "toc",
        "",
        "pp",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field private final authApi:Lcom/liber8tech/tago/service/AuthApi;

.field private final callbackManager:Lcom/facebook/CallbackManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final runtimeConfig:Lcom/liber8tech/tago/util/RuntimeConfig;


# direct methods
.method public constructor <init>(Lretrofit2/Retrofit;Lcom/liber8tech/tago/util/RuntimeConfig;)V
    .locals 1
    .param p1    # Lretrofit2/Retrofit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/liber8tech/tago/util/RuntimeConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "retrofit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "runtimeConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/liber8tech/tago/service/AuthService;->runtimeConfig:Lcom/liber8tech/tago/util/RuntimeConfig;

    .line 24
    const-class p2, Lcom/liber8tech/tago/service/AuthApi;

    invoke-virtual {p1, p2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "retrofit.create(AuthApi::class.java)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/liber8tech/tago/service/AuthApi;

    iput-object p1, p0, Lcom/liber8tech/tago/service/AuthService;->authApi:Lcom/liber8tech/tago/service/AuthApi;

    .line 26
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object p1

    const-string p2, "CallbackManager.Factory.create()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/liber8tech/tago/service/AuthService;->callbackManager:Lcom/facebook/CallbackManager;

    return-void
.end method

.method public static final synthetic access$facebookSignIn(Lcom/liber8tech/tago/service/AuthService;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 21
    invoke-direct {p0, p1}, Lcom/liber8tech/tago/service/AuthService;->facebookSignIn(Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getRuntimeConfig$p(Lcom/liber8tech/tago/service/AuthService;)Lcom/liber8tech/tago/util/RuntimeConfig;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 21
    iget-object p0, p0, Lcom/liber8tech/tago/service/AuthService;->runtimeConfig:Lcom/liber8tech/tago/util/RuntimeConfig;

    return-object p0
.end method

.method private final facebookSignIn(Ljava/lang/String;)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/liber8tech/tago/service/FacebookSignInResponse;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/liber8tech/tago/service/AuthService;->authApi:Lcom/liber8tech/tago/service/AuthApi;

    new-instance v1, Lcom/liber8tech/tago/service/FacebookSignIn;

    invoke-direct {v1, p1}, Lcom/liber8tech/tago/service/FacebookSignIn;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/liber8tech/tago/service/AuthApi;->signInFacebook(Lcom/liber8tech/tago/service/FacebookSignIn;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final changePassword(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "currentPassword"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newPassword"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/liber8tech/tago/service/AuthService;->authApi:Lcom/liber8tech/tago/service/AuthApi;

    new-instance v1, Lcom/liber8tech/tago/service/ChangePassword;

    invoke-direct {v1, p1, p2}, Lcom/liber8tech/tago/service/ChangePassword;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/liber8tech/tago/service/AuthApi;->changePassword(Lcom/liber8tech/tago/service/ChangePassword;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final forgetPassword(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "email"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/liber8tech/tago/service/AuthService;->authApi:Lcom/liber8tech/tago/service/AuthApi;

    new-instance v1, Lcom/liber8tech/tago/service/ForgetPassword;

    invoke-direct {v1, p1}, Lcom/liber8tech/tago/service/ForgetPassword;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/liber8tech/tago/service/AuthApi;->forgotPassword(Lcom/liber8tech/tago/service/ForgetPassword;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final getCallbackManager()Lcom/facebook/CallbackManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/liber8tech/tago/service/AuthService;->callbackManager:Lcom/facebook/CallbackManager;

    return-object v0
.end method

.method public final signIn(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/liber8tech/tago/service/SignInResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "email"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/liber8tech/tago/service/AuthService;->authApi:Lcom/liber8tech/tago/service/AuthApi;

    new-instance v1, Lcom/liber8tech/tago/service/SignIn;

    invoke-direct {v1, p1, p2}, Lcom/liber8tech/tago/service/SignIn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/liber8tech/tago/service/AuthApi;->signIn(Lcom/liber8tech/tago/service/SignIn;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/liber8tech/tago/service/AuthService$signIn$1;

    invoke-direct {p2, p0}, Lcom/liber8tech/tago/service/AuthService$signIn$1;-><init>(Lcom/liber8tech/tago/service/AuthService;)V

    check-cast p2, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "authApi.signIn(SignIn(em\u2026InResponse.user.id)\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final signInFacebook(Landroid/app/Activity;)Lio/reactivex/Single;
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/liber8tech/tago/service/UpdateProfileData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    new-instance v0, Lcom/liber8tech/tago/service/AuthService$signInFacebook$1;

    invoke-direct {v0, p0, p1}, Lcom/liber8tech/tago/service/AuthService$signInFacebook$1;-><init>(Lcom/liber8tech/tago/service/AuthService;Landroid/app/Activity;)V

    check-cast v0, Lio/reactivex/SingleOnSubscribe;

    invoke-static {v0}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object p1

    .line 68
    new-instance v0, Lcom/liber8tech/tago/service/AuthService$signInFacebook$2;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/service/AuthService$signInFacebook$2;-><init>(Lcom/liber8tech/tago/service/AuthService;)V

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    .line 70
    new-instance v0, Lcom/liber8tech/tago/service/AuthService$signInFacebook$3;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/service/AuthService$signInFacebook$3;-><init>(Lcom/liber8tech/tago/service/AuthService;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->doOnSuccess(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object p1

    .line 73
    sget-object v0, Lcom/liber8tech/tago/service/AuthService$signInFacebook$4;->INSTANCE:Lcom/liber8tech/tago/service/AuthService$signInFacebook$4;

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "Single.create<String> { \u2026r.completedProfile)\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final signUp(Ljava/lang/String;Ljava/lang/String;ZZ)Lio/reactivex/Observable;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ)",
            "Lio/reactivex/Observable<",
            "Lcom/liber8tech/tago/service/SignInResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "email"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/liber8tech/tago/service/AuthService;->authApi:Lcom/liber8tech/tago/service/AuthApi;

    new-instance v1, Lcom/liber8tech/tago/service/SignUp;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/liber8tech/tago/service/SignUp;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-interface {v0, v1}, Lcom/liber8tech/tago/service/AuthApi;->signUp(Lcom/liber8tech/tago/service/SignUp;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/liber8tech/tago/service/AuthService$signUp$1;

    invoke-direct {p2, p0}, Lcom/liber8tech/tago/service/AuthService$signUp$1;-><init>(Lcom/liber8tech/tago/service/AuthService;)V

    check-cast p2, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "authApi.signUp(SignUp(em\u2026InResponse.user.id)\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
