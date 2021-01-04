.class final Lcom/liber8tech/tago/android/activity/SyncActivity$startPatternSync$1;
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
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "Lio/reactivex/Observable;",
        "Lcom/polidea/rxandroidble2/RxBleConnection;",
        "it",
        "",
        "apply",
        "(Lkotlin/Unit;)Lio/reactivex/Observable;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/SyncActivity;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/SyncActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/SyncActivity$startPatternSync$1;->this$0:Lcom/liber8tech/tago/android/activity/SyncActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lkotlin/Unit;)Lio/reactivex/Observable;
    .locals 1
    .param p1    # Lkotlin/Unit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Unit;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleConnection;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/SyncActivity$startPatternSync$1;->this$0:Lcom/liber8tech/tago/android/activity/SyncActivity;

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/activity/SyncActivity;->getBluetoothService()Lcom/liber8tech/tago/service/BluetoothService;

    move-result-object p1

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SyncActivity$startPatternSync$1;->this$0:Lcom/liber8tech/tago/android/activity/SyncActivity;

    invoke-static {v0}, Lcom/liber8tech/tago/android/activity/SyncActivity;->access$getDevice$p(Lcom/liber8tech/tago/android/activity/SyncActivity;)Lcom/polidea/rxandroidble2/RxBleDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/liber8tech/tago/service/BluetoothService;->connect(Lcom/polidea/rxandroidble2/RxBleDevice;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/SyncActivity$startPatternSync$1;->apply(Lkotlin/Unit;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
