.class public final Lcom/liber8tech/tago/android/adapter/PatternListItem;
.super Lcom/liber8tech/tago/android/adapter/MainListItem;
.source "PatternAdapter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/liber8tech/tago/android/adapter/PatternListItem;",
        "Lcom/liber8tech/tago/android/adapter/MainListItem;",
        "pattern",
        "Lcom/liber8tech/tago/model/Pattern;",
        "(Lcom/liber8tech/tago/model/Pattern;)V",
        "getPattern",
        "()Lcom/liber8tech/tago/model/Pattern;",
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
.field private final pattern:Lcom/liber8tech/tago/model/Pattern;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/liber8tech/tago/model/Pattern;)V
    .locals 1
    .param p1    # Lcom/liber8tech/tago/model/Pattern;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pattern"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, v0}, Lcom/liber8tech/tago/android/adapter/MainListItem;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/liber8tech/tago/android/adapter/PatternListItem;->pattern:Lcom/liber8tech/tago/model/Pattern;

    return-void
.end method


# virtual methods
.method public final getPattern()Lcom/liber8tech/tago/model/Pattern;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/liber8tech/tago/android/adapter/PatternListItem;->pattern:Lcom/liber8tech/tago/model/Pattern;

    return-object v0
.end method
