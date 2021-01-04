.class public final Lcom/liber8tech/tago/protocol/Message;
.super Ljava/lang/Object;
.source "Message.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liber8tech/tago/protocol/Message$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMessage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Message.kt\ncom/liber8tech/tago/protocol/Message\n+ 2 IntrinsicArrayConstructors.kt\norg/jetbrains/kotlin/codegen/intrinsics/IntrinsicArrayConstructorsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,180:1\n98#2,5:181\n10674#3,2:186\n*E\n*S KotlinDebug\n*F\n+ 1 Message.kt\ncom/liber8tech/tago/protocol/Message\n*L\n152#1,5:181\n176#1,2:186\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\u000c\u001a\u00020\rJ\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000f2\u0006\u0010\u0010\u001a\u00020\rJ\u0006\u0010\u0011\u001a\u00020\u0012J\u0008\u0010\u0013\u001a\u00020\u0003H\u0002J\u0006\u0010\u0014\u001a\u00020\u0015J\u0006\u0010\u0016\u001a\u00020\u0017J\u0008\u0010\u0018\u001a\u00020\u0003H\u0002J\u0008\u0010\u0019\u001a\u00020\u0015H\u0016J\u0006\u0010\u001a\u001a\u00020\u0003J\u0006\u0010\u001b\u001a\u00020\rR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010\u000b\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/liber8tech/tago/protocol/Message;",
        "",
        "bytes",
        "",
        "imageId",
        "",
        "([BLjava/lang/Long;)V",
        "getBytes",
        "()[B",
        "getImageId",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "battery",
        "",
        "chunks",
        "Lio/reactivex/Observable;",
        "mtu",
        "command",
        "Lcom/liber8tech/tago/protocol/Command;",
        "crc",
        "firmwareVersion",
        "",
        "isValid",
        "",
        "size",
        "toString",
        "toWrappedMessage",
        "voltage",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# static fields
.field public static final Companion:Lcom/liber8tech/tago/protocol/Message$Companion;

# The value of this static final field might be set in the static constructor
.field private static final close:B = 0x3et

# The value of this static final field might be set in the static constructor
.field private static final open:B = 0x3ct


# instance fields
.field private final bytes:[B
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final imageId:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/liber8tech/tago/protocol/Message$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/liber8tech/tago/protocol/Message$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/liber8tech/tago/protocol/Message;->Companion:Lcom/liber8tech/tago/protocol/Message$Companion;

    const/16 v0, 0x3c

    .line 62
    sput-byte v0, Lcom/liber8tech/tago/protocol/Message;->open:B

    const/16 v0, 0x3e

    .line 63
    sput-byte v0, Lcom/liber8tech/tago/protocol/Message;->close:B

    return-void
.end method

.method public constructor <init>([BLjava/lang/Long;)V
    .locals 1
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liber8tech/tago/protocol/Message;->bytes:[B

    iput-object p2, p0, Lcom/liber8tech/tago/protocol/Message;->imageId:Ljava/lang/Long;

    return-void
.end method

.method public synthetic constructor <init>([BLjava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 59
    check-cast p2, Ljava/lang/Long;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/liber8tech/tago/protocol/Message;-><init>([BLjava/lang/Long;)V

    return-void
.end method

.method public static final synthetic access$crc(Lcom/liber8tech/tago/protocol/Message;)[B
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 59
    invoke-direct {p0}, Lcom/liber8tech/tago/protocol/Message;->crc()[B

    move-result-object p0

    return-object p0
.end method

.method private final crc()[B
    .locals 4

    .line 169
    sget-object v0, Lcom/liber8tech/tago/protocol/CRC16;->INSTANCE:Lcom/liber8tech/tago/protocol/CRC16;

    iget-object v1, p0, Lcom/liber8tech/tago/protocol/Message;->bytes:[B

    iget-object v2, p0, Lcom/liber8tech/tago/protocol/Message;->bytes:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/liber8tech/tago/protocol/CRC16;->calculate([BII)[B

    move-result-object v0

    return-object v0
.end method

.method private final size()[B
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/liber8tech/tago/protocol/Message;->bytes:[B

    array-length v0, v0

    invoke-static {v0}, Lcom/liber8tech/tago/protocol/HelpersKt;->toUpperLowerBytes(I)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final battery()I
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/liber8tech/tago/protocol/Message;->bytes:[B

    const/4 v1, 0x5

    aget-byte v0, v0, v1

    invoke-static {v0}, Lcom/liber8tech/tago/protocol/HelpersKt;->uint(B)I

    move-result v0

    .line 148
    iget-object v1, p0, Lcom/liber8tech/tago/protocol/Message;->bytes:[B

    const/4 v2, 0x4

    aget-byte v1, v1, v2

    invoke-static {v1}, Lcom/liber8tech/tago/protocol/HelpersKt;->uint(B)I

    move-result v1

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v1

    return v0
.end method

.method public final chunks(I)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/Observable<",
            "[B>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 166
    invoke-virtual {p0}, Lcom/liber8tech/tago/protocol/Message;->toWrappedMessage()[B

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->asIterable([B)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->buffer(I)Lio/reactivex/Observable;

    move-result-object p1

    .line 167
    sget-object v0, Lcom/liber8tech/tago/protocol/Message$chunks$1;->INSTANCE:Lcom/liber8tech/tago/protocol/Message$chunks$1;

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "Observable.fromIterable(\u2026t.size, { i -> it[i] }) }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final command()Lcom/liber8tech/tago/protocol/Command;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/liber8tech/tago/protocol/Message;->bytes:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    const/16 v1, -0x60

    if-eq v0, v1, :cond_1

    const/16 v1, -0x50

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 141
    sget-object v0, Lcom/liber8tech/tago/protocol/Command;->UNKNOWN:Lcom/liber8tech/tago/protocol/Command;

    goto :goto_0

    .line 132
    :pswitch_0
    sget-object v0, Lcom/liber8tech/tago/protocol/Command;->KIOSK_MODE:Lcom/liber8tech/tago/protocol/Command;

    goto :goto_0

    .line 138
    :pswitch_1
    sget-object v0, Lcom/liber8tech/tago/protocol/Command;->IMAGE_NOT_FOUND:Lcom/liber8tech/tago/protocol/Command;

    goto :goto_0

    .line 137
    :pswitch_2
    sget-object v0, Lcom/liber8tech/tago/protocol/Command;->IMAGE_FOUND:Lcom/liber8tech/tago/protocol/Command;

    goto :goto_0

    .line 136
    :pswitch_3
    sget-object v0, Lcom/liber8tech/tago/protocol/Command;->FIND_IMAGE:Lcom/liber8tech/tago/protocol/Command;

    goto :goto_0

    .line 135
    :pswitch_4
    sget-object v0, Lcom/liber8tech/tago/protocol/Command;->DATA_PART_SEND:Lcom/liber8tech/tago/protocol/Command;

    goto :goto_0

    .line 134
    :pswitch_5
    sget-object v0, Lcom/liber8tech/tago/protocol/Command;->IMAGE_DOWNLOADED:Lcom/liber8tech/tago/protocol/Command;

    goto :goto_0

    .line 133
    :pswitch_6
    sget-object v0, Lcom/liber8tech/tago/protocol/Command;->NEW_IMAGE:Lcom/liber8tech/tago/protocol/Command;

    goto :goto_0

    .line 131
    :pswitch_7
    sget-object v0, Lcom/liber8tech/tago/protocol/Command;->SWITCH_TO_BT:Lcom/liber8tech/tago/protocol/Command;

    goto :goto_0

    .line 130
    :pswitch_8
    sget-object v0, Lcom/liber8tech/tago/protocol/Command;->SWITCH_TO_BLE:Lcom/liber8tech/tago/protocol/Command;

    goto :goto_0

    .line 129
    :pswitch_9
    sget-object v0, Lcom/liber8tech/tago/protocol/Command;->SYN:Lcom/liber8tech/tago/protocol/Command;

    goto :goto_0

    .line 128
    :pswitch_a
    sget-object v0, Lcom/liber8tech/tago/protocol/Command;->SYN_ACK:Lcom/liber8tech/tago/protocol/Command;

    goto :goto_0

    .line 127
    :pswitch_b
    sget-object v0, Lcom/liber8tech/tago/protocol/Command;->NACK:Lcom/liber8tech/tago/protocol/Command;

    goto :goto_0

    .line 126
    :pswitch_c
    sget-object v0, Lcom/liber8tech/tago/protocol/Command;->ACK:Lcom/liber8tech/tago/protocol/Command;

    goto :goto_0

    .line 140
    :cond_0
    sget-object v0, Lcom/liber8tech/tago/protocol/Command;->FULL_FLASH_ERASE:Lcom/liber8tech/tago/protocol/Command;

    goto :goto_0

    .line 139
    :cond_1
    sget-object v0, Lcom/liber8tech/tago/protocol/Command;->NEW_FIRMWARE:Lcom/liber8tech/tago/protocol/Command;

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x21
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final firmwareVersion()Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x4

    .line 181
    new-array v0, v0, [B

    .line 182
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 152
    iget-object v3, p0, Lcom/liber8tech/tago/protocol/Message;->bytes:[B

    add-int/lit8 v4, v2, 0x3

    aget-byte v3, v3, v4

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public final getBytes()[B
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/liber8tech/tago/protocol/Message;->bytes:[B

    return-object v0
.end method

.method public final getImageId()Ljava/lang/Long;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/liber8tech/tago/protocol/Message;->imageId:Ljava/lang/Long;

    return-object v0
.end method

.method public final isValid()Z
    .locals 6

    .line 115
    invoke-direct {p0}, Lcom/liber8tech/tago/protocol/Message;->size()[B

    move-result-object v0

    .line 116
    invoke-direct {p0}, Lcom/liber8tech/tago/protocol/Message;->crc()[B

    move-result-object v1

    .line 117
    iget-object v2, p0, Lcom/liber8tech/tago/protocol/Message;->bytes:[B

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    xor-int/2addr v2, v4

    if-eqz v2, :cond_1

    .line 119
    aget-byte v2, v0, v3

    iget-object v5, p0, Lcom/liber8tech/tago/protocol/Message;->bytes:[B

    aget-byte v5, v5, v3

    if-ne v2, v5, :cond_1

    aget-byte v0, v0, v4

    iget-object v2, p0, Lcom/liber8tech/tago/protocol/Message;->bytes:[B

    aget-byte v2, v2, v4

    if-ne v0, v2, :cond_1

    aget-byte v0, v1, v3

    iget-object v2, p0, Lcom/liber8tech/tago/protocol/Message;->bytes:[B

    iget-object v5, p0, Lcom/liber8tech/tago/protocol/Message;->bytes:[B

    array-length v5, v5

    add-int/lit8 v5, v5, -0x2

    aget-byte v2, v2, v5

    if-ne v0, v2, :cond_1

    aget-byte v0, v1, v4

    iget-object v1, p0, Lcom/liber8tech/tago/protocol/Message;->bytes:[B

    iget-object v2, p0, Lcom/liber8tech/tago/protocol/Message;->bytes:[B

    array-length v2, v2

    sub-int/2addr v2, v4

    aget-byte v1, v1, v2

    if-ne v0, v1, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method public toString()Ljava/lang/String;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/liber8tech/tago/protocol/Message;->command()Lcom/liber8tech/tago/protocol/Command;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " |"

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget-object v1, p0, Lcom/liber8tech/tago/protocol/Message;->bytes:[B

    .line 186
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v4, v1, v3

    const/16 v5, 0x20

    .line 176
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "builder.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final toWrappedMessage()[B
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/liber8tech/tago/protocol/Message;->bytes:[B

    array-length v0, v0

    add-int/lit8 v1, v0, 0x2

    .line 156
    new-array v1, v1, [B

    .line 157
    sget-byte v2, Lcom/liber8tech/tago/protocol/Message;->open:B

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    :goto_0
    if-ge v3, v0, :cond_0

    add-int/lit8 v2, v3, 0x1

    .line 159
    iget-object v4, p0, Lcom/liber8tech/tago/protocol/Message;->bytes:[B

    aget-byte v3, v4, v3

    aput-byte v3, v1, v2

    move v3, v2

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 161
    sget-byte v2, Lcom/liber8tech/tago/protocol/Message;->close:B

    aput-byte v2, v1, v0

    return-object v1
.end method

.method public final voltage()I
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/liber8tech/tago/protocol/Message;->bytes:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method
