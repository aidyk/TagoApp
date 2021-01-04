.class public final Lcom/liber8tech/tago/service/ProfileService;
.super Ljava/lang/Object;
.source "ProfileService.kt"


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
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tJ\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\t2\u0006\u0010\r\u001a\u00020\nJ\u001c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\t2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010R\u0016\u0010\u0005\u001a\n \u0007*\u0004\u0018\u00010\u00060\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/liber8tech/tago/service/ProfileService;",
        "",
        "retrofit",
        "Lretrofit2/Retrofit;",
        "(Lretrofit2/Retrofit;)V",
        "profileApi",
        "Lcom/liber8tech/tago/service/ProfileApi;",
        "kotlin.jvm.PlatformType",
        "getProfile",
        "Lio/reactivex/Single;",
        "Lcom/liber8tech/tago/service/UpdateProfileData;",
        "updateProfile",
        "",
        "profile",
        "updateTerms",
        "termsOfCondition",
        "",
        "privacyPolicy",
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
.field private final profileApi:Lcom/liber8tech/tago/service/ProfileApi;


# direct methods
.method public constructor <init>(Lretrofit2/Retrofit;)V
    .locals 1
    .param p1    # Lretrofit2/Retrofit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "retrofit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-class v0, Lcom/liber8tech/tago/service/ProfileApi;

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/liber8tech/tago/service/ProfileApi;

    iput-object p1, p0, Lcom/liber8tech/tago/service/ProfileService;->profileApi:Lcom/liber8tech/tago/service/ProfileApi;

    return-void
.end method


# virtual methods
.method public final getProfile()Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lcom/liber8tech/tago/service/UpdateProfileData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/liber8tech/tago/service/ProfileService;->profileApi:Lcom/liber8tech/tago/service/ProfileApi;

    invoke-interface {v0}, Lcom/liber8tech/tago/service/ProfileApi;->getProfile()Lio/reactivex/Single;

    move-result-object v0

    .line 22
    sget-object v1, Lcom/liber8tech/tago/service/ProfileService$getProfile$1;->INSTANCE:Lcom/liber8tech/tago/service/ProfileService$getProfile$1;

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v0

    const-string v1, "profileApi.getProfile()\n\u2026completedProfile)\n      }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final updateProfile(Lcom/liber8tech/tago/service/UpdateProfileData;)Lio/reactivex/Single;
    .locals 1
    .param p1    # Lcom/liber8tech/tago/service/UpdateProfileData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liber8tech/tago/service/UpdateProfileData;",
            ")",
            "Lio/reactivex/Single<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "profile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/liber8tech/tago/service/ProfileService;->profileApi:Lcom/liber8tech/tago/service/ProfileApi;

    invoke-interface {v0, p1}, Lcom/liber8tech/tago/service/ProfileApi;->updateProfile(Lcom/liber8tech/tago/service/UpdateProfileData;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public final updateTerms(ZZ)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lio/reactivex/Single<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/liber8tech/tago/service/ProfileService;->profileApi:Lcom/liber8tech/tago/service/ProfileApi;

    new-instance v1, Lcom/liber8tech/tago/service/Terms;

    invoke-direct {v1, p1, p2}, Lcom/liber8tech/tago/service/Terms;-><init>(ZZ)V

    invoke-interface {v0, v1}, Lcom/liber8tech/tago/service/ProfileApi;->updateTerms(Lcom/liber8tech/tago/service/Terms;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method
