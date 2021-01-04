.class final Lcom/liber8tech/tago/service/AuthService$signInFacebook$3;
.super Ljava/lang/Object;
.source "AuthService.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


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
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/liber8tech/tago/service/FacebookSignInResponse;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "signInResponse",
        "Lcom/liber8tech/tago/service/FacebookSignInResponse;",
        "kotlin.jvm.PlatformType",
        "accept"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liber8tech/tago/service/AuthService;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/service/AuthService;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/service/AuthService$signInFacebook$3;->this$0:Lcom/liber8tech/tago/service/AuthService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/liber8tech/tago/service/FacebookSignInResponse;)V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/liber8tech/tago/service/AuthService$signInFacebook$3;->this$0:Lcom/liber8tech/tago/service/AuthService;

    invoke-static {v0}, Lcom/liber8tech/tago/service/AuthService;->access$getRuntimeConfig$p(Lcom/liber8tech/tago/service/AuthService;)Lcom/liber8tech/tago/util/RuntimeConfig;

    move-result-object v0

    invoke-virtual {p1}, Lcom/liber8tech/tago/service/FacebookSignInResponse;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liber8tech/tago/util/RuntimeConfig;->setToken(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/liber8tech/tago/service/AuthService$signInFacebook$3;->this$0:Lcom/liber8tech/tago/service/AuthService;

    invoke-static {v0}, Lcom/liber8tech/tago/service/AuthService;->access$getRuntimeConfig$p(Lcom/liber8tech/tago/service/AuthService;)Lcom/liber8tech/tago/util/RuntimeConfig;

    move-result-object v0

    invoke-virtual {p1}, Lcom/liber8tech/tago/service/FacebookSignInResponse;->getUser()Lcom/liber8tech/tago/service/ProfileData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/liber8tech/tago/service/ProfileData;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/liber8tech/tago/util/RuntimeConfig;->setUserId(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p1, Lcom/liber8tech/tago/service/FacebookSignInResponse;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/service/AuthService$signInFacebook$3;->accept(Lcom/liber8tech/tago/service/FacebookSignInResponse;)V

    return-void
.end method
