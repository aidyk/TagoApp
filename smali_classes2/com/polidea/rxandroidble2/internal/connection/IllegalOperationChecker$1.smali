.class Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker$1;
.super Ljava/lang/Object;
.source "IllegalOperationChecker.java"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker;->checkAnyPropertyMatches(Landroid/bluetooth/BluetoothGattCharacteristic;I)Lio/reactivex/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker;

.field final synthetic val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field final synthetic val$neededProperties:I


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker$1;->this$0:Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker;

    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker$1;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    iput p3, p0, Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker$1;->val$neededProperties:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker$1;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v0

    .line 42
    iget v1, p0, Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker$1;->val$neededProperties:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker$1;->this$0:Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker;->access$000(Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker;)Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker$1;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    iget v2, p0, Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker$1;->val$neededProperties:I

    invoke-virtual {v0, v1, v2}, Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationHandler;->handleMismatchData(Landroid/bluetooth/BluetoothGattCharacteristic;I)Lcom/polidea/rxandroidble2/internal/BleIllegalOperationException;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    throw v0

    :cond_1
    :goto_0
    return-void
.end method
