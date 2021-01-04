.class final Lcom/liber8tech/tago/service/BluetoothService$connect$1$1;
.super Ljava/lang/Object;
.source "BluetoothService.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/service/BluetoothService$connect$1;->apply(Lcom/polidea/rxandroidble2/RxBleConnection;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "TT;",
        "Lio/reactivex/SingleSource<",
        "+TR;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBluetoothService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BluetoothService.kt\ncom/liber8tech/tago/service/BluetoothService$connect$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,137:1\n206#2,2:138\n*E\n*S KotlinDebug\n*F\n+ 1 BluetoothService.kt\ncom/liber8tech/tago/service/BluetoothService$connect$1$1\n*L\n107#1,2:138\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a&\u0012\u000c\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002 \u0003*\u0012\u0012\u000c\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002\u0018\u00010\u00010\u00012\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "Lio/reactivex/Single;",
        "Lcom/polidea/rxandroidble2/RxBleConnection;",
        "kotlin.jvm.PlatformType",
        "it",
        "Lcom/polidea/rxandroidble2/RxBleDeviceServices;",
        "apply"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic $connection:Lcom/polidea/rxandroidble2/RxBleConnection;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/RxBleConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/service/BluetoothService$connect$1$1;->$connection:Lcom/polidea/rxandroidble2/RxBleConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/polidea/rxandroidble2/RxBleDeviceServices;)Lio/reactivex/Single;
    .locals 3
    .param p1    # Lcom/polidea/rxandroidble2/RxBleDeviceServices;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/RxBleDeviceServices;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/polidea/rxandroidble2/RxBleConnection;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/RxBleDeviceServices;->getBluetoothGattServices()Ljava/util/List;

    move-result-object p1

    const-string v0, "it.bluetoothGattServices"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 138
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattService;

    const-string v1, "it"

    .line 107
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-static {}, Lcom/liber8tech/tago/service/BluetoothService;->access$getUartId$cp()Ljava/util/UUID;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    sget-object p1, Lcom/liber8tech/tago/service/BluetoothService;->Companion:Lcom/liber8tech/tago/service/BluetoothService$Companion;

    invoke-virtual {p1}, Lcom/liber8tech/tago/service/BluetoothService$Companion;->getTxId()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    .line 109
    sget-object v1, Lcom/liber8tech/tago/service/BluetoothService;->Companion:Lcom/liber8tech/tago/service/BluetoothService$Companion;

    invoke-virtual {v1}, Lcom/liber8tech/tago/service/BluetoothService$Companion;->getRxId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    const-string v1, "tx"

    .line 110
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 111
    invoke-static {}, Lcom/liber8tech/tago/service/BluetoothService;->access$getClientId$cp()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object p1

    const-string v0, "descriptor"

    .line 112
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 113
    iget-object v0, p0, Lcom/liber8tech/tago/service/BluetoothService$connect$1$1;->$connection:Lcom/polidea/rxandroidble2/RxBleConnection;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/polidea/rxandroidble2/RxBleConnection;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;[B)Lio/reactivex/Completable;

    move-result-object p1

    iget-object v0, p0, Lcom/liber8tech/tago/service/BluetoothService$connect$1$1;->$connection:Lcom/polidea/rxandroidble2/RxBleConnection;

    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->toSingleDefault(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 139
    :cond_1
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string v0, "Collection contains no element matching the predicate."

    invoke-direct {p1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    check-cast p1, Lcom/polidea/rxandroidble2/RxBleDeviceServices;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/service/BluetoothService$connect$1$1;->apply(Lcom/polidea/rxandroidble2/RxBleDeviceServices;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method
