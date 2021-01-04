.class final Lcom/liber8tech/tago/android/activity/SyncActivity$startPatternSync$2;
.super Ljava/lang/Object;
.source "SyncActivity.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/SyncActivity;->startPatternSync(Lcom/liber8tech/tago/model/Pattern;J)V
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
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lio/reactivex/Observable;",
        "Lcom/liber8tech/tago/model/SyncState;",
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
.field final synthetic $pattern:Lcom/liber8tech/tago/model/Pattern;

.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/SyncActivity;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/SyncActivity;Lcom/liber8tech/tago/model/Pattern;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/SyncActivity$startPatternSync$2;->this$0:Lcom/liber8tech/tago/android/activity/SyncActivity;

    iput-object p2, p0, Lcom/liber8tech/tago/android/activity/SyncActivity$startPatternSync$2;->$pattern:Lcom/liber8tech/tago/model/Pattern;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/polidea/rxandroidble2/RxBleConnection;)Lio/reactivex/Observable;
    .locals 2
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
            "Lcom/liber8tech/tago/model/SyncState;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SyncActivity$startPatternSync$2;->this$0:Lcom/liber8tech/tago/android/activity/SyncActivity;

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/activity/SyncActivity;->getBluetoothService()Lcom/liber8tech/tago/service/BluetoothService;

    move-result-object v0

    iget-object v1, p0, Lcom/liber8tech/tago/android/activity/SyncActivity$startPatternSync$2;->$pattern:Lcom/liber8tech/tago/model/Pattern;

    invoke-virtual {v0, p1, v1}, Lcom/liber8tech/tago/service/BluetoothService;->syncPattern(Lcom/polidea/rxandroidble2/RxBleConnection;Lcom/liber8tech/tago/model/Pattern;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p1, Lcom/polidea/rxandroidble2/RxBleConnection;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/SyncActivity$startPatternSync$2;->apply(Lcom/polidea/rxandroidble2/RxBleConnection;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
