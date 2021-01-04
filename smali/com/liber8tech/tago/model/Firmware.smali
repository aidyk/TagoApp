.class public final Lcom/liber8tech/tago/model/Firmware;
.super Ljava/lang/Object;
.source "Firmware.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFirmware.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Firmware.kt\ncom/liber8tech/tago/model/Firmware\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,36:1\n1288#2:37\n1357#2,3:38\n*E\n*S KotlinDebug\n*F\n+ 1 Firmware.kt\ncom/liber8tech/tago/model/Firmware\n*L\n26#1:37\n26#1,3:38\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0007H\u0002\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/liber8tech/tago/model/Firmware;",
        "Ljava/io/Serializable;",
        "()V",
        "chunks",
        "",
        "Lcom/liber8tech/tago/protocol/Message;",
        "ctx",
        "Landroid/content/Context;",
        "getStreamNetworkedSaved",
        "Ljava/io/InputStream;",
        "context",
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
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getStreamNetworkedSaved(Landroid/content/Context;)Ljava/io/InputStream;
    .locals 1

    const v0, 0x7f0f009f

    .line 34
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p1

    const-string v0, "context.openFileInput(co\u2026tring.firmware_filename))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/io/InputStream;

    return-object p1
.end method


# virtual methods
.method public final chunks(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/liber8tech/tago/protocol/Message;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1}, Lcom/liber8tech/tago/model/Firmware;->getStreamNetworkedSaved(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object p1

    .line 17
    invoke-static {p1}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p1

    invoke-interface {p1}, Lokio/BufferedSource;->readByteArray()[B

    move-result-object p1

    const-string v0, "firmwareBytes"

    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->asIterable([B)Ljava/lang/Iterable;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object p1

    const/16 v0, 0x3fc

    .line 20
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->buffer(I)Lio/reactivex/Observable;

    move-result-object p1

    .line 21
    sget-object v0, Lcom/liber8tech/tago/model/Firmware$chunks$array$1;->INSTANCE:Lcom/liber8tech/tago/model/Firmware$chunks$array$1;

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lio/reactivex/Observable;->toList()Lio/reactivex/Single;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lio/reactivex/Single;->blockingGet()Ljava/lang/Object;

    move-result-object p1

    .line 19
    check-cast p1, Ljava/util/List;

    .line 25
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    int-to-byte v0, v0

    const-string v1, "array"

    .line 26
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 38
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 39
    check-cast v2, [B

    .line 26
    sget-object v3, Lcom/liber8tech/tago/protocol/Message;->Companion:Lcom/liber8tech/tago/protocol/Message$Companion;

    const-string v4, "it"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v2, v0}, Lcom/liber8tech/tago/protocol/Message$Companion;->withPayload([BB)Lcom/liber8tech/tago/protocol/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 40
    :cond_0
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    .line 26
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 28
    sget-object v1, Lcom/liber8tech/tago/protocol/Message;->Companion:Lcom/liber8tech/tago/protocol/Message$Companion;

    sget-object v2, Lcom/liber8tech/tago/protocol/Command;->NEW_FIRMWARE:Lcom/liber8tech/tago/protocol/Command;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/liber8tech/tago/protocol/Message$Companion;->fromCommand$default(Lcom/liber8tech/tago/protocol/Message$Companion;Lcom/liber8tech/tago/protocol/Command;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/liber8tech/tago/protocol/Message;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p1
.end method
