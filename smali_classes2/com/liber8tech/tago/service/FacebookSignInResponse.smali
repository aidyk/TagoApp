.class public final Lcom/liber8tech/tago/service/FacebookSignInResponse;
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
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001J\t\u0010\u0013\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/liber8tech/tago/service/FacebookSignInResponse;",
        "",
        "user",
        "Lcom/liber8tech/tago/service/ProfileData;",
        "token",
        "",
        "(Lcom/liber8tech/tago/service/ProfileData;Ljava/lang/String;)V",
        "getToken",
        "()Ljava/lang/String;",
        "getUser",
        "()Lcom/liber8tech/tago/service/ProfileData;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
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

.field private final user:Lcom/liber8tech/tago/service/ProfileData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/liber8tech/tago/service/ProfileData;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/liber8tech/tago/service/ProfileData;
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

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liber8tech/tago/service/FacebookSignInResponse;->user:Lcom/liber8tech/tago/service/ProfileData;

    iput-object p2, p0, Lcom/liber8tech/tago/service/FacebookSignInResponse;->token:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/liber8tech/tago/service/FacebookSignInResponse;Lcom/liber8tech/tago/service/ProfileData;Ljava/lang/String;ILjava/lang/Object;)Lcom/liber8tech/tago/service/FacebookSignInResponse;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/liber8tech/tago/service/FacebookSignInResponse;->user:Lcom/liber8tech/tago/service/ProfileData;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/liber8tech/tago/service/FacebookSignInResponse;->token:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/liber8tech/tago/service/FacebookSignInResponse;->copy(Lcom/liber8tech/tago/service/ProfileData;Ljava/lang/String;)Lcom/liber8tech/tago/service/FacebookSignInResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/liber8tech/tago/service/ProfileData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/liber8tech/tago/service/FacebookSignInResponse;->user:Lcom/liber8tech/tago/service/ProfileData;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/liber8tech/tago/service/FacebookSignInResponse;->token:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Lcom/liber8tech/tago/service/ProfileData;Ljava/lang/String;)Lcom/liber8tech/tago/service/FacebookSignInResponse;
    .locals 1
    .param p1    # Lcom/liber8tech/tago/service/ProfileData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/liber8tech/tago/service/FacebookSignInResponse;

    invoke-direct {v0, p1, p2}, Lcom/liber8tech/tago/service/FacebookSignInResponse;-><init>(Lcom/liber8tech/tago/service/ProfileData;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/liber8tech/tago/service/FacebookSignInResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/liber8tech/tago/service/FacebookSignInResponse;

    iget-object v0, p0, Lcom/liber8tech/tago/service/FacebookSignInResponse;->user:Lcom/liber8tech/tago/service/ProfileData;

    iget-object v1, p1, Lcom/liber8tech/tago/service/FacebookSignInResponse;->user:Lcom/liber8tech/tago/service/ProfileData;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liber8tech/tago/service/FacebookSignInResponse;->token:Ljava/lang/String;

    iget-object p1, p1, Lcom/liber8tech/tago/service/FacebookSignInResponse;->token:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getToken()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/liber8tech/tago/service/FacebookSignInResponse;->token:Ljava/lang/String;

    return-object v0
.end method

.method public final getUser()Lcom/liber8tech/tago/service/ProfileData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/liber8tech/tago/service/FacebookSignInResponse;->user:Lcom/liber8tech/tago/service/ProfileData;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/liber8tech/tago/service/FacebookSignInResponse;->user:Lcom/liber8tech/tago/service/ProfileData;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/liber8tech/tago/service/FacebookSignInResponse;->token:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FacebookSignInResponse(user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/liber8tech/tago/service/FacebookSignInResponse;->user:Lcom/liber8tech/tago/service/ProfileData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/liber8tech/tago/service/FacebookSignInResponse;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
