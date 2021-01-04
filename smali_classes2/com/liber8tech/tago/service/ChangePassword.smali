.class public final Lcom/liber8tech/tago/service/ChangePassword;
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
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0007\"\u0004\u0008\u000b\u0010\t\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/liber8tech/tago/service/ChangePassword;",
        "",
        "currentPassword",
        "",
        "newPassword",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "getCurrentPassword",
        "()Ljava/lang/String;",
        "setCurrentPassword",
        "(Ljava/lang/String;)V",
        "getNewPassword",
        "setNewPassword",
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
.field private currentPassword:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private newPassword:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "currentPassword"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newPassword"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/liber8tech/tago/service/ChangePassword;->currentPassword:Ljava/lang/String;

    .line 118
    iput-object p2, p0, Lcom/liber8tech/tago/service/ChangePassword;->newPassword:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getCurrentPassword()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/liber8tech/tago/service/ChangePassword;->currentPassword:Ljava/lang/String;

    return-object v0
.end method

.method public final getNewPassword()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/liber8tech/tago/service/ChangePassword;->newPassword:Ljava/lang/String;

    return-object v0
.end method

.method public final setCurrentPassword(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 117
    iput-object p1, p0, Lcom/liber8tech/tago/service/ChangePassword;->currentPassword:Ljava/lang/String;

    return-void
.end method

.method public final setNewPassword(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 118
    iput-object p1, p0, Lcom/liber8tech/tago/service/ChangePassword;->newPassword:Ljava/lang/String;

    return-void
.end method
