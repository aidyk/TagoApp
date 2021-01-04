.class public final Lcom/liber8tech/tago/protocol/CRC16;
.super Ljava/lang/Object;
.source "CRC16.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCRC16.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CRC16.kt\ncom/liber8tech/tago/protocol/CRC16\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,38:1\n1070#2,2:39\n*E\n*S KotlinDebug\n*F\n+ 1 CRC16.kt\ncom/liber8tech/tago/protocol/CRC16\n*L\n32#1,2:39\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000c\n\u0002\u0008\u0002\n\u0002\u0010\u0019\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000cR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/liber8tech/tago/protocol/CRC16;",
        "",
        "()V",
        "initValue",
        "",
        "polynom",
        "table",
        "",
        "calculate",
        "",
        "data",
        "start",
        "",
        "lenth",
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
.field public static final INSTANCE:Lcom/liber8tech/tago/protocol/CRC16;

.field private static final initValue:C = '\uffff'

.field private static final polynom:C = '\u1021'

.field private static final table:[C


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 3
    new-instance v0, Lcom/liber8tech/tago/protocol/CRC16;

    invoke-direct {v0}, Lcom/liber8tech/tago/protocol/CRC16;-><init>()V

    sput-object v0, Lcom/liber8tech/tago/protocol/CRC16;->INSTANCE:Lcom/liber8tech/tago/protocol/CRC16;

    const/16 v0, 0x100

    .line 7
    new-array v0, v0, [C

    sput-object v0, Lcom/liber8tech/tago/protocol/CRC16;->table:[C

    .line 12
    sget-object v0, Lcom/liber8tech/tago/protocol/CRC16;->table:[C

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    int-to-char v3, v1

    shl-int/lit8 v4, v2, 0x8

    move v5, v4

    move v4, v3

    const/4 v3, 0x0

    :goto_1
    const/16 v6, 0x8

    if-ge v3, v6, :cond_1

    xor-int v6, v4, v5

    const v7, 0x8000

    and-int/2addr v6, v7

    if-eqz v6, :cond_0

    shl-int/lit8 v4, v4, 0x1

    xor-int/lit16 v4, v4, 0x1021

    int-to-char v4, v4

    goto :goto_2

    :cond_0
    shl-int/lit8 v4, v4, 0x1

    int-to-char v4, v4

    :goto_2
    shl-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 23
    :cond_1
    sget-object v3, Lcom/liber8tech/tago/protocol/CRC16;->table:[C

    aput-char v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final calculate([BII)[B
    .locals 3
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lkotlin/jvm/internal/Ref$CharRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$CharRef;-><init>()V

    const v1, 0xffff

    iput-char v1, v0, Lkotlin/jvm/internal/Ref$CharRef;->element:C

    add-int/2addr p3, p2

    .line 29
    invoke-static {p2, p3}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 30
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object p2

    .line 31
    new-instance p3, Lcom/liber8tech/tago/protocol/CRC16$calculate$1;

    invoke-direct {p3, v0, p1}, Lcom/liber8tech/tago/protocol/CRC16$calculate$1;-><init>(Lkotlin/jvm/internal/Ref$CharRef;[B)V

    check-cast p3, Lkotlin/jvm/functions/Function1;

    invoke-static {p2, p3}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    .line 39
    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 32
    iget-char p3, v0, Lkotlin/jvm/internal/Ref$CharRef;->element:C

    shl-int/lit8 p3, p3, 0x8

    sget-object v2, Lcom/liber8tech/tago/protocol/CRC16;->table:[C

    aget-char p2, v2, p2

    xor-int/2addr p2, p3

    int-to-char p2, p2

    iput-char p2, v0, Lkotlin/jvm/internal/Ref$CharRef;->element:C

    goto :goto_0

    .line 33
    :cond_0
    iget-char p1, v0, Lkotlin/jvm/internal/Ref$CharRef;->element:C

    and-int/2addr p1, v1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 34
    iget-char p2, v0, Lkotlin/jvm/internal/Ref$CharRef;->element:C

    and-int/2addr p2, v1

    const p3, 0xff00

    and-int/2addr p2, p3

    shr-int/lit8 p2, p2, 0x8

    int-to-byte p2, p2

    const/4 p3, 0x2

    .line 35
    new-array p3, p3, [B

    const/4 v0, 0x0

    aput-byte p1, p3, v0

    const/4 p1, 0x1

    aput-byte p2, p3, p1

    return-object p3
.end method
