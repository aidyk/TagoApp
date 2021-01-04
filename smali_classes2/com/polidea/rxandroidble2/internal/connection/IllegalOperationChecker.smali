.class public Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker;
.super Ljava/lang/Object;
.source "IllegalOperationChecker.java"


# instance fields
.field private resultHandler:Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationHandler;


# direct methods
.method public constructor <init>(Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationHandler;)V
    .locals 0
    .annotation runtime Lbleshadow/javax/inject/Inject;
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker;->resultHandler:Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker;)Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationHandler;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker;->resultHandler:Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationHandler;

    return-object p0
.end method


# virtual methods
.method public checkAnyPropertyMatches(Landroid/bluetooth/BluetoothGattCharacteristic;I)Lio/reactivex/Completable;
    .locals 1

    .line 38
    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker$1;-><init>(Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    invoke-static {v0}, Lio/reactivex/Completable;->fromAction(Lio/reactivex/functions/Action;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method
