.class public final Lcom/liber8tech/tago/model/ExtendedConnection;
.super Ljava/lang/Object;
.source "ExtendedConnection.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\n\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000b\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u000c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\r\u001a\u00020\u00052\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u000f\u001a\u00020\u0010H\u00d6\u0001J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\t\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/liber8tech/tago/model/ExtendedConnection;",
        "",
        "connection",
        "Lcom/polidea/rxandroidble2/RxBleConnection;",
        "isNewestFirmware",
        "",
        "(Lcom/polidea/rxandroidble2/RxBleConnection;Z)V",
        "getConnection",
        "()Lcom/polidea/rxandroidble2/RxBleConnection;",
        "()Z",
        "component1",
        "component2",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
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
.field private final connection:Lcom/polidea/rxandroidble2/RxBleConnection;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final isNewestFirmware:Z


# direct methods
.method public constructor <init>(Lcom/polidea/rxandroidble2/RxBleConnection;Z)V
    .locals 1
    .param p1    # Lcom/polidea/rxandroidble2/RxBleConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liber8tech/tago/model/ExtendedConnection;->connection:Lcom/polidea/rxandroidble2/RxBleConnection;

    iput-boolean p2, p0, Lcom/liber8tech/tago/model/ExtendedConnection;->isNewestFirmware:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/liber8tech/tago/model/ExtendedConnection;Lcom/polidea/rxandroidble2/RxBleConnection;ZILjava/lang/Object;)Lcom/liber8tech/tago/model/ExtendedConnection;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/liber8tech/tago/model/ExtendedConnection;->connection:Lcom/polidea/rxandroidble2/RxBleConnection;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Lcom/liber8tech/tago/model/ExtendedConnection;->isNewestFirmware:Z

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/liber8tech/tago/model/ExtendedConnection;->copy(Lcom/polidea/rxandroidble2/RxBleConnection;Z)Lcom/liber8tech/tago/model/ExtendedConnection;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/polidea/rxandroidble2/RxBleConnection;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/liber8tech/tago/model/ExtendedConnection;->connection:Lcom/polidea/rxandroidble2/RxBleConnection;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/liber8tech/tago/model/ExtendedConnection;->isNewestFirmware:Z

    return v0
.end method

.method public final copy(Lcom/polidea/rxandroidble2/RxBleConnection;Z)Lcom/liber8tech/tago/model/ExtendedConnection;
    .locals 1
    .param p1    # Lcom/polidea/rxandroidble2/RxBleConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/liber8tech/tago/model/ExtendedConnection;

    invoke-direct {v0, p1, p2}, Lcom/liber8tech/tago/model/ExtendedConnection;-><init>(Lcom/polidea/rxandroidble2/RxBleConnection;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lcom/liber8tech/tago/model/ExtendedConnection;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/liber8tech/tago/model/ExtendedConnection;

    iget-object v1, p0, Lcom/liber8tech/tago/model/ExtendedConnection;->connection:Lcom/polidea/rxandroidble2/RxBleConnection;

    iget-object v3, p1, Lcom/liber8tech/tago/model/ExtendedConnection;->connection:Lcom/polidea/rxandroidble2/RxBleConnection;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/liber8tech/tago/model/ExtendedConnection;->isNewestFirmware:Z

    iget-boolean p1, p1, Lcom/liber8tech/tago/model/ExtendedConnection;->isNewestFirmware:Z

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

.method public final getConnection()Lcom/polidea/rxandroidble2/RxBleConnection;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/liber8tech/tago/model/ExtendedConnection;->connection:Lcom/polidea/rxandroidble2/RxBleConnection;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/liber8tech/tago/model/ExtendedConnection;->connection:Lcom/polidea/rxandroidble2/RxBleConnection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/liber8tech/tago/model/ExtendedConnection;->isNewestFirmware:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final isNewestFirmware()Z
    .locals 1

    .line 7
    iget-boolean v0, p0, Lcom/liber8tech/tago/model/ExtendedConnection;->isNewestFirmware:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExtendedConnection(connection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/liber8tech/tago/model/ExtendedConnection;->connection:Lcom/polidea/rxandroidble2/RxBleConnection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isNewestFirmware="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/liber8tech/tago/model/ExtendedConnection;->isNewestFirmware:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
