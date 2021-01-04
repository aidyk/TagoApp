.class final Lcom/liber8tech/tago/android/activity/ResetSyncActivity$onCreate$1;
.super Ljava/lang/Object;
.source "ResetSyncActivity.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/ResetSyncActivity;->onCreate(Landroid/os/Bundle;)V
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
        "Lio/reactivex/ObservableSource<",
        "+TR;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lio/reactivex/Observable;",
        "",
        "it",
        "Lcom/polidea/rxandroidble2/RxBleConnection;",
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
.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/ResetSyncActivity;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/ResetSyncActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/ResetSyncActivity$onCreate$1;->this$0:Lcom/liber8tech/tago/android/activity/ResetSyncActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/polidea/rxandroidble2/RxBleConnection;)Lio/reactivex/Observable;
    .locals 1
    .param p1    # Lcom/polidea/rxandroidble2/RxBleConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/RxBleConnection;",
            ")",
            "Lio/reactivex/Observable<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ResetSyncActivity$onCreate$1;->this$0:Lcom/liber8tech/tago/android/activity/ResetSyncActivity;

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/activity/ResetSyncActivity;->getBluetoothService()Lcom/liber8tech/tago/service/BluetoothService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liber8tech/tago/service/BluetoothService;->resetDevice(Lcom/polidea/rxandroidble2/RxBleConnection;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 24
    check-cast p1, Lcom/polidea/rxandroidble2/RxBleConnection;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/ResetSyncActivity$onCreate$1;->apply(Lcom/polidea/rxandroidble2/RxBleConnection;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
