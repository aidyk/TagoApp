.class Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$11$1;
.super Ljava/lang/Object;
.source "RxBleConnectionImpl.java"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$11;->clearNativeCallbackReferenceAction()Lio/reactivex/functions/Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$11;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$11;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$11$1;->this$1:Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$11$1;->this$1:Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$11;

    iget-object v0, v0, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl$11;->this$0:Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;->access$100(Lcom/polidea/rxandroidble2/internal/connection/RxBleConnectionImpl;)Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->setNativeCallback(Landroid/bluetooth/BluetoothGattCallback;)V

    return-void
.end method
