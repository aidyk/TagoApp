.class final Lcom/liber8tech/tago/service/AuthService$signInFacebook$4;
.super Ljava/lang/Object;
.source "AuthService.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/service/AuthService;->signInFacebook(Landroid/app/Activity;)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "TT;TR;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lcom/liber8tech/tago/service/UpdateProfileData;",
        "it",
        "Lcom/liber8tech/tago/service/FacebookSignInResponse;",
        "apply"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/liber8tech/tago/service/AuthService$signInFacebook$4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/liber8tech/tago/service/AuthService$signInFacebook$4;

    invoke-direct {v0}, Lcom/liber8tech/tago/service/AuthService$signInFacebook$4;-><init>()V

    sput-object v0, Lcom/liber8tech/tago/service/AuthService$signInFacebook$4;->INSTANCE:Lcom/liber8tech/tago/service/AuthService$signInFacebook$4;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/liber8tech/tago/service/FacebookSignInResponse;)Lcom/liber8tech/tago/service/UpdateProfileData;
    .locals 12
    .param p1    # Lcom/liber8tech/tago/service/FacebookSignInResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    new-instance v0, Lcom/liber8tech/tago/service/UpdateProfileData;

    .line 75
    invoke-virtual {p1}, Lcom/liber8tech/tago/service/FacebookSignInResponse;->getUser()Lcom/liber8tech/tago/service/ProfileData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liber8tech/tago/service/ProfileData;->getFirstName()Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-virtual {p1}, Lcom/liber8tech/tago/service/FacebookSignInResponse;->getUser()Lcom/liber8tech/tago/service/ProfileData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liber8tech/tago/service/ProfileData;->getLastName()Ljava/lang/String;

    move-result-object v3

    .line 77
    invoke-virtual {p1}, Lcom/liber8tech/tago/service/FacebookSignInResponse;->getUser()Lcom/liber8tech/tago/service/ProfileData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liber8tech/tago/service/ProfileData;->getProfile()Lcom/liber8tech/tago/service/OptionalProfile;

    move-result-object v1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/liber8tech/tago/service/OptionalProfile;->getBirthYear()Ljava/lang/Integer;

    move-result-object v1

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, v4

    .line 78
    :goto_0
    invoke-virtual {p1}, Lcom/liber8tech/tago/service/FacebookSignInResponse;->getUser()Lcom/liber8tech/tago/service/ProfileData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liber8tech/tago/service/ProfileData;->getProfile()Lcom/liber8tech/tago/service/OptionalProfile;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/liber8tech/tago/service/OptionalProfile;->getCountry()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object v6, v4

    .line 79
    :goto_1
    invoke-virtual {p1}, Lcom/liber8tech/tago/service/FacebookSignInResponse;->getUser()Lcom/liber8tech/tago/service/ProfileData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liber8tech/tago/service/ProfileData;->getProfile()Lcom/liber8tech/tago/service/OptionalProfile;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/liber8tech/tago/service/OptionalProfile;->getGender()Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    goto :goto_2

    :cond_2
    move-object v7, v4

    .line 80
    :goto_2
    invoke-virtual {p1}, Lcom/liber8tech/tago/service/FacebookSignInResponse;->getUser()Lcom/liber8tech/tago/service/ProfileData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liber8tech/tago/service/ProfileData;->getProfile()Lcom/liber8tech/tago/service/OptionalProfile;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/liber8tech/tago/service/OptionalProfile;->getNewsletterSubscription()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object v8, v1

    goto :goto_3

    :cond_3
    move-object v8, v4

    .line 81
    :goto_3
    invoke-virtual {p1}, Lcom/liber8tech/tago/service/FacebookSignInResponse;->getUser()Lcom/liber8tech/tago/service/ProfileData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liber8tech/tago/service/ProfileData;->getProfile()Lcom/liber8tech/tago/service/OptionalProfile;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/liber8tech/tago/service/OptionalProfile;->getAnalytics()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object v9, v1

    goto :goto_4

    :cond_4
    move-object v9, v4

    .line 82
    :goto_4
    invoke-virtual {p1}, Lcom/liber8tech/tago/service/FacebookSignInResponse;->getUser()Lcom/liber8tech/tago/service/ProfileData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liber8tech/tago/service/ProfileData;->getTermsOfCondition()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 83
    invoke-virtual {p1}, Lcom/liber8tech/tago/service/FacebookSignInResponse;->getUser()Lcom/liber8tech/tago/service/ProfileData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liber8tech/tago/service/ProfileData;->getPrivacyPolicy()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 84
    invoke-virtual {p1}, Lcom/liber8tech/tago/service/FacebookSignInResponse;->getUser()Lcom/liber8tech/tago/service/ProfileData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/liber8tech/tago/service/ProfileData;->getCompletedProfile()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    move-object v1, v0

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, p1

    .line 74
    invoke-direct/range {v1 .. v11}, Lcom/liber8tech/tago/service/UpdateProfileData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, Lcom/liber8tech/tago/service/FacebookSignInResponse;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/service/AuthService$signInFacebook$4;->apply(Lcom/liber8tech/tago/service/FacebookSignInResponse;)Lcom/liber8tech/tago/service/UpdateProfileData;

    move-result-object p1

    return-object p1
.end method
