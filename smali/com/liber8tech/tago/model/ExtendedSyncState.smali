.class public final Lcom/liber8tech/tago/model/ExtendedSyncState;
.super Ljava/lang/Object;
.source "ExtendedSyncState.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B%\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0007H\u00c6\u0003J)\u0010\u0012\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\u0006\u0010\u0016\u001a\u00020\u0014J\t\u0010\u0017\u001a\u00020\u0007H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/liber8tech/tago/model/ExtendedSyncState;",
        "",
        "connection",
        "Lcom/polidea/rxandroidble2/RxBleConnection;",
        "progress",
        "",
        "battery",
        "",
        "(Lcom/polidea/rxandroidble2/RxBleConnection;DI)V",
        "getBattery",
        "()I",
        "getConnection",
        "()Lcom/polidea/rxandroidble2/RxBleConnection;",
        "getProgress",
        "()D",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "finished",
        "hashCode",
        "toString",
        "",
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
.field private final battery:I

.field private final connection:Lcom/polidea/rxandroidble2/RxBleConnection;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final progress:D


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/liber8tech/tago/model/ExtendedSyncState;-><init>(Lcom/polidea/rxandroidble2/RxBleConnection;DIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/polidea/rxandroidble2/RxBleConnection;DI)V
    .locals 0
    .param p1    # Lcom/polidea/rxandroidble2/RxBleConnection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liber8tech/tago/model/ExtendedSyncState;->connection:Lcom/polidea/rxandroidble2/RxBleConnection;

    iput-wide p2, p0, Lcom/liber8tech/tago/model/ExtendedSyncState;->progress:D

    iput p4, p0, Lcom/liber8tech/tago/model/ExtendedSyncState;->battery:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/polidea/rxandroidble2/RxBleConnection;DIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const/4 p1, 0x0

    .line 5
    check-cast p1, Lcom/polidea/rxandroidble2/RxBleConnection;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const-wide/16 p2, 0x0

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    const/4 p4, -0x1

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/liber8tech/tago/model/ExtendedSyncState;-><init>(Lcom/polidea/rxandroidble2/RxBleConnection;DI)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/liber8tech/tago/model/ExtendedSyncState;Lcom/polidea/rxandroidble2/RxBleConnection;DIILjava/lang/Object;)Lcom/liber8tech/tago/model/ExtendedSyncState;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/liber8tech/tago/model/ExtendedSyncState;->connection:Lcom/polidea/rxandroidble2/RxBleConnection;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-wide p2, p0, Lcom/liber8tech/tago/model/ExtendedSyncState;->progress:D

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    iget p4, p0, Lcom/liber8tech/tago/model/ExtendedSyncState;->battery:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/liber8tech/tago/model/ExtendedSyncState;->copy(Lcom/polidea/rxandroidble2/RxBleConnection;DI)Lcom/liber8tech/tago/model/ExtendedSyncState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/polidea/rxandroidble2/RxBleConnection;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/liber8tech/tago/model/ExtendedSyncState;->connection:Lcom/polidea/rxandroidble2/RxBleConnection;

    return-object v0
.end method

.method public final component2()D
    .locals 2

    iget-wide v0, p0, Lcom/liber8tech/tago/model/ExtendedSyncState;->progress:D

    return-wide v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/liber8tech/tago/model/ExtendedSyncState;->battery:I

    return v0
.end method

.method public final copy(Lcom/polidea/rxandroidble2/RxBleConnection;DI)Lcom/liber8tech/tago/model/ExtendedSyncState;
    .locals 1
    .param p1    # Lcom/polidea/rxandroidble2/RxBleConnection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/liber8tech/tago/model/ExtendedSyncState;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/liber8tech/tago/model/ExtendedSyncState;-><init>(Lcom/polidea/rxandroidble2/RxBleConnection;DI)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lcom/liber8tech/tago/model/ExtendedSyncState;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/liber8tech/tago/model/ExtendedSyncState;

    iget-object v1, p0, Lcom/liber8tech/tago/model/ExtendedSyncState;->connection:Lcom/polidea/rxandroidble2/RxBleConnection;

    iget-object v3, p1, Lcom/liber8tech/tago/model/ExtendedSyncState;->connection:Lcom/polidea/rxandroidble2/RxBleConnection;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v3, p0, Lcom/liber8tech/tago/model/ExtendedSyncState;->progress:D

    iget-wide v5, p1, Lcom/liber8tech/tago/model/ExtendedSyncState;->progress:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/liber8tech/tago/model/ExtendedSyncState;->battery:I

    iget p1, p1, Lcom/liber8tech/tago/model/ExtendedSyncState;->battery:I

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    return v0
.end method

.method public final finished()Z
    .locals 5

    .line 6
    iget-wide v0, p0, Lcom/liber8tech/tago/model/ExtendedSyncState;->progress:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpg-double v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getBattery()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/liber8tech/tago/model/ExtendedSyncState;->battery:I

    return v0
.end method

.method public final getConnection()Lcom/polidea/rxandroidble2/RxBleConnection;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/liber8tech/tago/model/ExtendedSyncState;->connection:Lcom/polidea/rxandroidble2/RxBleConnection;

    return-object v0
.end method

.method public final getProgress()D
    .locals 2

    .line 5
    iget-wide v0, p0, Lcom/liber8tech/tago/model/ExtendedSyncState;->progress:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/liber8tech/tago/model/ExtendedSyncState;->connection:Lcom/polidea/rxandroidble2/RxBleConnection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/liber8tech/tago/model/ExtendedSyncState;->progress:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/liber8tech/tago/model/ExtendedSyncState;->battery:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExtendedSyncState(connection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/liber8tech/tago/model/ExtendedSyncState;->connection:Lcom/polidea/rxandroidble2/RxBleConnection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/liber8tech/tago/model/ExtendedSyncState;->progress:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", battery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/liber8tech/tago/model/ExtendedSyncState;->battery:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
