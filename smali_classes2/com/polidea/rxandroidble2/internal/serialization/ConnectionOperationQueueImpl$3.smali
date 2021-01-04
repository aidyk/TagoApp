.class Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl$3;
.super Lio/reactivex/observers/DisposableObserver;
.source "ConnectionOperationQueueImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl;->onConnectionSubscribed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/observers/DisposableObserver<",
        "Lcom/polidea/rxandroidble2/exceptions/BleException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl$3;->this$0:Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl;

    invoke-direct {p0}, Lio/reactivex/observers/DisposableObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onNext(Lcom/polidea/rxandroidble2/exceptions/BleException;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl$3;->this$0:Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl;

    invoke-virtual {v0, p1}, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl;->terminate(Lcom/polidea/rxandroidble2/exceptions/BleException;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 137
    check-cast p1, Lcom/polidea/rxandroidble2/exceptions/BleException;

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl$3;->onNext(Lcom/polidea/rxandroidble2/exceptions/BleException;)V

    return-void
.end method
