.class Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl$1$1;
.super Ljava/lang/Object;
.source "RxBleDeviceImpl.java"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl$1;->call()Lio/reactivex/ObservableSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl$1;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl$1;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl$1$1;->this$1:Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl$1$1;->this$1:Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl$1;

    iget-object v0, v0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl$1;->this$0:Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;->access$000(Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
