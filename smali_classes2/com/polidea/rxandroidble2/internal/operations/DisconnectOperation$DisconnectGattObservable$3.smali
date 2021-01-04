.class Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation$DisconnectGattObservable$3;
.super Ljava/lang/Object;
.source "DisconnectOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation$DisconnectGattObservable;->subscribeActual(Lio/reactivex/SingleObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation$DisconnectGattObservable;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation$DisconnectGattObservable;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation$DisconnectGattObservable$3;->this$0:Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation$DisconnectGattObservable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation$DisconnectGattObservable$3;->this$0:Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation$DisconnectGattObservable;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation$DisconnectGattObservable;->access$000(Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation$DisconnectGattObservable;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    return-void
.end method
