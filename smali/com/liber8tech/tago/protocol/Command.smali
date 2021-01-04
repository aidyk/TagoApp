.class public final enum Lcom/liber8tech/tago/protocol/Command;
.super Ljava/lang/Enum;
.source "Message.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/liber8tech/tago/protocol/Command;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\n\n\u0002\u0008\u0017\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/liber8tech/tago/protocol/Command;",
        "",
        "byte",
        "",
        "(Ljava/lang/String;IS)V",
        "getByte",
        "()S",
        "ACK",
        "NACK",
        "SYN_ACK",
        "SYN",
        "SWITCH_TO_BLE",
        "SWITCH_TO_BT",
        "CLEAR",
        "NEW_IMAGE",
        "IMAGE_DOWNLOADED",
        "DATA_PART_SEND",
        "FIND_IMAGE",
        "IMAGE_FOUND",
        "IMAGE_NOT_FOUND",
        "KIOSK_MODE",
        "GET_UID_FW_VERSION",
        "GET_PRODUCT_ID",
        "FULL_FLASH_ERASE",
        "UNKNOWN",
        "NEW_FIRMWARE",
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
.field private static final synthetic $VALUES:[Lcom/liber8tech/tago/protocol/Command;

.field public static final enum ACK:Lcom/liber8tech/tago/protocol/Command;

.field public static final enum CLEAR:Lcom/liber8tech/tago/protocol/Command;

.field public static final enum DATA_PART_SEND:Lcom/liber8tech/tago/protocol/Command;

.field public static final enum FIND_IMAGE:Lcom/liber8tech/tago/protocol/Command;

.field public static final enum FULL_FLASH_ERASE:Lcom/liber8tech/tago/protocol/Command;

.field public static final enum GET_PRODUCT_ID:Lcom/liber8tech/tago/protocol/Command;

.field public static final enum GET_UID_FW_VERSION:Lcom/liber8tech/tago/protocol/Command;

.field public static final enum IMAGE_DOWNLOADED:Lcom/liber8tech/tago/protocol/Command;

.field public static final enum IMAGE_FOUND:Lcom/liber8tech/tago/protocol/Command;

.field public static final enum IMAGE_NOT_FOUND:Lcom/liber8tech/tago/protocol/Command;

.field public static final enum KIOSK_MODE:Lcom/liber8tech/tago/protocol/Command;

.field public static final enum NACK:Lcom/liber8tech/tago/protocol/Command;

.field public static final enum NEW_FIRMWARE:Lcom/liber8tech/tago/protocol/Command;

.field public static final enum NEW_IMAGE:Lcom/liber8tech/tago/protocol/Command;

.field public static final enum SWITCH_TO_BLE:Lcom/liber8tech/tago/protocol/Command;

.field public static final enum SWITCH_TO_BT:Lcom/liber8tech/tago/protocol/Command;

.field public static final enum SYN:Lcom/liber8tech/tago/protocol/Command;

.field public static final enum SYN_ACK:Lcom/liber8tech/tago/protocol/Command;

.field public static final enum UNKNOWN:Lcom/liber8tech/tago/protocol/Command;


# instance fields
.field private final byte:S


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x13

    new-array v0, v0, [Lcom/liber8tech/tago/protocol/Command;

    new-instance v1, Lcom/liber8tech/tago/protocol/Command;

    const-string v2, "ACK"

    const/4 v3, 0x0

    .line 8
    invoke-direct {v1, v2, v3, v3}, Lcom/liber8tech/tago/protocol/Command;-><init>(Ljava/lang/String;IS)V

    sput-object v1, Lcom/liber8tech/tago/protocol/Command;->ACK:Lcom/liber8tech/tago/protocol/Command;

    aput-object v1, v0, v3

    new-instance v1, Lcom/liber8tech/tago/protocol/Command;

    const-string v2, "NACK"

    const/4 v3, 0x1

    .line 9
    invoke-direct {v1, v2, v3, v3}, Lcom/liber8tech/tago/protocol/Command;-><init>(Ljava/lang/String;IS)V

    sput-object v1, Lcom/liber8tech/tago/protocol/Command;->NACK:Lcom/liber8tech/tago/protocol/Command;

    aput-object v1, v0, v3

    new-instance v1, Lcom/liber8tech/tago/protocol/Command;

    const-string v2, "SYN_ACK"

    const/4 v3, 0x2

    .line 10
    invoke-direct {v1, v2, v3, v3}, Lcom/liber8tech/tago/protocol/Command;-><init>(Ljava/lang/String;IS)V

    sput-object v1, Lcom/liber8tech/tago/protocol/Command;->SYN_ACK:Lcom/liber8tech/tago/protocol/Command;

    aput-object v1, v0, v3

    new-instance v1, Lcom/liber8tech/tago/protocol/Command;

    const-string v2, "SYN"

    const/4 v3, 0x3

    .line 11
    invoke-direct {v1, v2, v3, v3}, Lcom/liber8tech/tago/protocol/Command;-><init>(Ljava/lang/String;IS)V

    sput-object v1, Lcom/liber8tech/tago/protocol/Command;->SYN:Lcom/liber8tech/tago/protocol/Command;

    aput-object v1, v0, v3

    new-instance v1, Lcom/liber8tech/tago/protocol/Command;

    const-string v2, "SWITCH_TO_BLE"

    const/4 v3, 0x4

    .line 12
    invoke-direct {v1, v2, v3, v3}, Lcom/liber8tech/tago/protocol/Command;-><init>(Ljava/lang/String;IS)V

    sput-object v1, Lcom/liber8tech/tago/protocol/Command;->SWITCH_TO_BLE:Lcom/liber8tech/tago/protocol/Command;

    aput-object v1, v0, v3

    new-instance v1, Lcom/liber8tech/tago/protocol/Command;

    const-string v2, "SWITCH_TO_BT"

    const/4 v3, 0x5

    .line 13
    invoke-direct {v1, v2, v3, v3}, Lcom/liber8tech/tago/protocol/Command;-><init>(Ljava/lang/String;IS)V

    sput-object v1, Lcom/liber8tech/tago/protocol/Command;->SWITCH_TO_BT:Lcom/liber8tech/tago/protocol/Command;

    aput-object v1, v0, v3

    new-instance v1, Lcom/liber8tech/tago/protocol/Command;

    const-string v2, "CLEAR"

    const/4 v3, 0x6

    const/16 v4, 0x20

    .line 15
    invoke-direct {v1, v2, v3, v4}, Lcom/liber8tech/tago/protocol/Command;-><init>(Ljava/lang/String;IS)V

    sput-object v1, Lcom/liber8tech/tago/protocol/Command;->CLEAR:Lcom/liber8tech/tago/protocol/Command;

    aput-object v1, v0, v3

    new-instance v1, Lcom/liber8tech/tago/protocol/Command;

    const-string v2, "NEW_IMAGE"

    const/4 v3, 0x7

    const/16 v4, 0x21

    .line 16
    invoke-direct {v1, v2, v3, v4}, Lcom/liber8tech/tago/protocol/Command;-><init>(Ljava/lang/String;IS)V

    sput-object v1, Lcom/liber8tech/tago/protocol/Command;->NEW_IMAGE:Lcom/liber8tech/tago/protocol/Command;

    aput-object v1, v0, v3

    new-instance v1, Lcom/liber8tech/tago/protocol/Command;

    const-string v2, "IMAGE_DOWNLOADED"

    const/16 v3, 0x8

    const/16 v4, 0x22

    .line 17
    invoke-direct {v1, v2, v3, v4}, Lcom/liber8tech/tago/protocol/Command;-><init>(Ljava/lang/String;IS)V

    sput-object v1, Lcom/liber8tech/tago/protocol/Command;->IMAGE_DOWNLOADED:Lcom/liber8tech/tago/protocol/Command;

    aput-object v1, v0, v3

    new-instance v1, Lcom/liber8tech/tago/protocol/Command;

    const-string v2, "DATA_PART_SEND"

    const/16 v3, 0x9

    const/16 v4, 0x23

    .line 18
    invoke-direct {v1, v2, v3, v4}, Lcom/liber8tech/tago/protocol/Command;-><init>(Ljava/lang/String;IS)V

    sput-object v1, Lcom/liber8tech/tago/protocol/Command;->DATA_PART_SEND:Lcom/liber8tech/tago/protocol/Command;

    aput-object v1, v0, v3

    new-instance v1, Lcom/liber8tech/tago/protocol/Command;

    const-string v2, "FIND_IMAGE"

    const/16 v3, 0xa

    const/16 v4, 0x24

    .line 19
    invoke-direct {v1, v2, v3, v4}, Lcom/liber8tech/tago/protocol/Command;-><init>(Ljava/lang/String;IS)V

    sput-object v1, Lcom/liber8tech/tago/protocol/Command;->FIND_IMAGE:Lcom/liber8tech/tago/protocol/Command;

    aput-object v1, v0, v3

    new-instance v1, Lcom/liber8tech/tago/protocol/Command;

    const-string v2, "IMAGE_FOUND"

    const/16 v3, 0xb

    const/16 v4, 0x25

    .line 20
    invoke-direct {v1, v2, v3, v4}, Lcom/liber8tech/tago/protocol/Command;-><init>(Ljava/lang/String;IS)V

    sput-object v1, Lcom/liber8tech/tago/protocol/Command;->IMAGE_FOUND:Lcom/liber8tech/tago/protocol/Command;

    aput-object v1, v0, v3

    new-instance v1, Lcom/liber8tech/tago/protocol/Command;

    const-string v2, "IMAGE_NOT_FOUND"

    const/16 v3, 0xc

    const/16 v4, 0x26

    .line 21
    invoke-direct {v1, v2, v3, v4}, Lcom/liber8tech/tago/protocol/Command;-><init>(Ljava/lang/String;IS)V

    sput-object v1, Lcom/liber8tech/tago/protocol/Command;->IMAGE_NOT_FOUND:Lcom/liber8tech/tago/protocol/Command;

    aput-object v1, v0, v3

    new-instance v1, Lcom/liber8tech/tago/protocol/Command;

    const-string v2, "KIOSK_MODE"

    const/16 v3, 0xd

    const/16 v4, 0x27

    .line 23
    invoke-direct {v1, v2, v3, v4}, Lcom/liber8tech/tago/protocol/Command;-><init>(Ljava/lang/String;IS)V

    sput-object v1, Lcom/liber8tech/tago/protocol/Command;->KIOSK_MODE:Lcom/liber8tech/tago/protocol/Command;

    aput-object v1, v0, v3

    new-instance v1, Lcom/liber8tech/tago/protocol/Command;

    const-string v2, "GET_UID_FW_VERSION"

    const/16 v3, 0xe

    const/16 v4, 0x40

    .line 25
    invoke-direct {v1, v2, v3, v4}, Lcom/liber8tech/tago/protocol/Command;-><init>(Ljava/lang/String;IS)V

    sput-object v1, Lcom/liber8tech/tago/protocol/Command;->GET_UID_FW_VERSION:Lcom/liber8tech/tago/protocol/Command;

    aput-object v1, v0, v3

    new-instance v1, Lcom/liber8tech/tago/protocol/Command;

    const-string v2, "GET_PRODUCT_ID"

    const/16 v3, 0xf

    const/16 v4, 0x41

    .line 26
    invoke-direct {v1, v2, v3, v4}, Lcom/liber8tech/tago/protocol/Command;-><init>(Ljava/lang/String;IS)V

    sput-object v1, Lcom/liber8tech/tago/protocol/Command;->GET_PRODUCT_ID:Lcom/liber8tech/tago/protocol/Command;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Lcom/liber8tech/tago/protocol/Command;

    const-string v2, "FULL_FLASH_ERASE"

    const/16 v3, 0x10

    const/16 v4, 0xb0

    .line 28
    invoke-direct {v1, v2, v3, v4}, Lcom/liber8tech/tago/protocol/Command;-><init>(Ljava/lang/String;IS)V

    sput-object v1, Lcom/liber8tech/tago/protocol/Command;->FULL_FLASH_ERASE:Lcom/liber8tech/tago/protocol/Command;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Lcom/liber8tech/tago/protocol/Command;

    const-string v2, "UNKNOWN"

    const/16 v3, 0x11

    const/16 v4, 0x7f

    .line 29
    invoke-direct {v1, v2, v3, v4}, Lcom/liber8tech/tago/protocol/Command;-><init>(Ljava/lang/String;IS)V

    sput-object v1, Lcom/liber8tech/tago/protocol/Command;->UNKNOWN:Lcom/liber8tech/tago/protocol/Command;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Lcom/liber8tech/tago/protocol/Command;

    const-string v2, "NEW_FIRMWARE"

    const/16 v3, 0x12

    const/16 v4, 0xa0

    .line 31
    invoke-direct {v1, v2, v3, v4}, Lcom/liber8tech/tago/protocol/Command;-><init>(Ljava/lang/String;IS)V

    sput-object v1, Lcom/liber8tech/tago/protocol/Command;->NEW_FIRMWARE:Lcom/liber8tech/tago/protocol/Command;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sput-object v0, Lcom/liber8tech/tago/protocol/Command;->$VALUES:[Lcom/liber8tech/tago/protocol/Command;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;IS)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-short p3, p0, Lcom/liber8tech/tago/protocol/Command;->byte:S

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liber8tech/tago/protocol/Command;
    .locals 1

    const-class v0, Lcom/liber8tech/tago/protocol/Command;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/liber8tech/tago/protocol/Command;

    return-object p0
.end method

.method public static values()[Lcom/liber8tech/tago/protocol/Command;
    .locals 1

    sget-object v0, Lcom/liber8tech/tago/protocol/Command;->$VALUES:[Lcom/liber8tech/tago/protocol/Command;

    invoke-virtual {v0}, [Lcom/liber8tech/tago/protocol/Command;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liber8tech/tago/protocol/Command;

    return-object v0
.end method


# virtual methods
.method public final getByte()S
    .locals 1

    .line 6
    iget-short v0, p0, Lcom/liber8tech/tago/protocol/Command;->byte:S

    return v0
.end method
