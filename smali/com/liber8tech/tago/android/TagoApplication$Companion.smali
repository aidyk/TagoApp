.class public final Lcom/liber8tech/tago/android/TagoApplication$Companion;
.super Ljava/lang/Object;
.source "TagoApplication.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liber8tech/tago/android/TagoApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u00020\nX\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/liber8tech/tago/android/TagoApplication$Companion;",
        "",
        "()V",
        "instance",
        "Lcom/liber8tech/tago/android/TagoApplication;",
        "getInstance",
        "()Lcom/liber8tech/tago/android/TagoApplication;",
        "setInstance",
        "(Lcom/liber8tech/tago/android/TagoApplication;)V",
        "mock",
        "",
        "getMock",
        "()Z",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/liber8tech/tago/android/TagoApplication$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/liber8tech/tago/android/TagoApplication;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 27
    invoke-static {}, Lcom/liber8tech/tago/android/TagoApplication;->access$getInstance$cp()Lcom/liber8tech/tago/android/TagoApplication;

    move-result-object v0

    return-object v0
.end method

.method public final getMock()Z
    .locals 1

    .line 26
    invoke-static {}, Lcom/liber8tech/tago/android/TagoApplication;->access$getMock$cp()Z

    move-result v0

    return v0
.end method

.method public final setInstance(Lcom/liber8tech/tago/android/TagoApplication;)V
    .locals 1
    .param p1    # Lcom/liber8tech/tago/android/TagoApplication;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-static {p1}, Lcom/liber8tech/tago/android/TagoApplication;->access$setInstance$cp(Lcom/liber8tech/tago/android/TagoApplication;)V

    return-void
.end method
