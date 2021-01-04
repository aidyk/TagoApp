.class public final Lcom/liber8tech/tago/protocol/HelpersKt;
.super Ljava/lang/Object;
.source "Helpers.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0012\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0005\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\u000c\u0010\u0003\u001a\u0004\u0018\u00010\u0001*\u00020\u0001\u001a\n\u0010\u0004\u001a\u00020\u0002*\u00020\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "toUpperLowerBytes",
        "",
        "",
        "trim",
        "uint",
        "",
        "app_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# direct methods
.method public static final toUpperLowerBytes(I)[B
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x2

    .line 13
    new-array v0, v0, [B

    const v1, 0xff00

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x1

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static final trim([B)[B
    .locals 5
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    array-length v0, p0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 5
    array-length v0, p0

    sub-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 6
    array-length v4, p0

    sub-int/2addr v4, v1

    invoke-static {p0, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final uint(B)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method
