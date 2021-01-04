.class Lcom/polidea/rxandroidble2/helpers/ByteArrayBatchObservable$1;
.super Ljava/lang/Object;
.source "ByteArrayBatchObservable.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/helpers/ByteArrayBatchObservable;->subscribeActual(Lorg/reactivestreams/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lio/reactivex/Emitter<",
        "[B>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2/helpers/ByteArrayBatchObservable;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/helpers/ByteArrayBatchObservable;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/polidea/rxandroidble2/helpers/ByteArrayBatchObservable$1;->this$0:Lcom/polidea/rxandroidble2/helpers/ByteArrayBatchObservable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lio/reactivex/Emitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Emitter<",
            "[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/polidea/rxandroidble2/helpers/ByteArrayBatchObservable$1;->this$0:Lcom/polidea/rxandroidble2/helpers/ByteArrayBatchObservable;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/helpers/ByteArrayBatchObservable;->access$000(Lcom/polidea/rxandroidble2/helpers/ByteArrayBatchObservable;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v1, p0, Lcom/polidea/rxandroidble2/helpers/ByteArrayBatchObservable$1;->this$0:Lcom/polidea/rxandroidble2/helpers/ByteArrayBatchObservable;

    invoke-static {v1}, Lcom/polidea/rxandroidble2/helpers/ByteArrayBatchObservable;->access$100(Lcom/polidea/rxandroidble2/helpers/ByteArrayBatchObservable;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-nez v0, :cond_0

    .line 48
    invoke-interface {p1}, Lio/reactivex/Emitter;->onComplete()V

    return-void

    .line 51
    :cond_0
    new-array v0, v0, [B

    .line 52
    iget-object v1, p0, Lcom/polidea/rxandroidble2/helpers/ByteArrayBatchObservable$1;->this$0:Lcom/polidea/rxandroidble2/helpers/ByteArrayBatchObservable;

    invoke-static {v1}, Lcom/polidea/rxandroidble2/helpers/ByteArrayBatchObservable;->access$000(Lcom/polidea/rxandroidble2/helpers/ByteArrayBatchObservable;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 53
    invoke-interface {p1, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 42
    check-cast p1, Lio/reactivex/Emitter;

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/helpers/ByteArrayBatchObservable$1;->accept(Lio/reactivex/Emitter;)V

    return-void
.end method
