.class public final Lcom/liber8tech/tago/service/SignInResponse;
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
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/liber8tech/tago/service/SignInResponse;",
        "",
        "user",
        "Lcom/liber8tech/tago/service/User;",
        "token",
        "",
        "(Lcom/liber8tech/tago/service/User;Ljava/lang/String;)V",
        "getToken",
        "()Ljava/lang/String;",
        "getUser",
        "()Lcom/liber8tech/tago/service/User;",
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
.field private final token:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final user:Lcom/liber8tech/tago/service/User;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/liber8tech/tago/service/User;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/liber8tech/tago/service/User;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liber8tech/tago/service/SignInResponse;->user:Lcom/liber8tech/tago/service/User;

    iput-object p2, p0, Lcom/liber8tech/tago/service/SignInResponse;->token:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getToken()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/liber8tech/tago/service/SignInResponse;->token:Ljava/lang/String;

    return-object v0
.end method

.method public final getUser()Lcom/liber8tech/tago/service/User;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/liber8tech/tago/service/SignInResponse;->user:Lcom/liber8tech/tago/service/User;

    return-object v0
.end method
