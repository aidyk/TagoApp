.class public final Lcom/liber8tech/tago/android/adapter/PatternAdapter$Companion;
.super Ljava/lang/Object;
.source "PatternAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liber8tech/tago/android/adapter/PatternAdapter;
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
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/liber8tech/tago/android/adapter/PatternAdapter$Companion;",
        "",
        "()V",
        "HeaderType",
        "",
        "getHeaderType",
        "()I",
        "PatternType",
        "getPatternType",
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

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/liber8tech/tago/android/adapter/PatternAdapter$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHeaderType()I
    .locals 1

    .line 30
    invoke-static {}, Lcom/liber8tech/tago/android/adapter/PatternAdapter;->access$getHeaderType$cp()I

    move-result v0

    return v0
.end method

.method public final getPatternType()I
    .locals 1

    .line 31
    invoke-static {}, Lcom/liber8tech/tago/android/adapter/PatternAdapter;->access$getPatternType$cp()I

    move-result v0

    return v0
.end method
