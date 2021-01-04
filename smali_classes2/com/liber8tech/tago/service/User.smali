.class public final Lcom/liber8tech/tago/service/User;
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
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/liber8tech/tago/service/User;",
        "",
        "id",
        "",
        "tocAccepted",
        "",
        "ppAccepted",
        "(Ljava/lang/String;ZZ)V",
        "getId",
        "()Ljava/lang/String;",
        "getPpAccepted",
        "()Z",
        "getTocAccepted",
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
.field private final id:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final ppAccepted:Z

.field private final tocAccepted:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liber8tech/tago/service/User;->id:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/liber8tech/tago/service/User;->tocAccepted:Z

    iput-boolean p3, p0, Lcom/liber8tech/tago/service/User;->ppAccepted:Z

    return-void
.end method


# virtual methods
.method public final getId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/liber8tech/tago/service/User;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getPpAccepted()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lcom/liber8tech/tago/service/User;->ppAccepted:Z

    return v0
.end method

.method public final getTocAccepted()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lcom/liber8tech/tago/service/User;->tocAccepted:Z

    return v0
.end method
