.class Lcom/polidea/rxandroidble2/RxBleClientImpl$6;
.super Ljava/lang/Object;
.source "RxBleClientImpl.java"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/RxBleClientImpl;->createScanOperationApi18([Ljava/util/UUID;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2/RxBleClientImpl;

.field final synthetic val$filteredUUIDs:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/RxBleClientImpl;Ljava/util/Set;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl$6;->this$0:Lcom/polidea/rxandroidble2/RxBleClientImpl;

    iput-object p2, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl$6;->val$filteredUUIDs:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl$6;->this$0:Lcom/polidea/rxandroidble2/RxBleClientImpl;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/RxBleClientImpl;->access$800(Lcom/polidea/rxandroidble2/RxBleClientImpl;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl$6;->this$0:Lcom/polidea/rxandroidble2/RxBleClientImpl;

    invoke-static {v1}, Lcom/polidea/rxandroidble2/RxBleClientImpl;->access$800(Lcom/polidea/rxandroidble2/RxBleClientImpl;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl$6;->val$filteredUUIDs:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
