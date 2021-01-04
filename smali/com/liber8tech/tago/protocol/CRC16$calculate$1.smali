.class final Lcom/liber8tech/tago/protocol/CRC16$calculate$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CRC16.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/protocol/CRC16;->calculate([BII)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic $crc:Lkotlin/jvm/internal/Ref$CharRef;

.field final synthetic $data:[B


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$CharRef;[B)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/protocol/CRC16$calculate$1;->$crc:Lkotlin/jvm/internal/Ref$CharRef;

    iput-object p2, p0, Lcom/liber8tech/tago/protocol/CRC16$calculate$1;->$data:[B

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(I)I
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/liber8tech/tago/protocol/CRC16$calculate$1;->$crc:Lkotlin/jvm/internal/Ref$CharRef;

    iget-char v0, v0, Lkotlin/jvm/internal/Ref$CharRef;->element:C

    shr-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/liber8tech/tago/protocol/CRC16$calculate$1;->$data:[B

    aget-byte p1, v1, p1

    and-int/lit16 p1, p1, 0xff

    xor-int/2addr p1, v0

    return p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/protocol/CRC16$calculate$1;->invoke(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
