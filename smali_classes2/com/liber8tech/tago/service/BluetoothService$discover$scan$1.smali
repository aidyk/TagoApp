.class final Lcom/liber8tech/tago/service/BluetoothService$discover$scan$1;
.super Ljava/lang/Object;
.source "BluetoothService.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/service/BluetoothService;->discover()Lio/reactivex/Observable;
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
        "TT;TR;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lcom/polidea/rxandroidble2/RxBleDevice;",
        "kotlin.jvm.PlatformType",
        "it",
        "Lcom/polidea/rxandroidble2/scan/ScanResult;",
        "apply"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/liber8tech/tago/service/BluetoothService$discover$scan$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/liber8tech/tago/service/BluetoothService$discover$scan$1;

    invoke-direct {v0}, Lcom/liber8tech/tago/service/BluetoothService$discover$scan$1;-><init>()V

    sput-object v0, Lcom/liber8tech/tago/service/BluetoothService$discover$scan$1;->INSTANCE:Lcom/liber8tech/tago/service/BluetoothService$discover$scan$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/polidea/rxandroidble2/scan/ScanResult;)Lcom/polidea/rxandroidble2/RxBleDevice;
    .locals 1
    .param p1    # Lcom/polidea/rxandroidble2/scan/ScanResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/scan/ScanResult;->getBleDevice()Lcom/polidea/rxandroidble2/RxBleDevice;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    check-cast p1, Lcom/polidea/rxandroidble2/scan/ScanResult;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/service/BluetoothService$discover$scan$1;->apply(Lcom/polidea/rxandroidble2/scan/ScanResult;)Lcom/polidea/rxandroidble2/RxBleDevice;

    move-result-object p1

    return-object p1
.end method
