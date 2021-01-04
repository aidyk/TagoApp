.class public Lcom/polidea/rxandroidble2/utils/ConnectionSharingAdapter;
.super Ljava/lang/Object;
.source "ConnectionSharingAdapter.java"

# interfaces
.implements Lio/reactivex/ObservableTransformer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableTransformer<",
        "Lcom/polidea/rxandroidble2/RxBleConnection;",
        "Lcom/polidea/rxandroidble2/RxBleConnection;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final connectionObservable:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleConnection;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/polidea/rxandroidble2/utils/ConnectionSharingAdapter;->connectionObservable:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method static synthetic access$000(Lcom/polidea/rxandroidble2/utils/ConnectionSharingAdapter;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/polidea/rxandroidble2/utils/ConnectionSharingAdapter;->connectionObservable:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method


# virtual methods
.method public apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleConnection;",
            ">;)",
            "Lio/reactivex/ObservableSource<",
            "Lcom/polidea/rxandroidble2/RxBleConnection;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/polidea/rxandroidble2/utils/ConnectionSharingAdapter;->connectionObservable:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 47
    :try_start_0
    iget-object v1, p0, Lcom/polidea/rxandroidble2/utils/ConnectionSharingAdapter;->connectionObservable:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/Observable;

    if-eqz v1, :cond_0

    .line 50
    monitor-exit v0

    return-object v1

    .line 53
    :cond_0
    new-instance v1, Lcom/polidea/rxandroidble2/utils/ConnectionSharingAdapter$1;

    invoke-direct {v1, p0}, Lcom/polidea/rxandroidble2/utils/ConnectionSharingAdapter$1;-><init>(Lcom/polidea/rxandroidble2/utils/ConnectionSharingAdapter;)V

    .line 54
    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object p1

    const/4 v1, 0x1

    .line 60
    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->replay(I)Lio/reactivex/observables/ConnectableObservable;

    move-result-object p1

    .line 61
    invoke-virtual {p1}, Lio/reactivex/observables/ConnectableObservable;->refCount()Lio/reactivex/Observable;

    move-result-object p1

    .line 62
    iget-object v1, p0, Lcom/polidea/rxandroidble2/utils/ConnectionSharingAdapter;->connectionObservable:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 63
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 64
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
