.class public final Lcom/liber8tech/tago/protocol/Message$Companion;
.super Ljava/lang/Object;
.source "Message.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liber8tech/tago/protocol/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMessage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Message.kt\ncom/liber8tech/tago/protocol/Message$Companion\n*L\n1#1,180:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0005\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002JQ\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0002\u00a2\u0006\u0002\u0010\u0012J7\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0002\u0010\u0014J\u0016\u0010\u0015\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/liber8tech/tago/protocol/Message$Companion;",
        "",
        "()V",
        "close",
        "",
        "open",
        "createMessage",
        "Lcom/liber8tech/tago/protocol/Message;",
        "command",
        "Lcom/liber8tech/tago/protocol/Command;",
        "payload",
        "",
        "partCount",
        "imageId",
        "",
        "timeStamp",
        "kioskMode",
        "",
        "(Lcom/liber8tech/tago/protocol/Command;[BLjava/lang/Byte;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;)Lcom/liber8tech/tago/protocol/Message;",
        "fromCommand",
        "(Lcom/liber8tech/tago/protocol/Command;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;)Lcom/liber8tech/tago/protocol/Message;",
        "withPayload",
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

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/liber8tech/tago/protocol/Message$Companion;-><init>()V

    return-void
.end method

.method private final createMessage(Lcom/liber8tech/tago/protocol/Command;[BLjava/lang/Byte;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;)Lcom/liber8tech/tago/protocol/Message;
    .locals 6

    const/16 v0, 0x12

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-nez p2, :cond_0

    .line 79
    new-array p2, v0, [B

    goto :goto_1

    .line 81
    :cond_0
    array-length v3, p2

    add-int/2addr v3, v0

    new-array v0, v3, [B

    if-eqz p3, :cond_1

    .line 82
    invoke-virtual {p3}, Ljava/lang/Byte;->byteValue()B

    move-result p3

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    aput-byte p3, v0, v1

    const/16 p3, 0x10

    .line 83
    array-length v3, p2

    invoke-static {p2, v2, v0, p3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p2, v0

    .line 86
    :goto_1
    array-length p3, p2

    invoke-static {p3}, Lcom/liber8tech/tago/protocol/HelpersKt;->toUpperLowerBytes(I)[B

    move-result-object p3

    .line 87
    aget-byte v0, p3, v2

    aput-byte v0, p2, v2

    const/4 v0, 0x1

    .line 88
    aget-byte p3, p3, v0

    aput-byte p3, p2, v0

    .line 89
    invoke-virtual {p1}, Lcom/liber8tech/tago/protocol/Command;->getByte()S

    move-result p3

    int-to-byte p3, p3

    const/4 v3, 0x2

    aput-byte p3, p2, v3

    .line 91
    sget-object p3, Lcom/liber8tech/tago/protocol/Command;->KIOSK_MODE:Lcom/liber8tech/tago/protocol/Command;

    if-ne p1, p3, :cond_2

    if-eqz p6, :cond_2

    .line 92
    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-byte p3, p3

    aput-byte p3, p2, v1

    :cond_2
    const/16 p3, 0x8

    if-eqz p4, :cond_4

    .line 95
    sget-object p6, Lcom/liber8tech/tago/protocol/Command;->NEW_IMAGE:Lcom/liber8tech/tago/protocol/Command;

    if-eq p1, p6, :cond_3

    sget-object p6, Lcom/liber8tech/tago/protocol/Command;->FIND_IMAGE:Lcom/liber8tech/tago/protocol/Command;

    if-ne p1, p6, :cond_4

    .line 96
    :cond_3
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p6

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p6, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p6

    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p6

    const-string v4, "ByteBuffer.allocate(java\u2026.putLong(imageId).array()"

    invoke-static {p6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p6}, Lkotlin/collections/ArraysKt;->reversedArray([B)[B

    move-result-object p6

    .line 97
    invoke-static {p6, v2, p2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    if-eqz p5, :cond_5

    .line 100
    sget-object p6, Lcom/liber8tech/tago/protocol/Command;->ACK:Lcom/liber8tech/tago/protocol/Command;

    if-ne p1, p6, :cond_5

    .line 101
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide p5

    const/16 v4, 0x3e8

    int-to-long v4, v4

    div-long/2addr p5, v4

    invoke-virtual {p1, p5, p6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    const-string p5, "ByteBuffer.allocate(java\u2026timeStamp / 1000).array()"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->reversedArray([B)[B

    move-result-object p1

    .line 102
    invoke-static {p1, v2, p2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    :cond_5
    new-instance p1, Lcom/liber8tech/tago/protocol/Message;

    invoke-direct {p1, p2, p4}, Lcom/liber8tech/tago/protocol/Message;-><init>([BLjava/lang/Long;)V

    .line 106
    invoke-static {p1}, Lcom/liber8tech/tago/protocol/Message;->access$crc(Lcom/liber8tech/tago/protocol/Message;)[B

    move-result-object p3

    .line 107
    invoke-virtual {p1}, Lcom/liber8tech/tago/protocol/Message;->getBytes()[B

    move-result-object p4

    array-length p5, p2

    sub-int/2addr p5, v3

    aget-byte p6, p3, v2

    aput-byte p6, p4, p5

    .line 108
    invoke-virtual {p1}, Lcom/liber8tech/tago/protocol/Message;->getBytes()[B

    move-result-object p4

    array-length p2, p2

    sub-int/2addr p2, v0

    aget-byte p3, p3, v0

    aput-byte p3, p4, p2

    return-object p1
.end method

.method static synthetic createMessage$default(Lcom/liber8tech/tago/protocol/Message$Companion;Lcom/liber8tech/tago/protocol/Command;[BLjava/lang/Byte;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/liber8tech/tago/protocol/Message;
    .locals 6

    and-int/lit8 v1, p7, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 72
    move-object v1, v2

    check-cast v1, [B

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    and-int/lit8 v3, p7, 0x4

    if-eqz v3, :cond_1

    .line 73
    move-object v3, v2

    check-cast v3, Ljava/lang/Byte;

    goto :goto_1

    :cond_1
    move-object v3, p3

    :goto_1
    and-int/lit8 v4, p7, 0x8

    if-eqz v4, :cond_2

    .line 74
    move-object v4, v2

    check-cast v4, Ljava/lang/Long;

    goto :goto_2

    :cond_2
    move-object v4, p4

    :goto_2
    and-int/lit8 v5, p7, 0x10

    if-eqz v5, :cond_3

    .line 75
    move-object v5, v2

    check-cast v5, Ljava/lang/Long;

    goto :goto_3

    :cond_3
    move-object v5, p5

    :goto_3
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_4

    .line 76
    move-object v0, v2

    check-cast v0, Ljava/lang/Integer;

    goto :goto_4

    :cond_4
    move-object v0, p6

    :goto_4
    move-object p2, p0

    move-object p3, p1

    move-object p4, v1

    move-object p5, v3

    move-object p6, v4

    move-object p7, v5

    move-object p8, v0

    invoke-direct/range {p2 .. p8}, Lcom/liber8tech/tago/protocol/Message$Companion;->createMessage(Lcom/liber8tech/tago/protocol/Command;[BLjava/lang/Byte;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;)Lcom/liber8tech/tago/protocol/Message;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic fromCommand$default(Lcom/liber8tech/tago/protocol/Message$Companion;Lcom/liber8tech/tago/protocol/Command;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/liber8tech/tago/protocol/Message;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    .line 65
    move-object p2, v0

    check-cast p2, Ljava/lang/Long;

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    move-object p3, v0

    check-cast p3, Ljava/lang/Long;

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move-object p4, v0

    check-cast p4, Ljava/lang/Integer;

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/liber8tech/tago/protocol/Message$Companion;->fromCommand(Lcom/liber8tech/tago/protocol/Command;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;)Lcom/liber8tech/tago/protocol/Message;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final fromCommand(Lcom/liber8tech/tago/protocol/Command;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;)Lcom/liber8tech/tago/protocol/Message;
    .locals 8
    .param p1    # Lcom/liber8tech/tago/protocol/Command;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "command"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    move-object v1, p0

    check-cast v1, Lcom/liber8tech/tago/protocol/Message$Companion;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    const/4 v3, 0x0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/liber8tech/tago/protocol/Message$Companion;->createMessage(Lcom/liber8tech/tago/protocol/Command;[BLjava/lang/Byte;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;)Lcom/liber8tech/tago/protocol/Message;

    move-result-object p1

    return-object p1
.end method

.method public final withPayload([BB)Lcom/liber8tech/tago/protocol/Message;
    .locals 10
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    move-object v1, p0

    check-cast v1, Lcom/liber8tech/tago/protocol/Message$Companion;

    sget-object v2, Lcom/liber8tech/tago/protocol/Command;->DATA_PART_SEND:Lcom/liber8tech/tago/protocol/Command;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x38

    const/4 v9, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v9}, Lcom/liber8tech/tago/protocol/Message$Companion;->createMessage$default(Lcom/liber8tech/tago/protocol/Message$Companion;Lcom/liber8tech/tago/protocol/Command;[BLjava/lang/Byte;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/liber8tech/tago/protocol/Message;

    move-result-object p1

    return-object p1
.end method
