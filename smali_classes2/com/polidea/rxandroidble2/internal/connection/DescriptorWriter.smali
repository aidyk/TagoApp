.class Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter;
.super Ljava/lang/Object;
.source "DescriptorWriter.java"


# annotations
.annotation runtime Lcom/polidea/rxandroidble2/internal/connection/ConnectionScope;
.end annotation


# instance fields
.field private final operationQueue:Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;

.field private final operationsProvider:Lcom/polidea/rxandroidble2/internal/operations/OperationsProvider;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;Lcom/polidea/rxandroidble2/internal/operations/OperationsProvider;)V
    .locals 0
    .annotation runtime Lbleshadow/javax/inject/Inject;
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter;->operationQueue:Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;

    .line 21
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter;->operationsProvider:Lcom/polidea/rxandroidble2/internal/operations/OperationsProvider;

    return-void
.end method


# virtual methods
.method writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;[B)Lio/reactivex/Completable;
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter;->operationQueue:Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter;->operationsProvider:Lcom/polidea/rxandroidble2/internal/operations/OperationsProvider;

    invoke-interface {v1, p1, p2}, Lcom/polidea/rxandroidble2/internal/operations/OperationsProvider;->provideWriteDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;[B)Lcom/polidea/rxandroidble2/internal/operations/DescriptorWriteOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;->queue(Lcom/polidea/rxandroidble2/internal/operations/Operation;)Lio/reactivex/Observable;

    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lio/reactivex/Observable;->ignoreElements()Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method
