.class final Lcom/jakewharton/rxrelay2/BehaviorRelay$BehaviorDisposable;
.super Ljava/lang/Object;
.source "BehaviorRelay.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;
.implements Lcom/jakewharton/rxrelay2/AppendOnlyLinkedArrayList$NonThrowingPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jakewharton/rxrelay2/BehaviorRelay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BehaviorDisposable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/disposables/Disposable;",
        "Lcom/jakewharton/rxrelay2/AppendOnlyLinkedArrayList$NonThrowingPredicate<",
        "TT;>;"
    }
.end annotation


# instance fields
.field volatile cancelled:Z

.field final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field emitting:Z

.field fastPath:Z

.field index:J

.field next:Z

.field queue:Lcom/jakewharton/rxrelay2/AppendOnlyLinkedArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jakewharton/rxrelay2/AppendOnlyLinkedArrayList<",
            "TT;>;"
        }
    .end annotation
.end field

.field final state:Lcom/jakewharton/rxrelay2/BehaviorRelay;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jakewharton/rxrelay2/BehaviorRelay<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Lcom/jakewharton/rxrelay2/BehaviorRelay;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;",
            "Lcom/jakewharton/rxrelay2/BehaviorRelay<",
            "TT;>;)V"
        }
    .end annotation

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput-object p1, p0, Lcom/jakewharton/rxrelay2/BehaviorRelay$BehaviorDisposable;->downstream:Lio/reactivex/Observer;

    .line 284
    iput-object p2, p0, Lcom/jakewharton/rxrelay2/BehaviorRelay$BehaviorDisposable;->state:Lcom/jakewharton/rxrelay2/BehaviorRelay;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 289
    iget-boolean v0, p0, Lcom/jakewharton/rxrelay2/BehaviorRelay$BehaviorDisposable;->cancelled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 290
    iput-boolean v0, p0, Lcom/jakewharton/rxrelay2/BehaviorRelay$BehaviorDisposable;->cancelled:Z

    .line 292
    iget-object v0, p0, Lcom/jakewharton/rxrelay2/BehaviorRelay$BehaviorDisposable;->state:Lcom/jakewharton/rxrelay2/BehaviorRelay;

    invoke-virtual {v0, p0}, Lcom/jakewharton/rxrelay2/BehaviorRelay;->remove(Lcom/jakewharton/rxrelay2/BehaviorRelay$BehaviorDisposable;)V

    :cond_0
    return-void
.end method

.method emitFirst()V
    .locals 4

    .line 302
    iget-boolean v0, p0, Lcom/jakewharton/rxrelay2/BehaviorRelay$BehaviorDisposable;->cancelled:Z

    if-eqz v0, :cond_0

    return-void

    .line 306
    :cond_0
    monitor-enter p0

    .line 307
    :try_start_0
    iget-boolean v0, p0, Lcom/jakewharton/rxrelay2/BehaviorRelay$BehaviorDisposable;->cancelled:Z

    if-eqz v0, :cond_1

    .line 308
    monitor-exit p0

    return-void

    .line 310
    :cond_1
    iget-boolean v0, p0, Lcom/jakewharton/rxrelay2/BehaviorRelay$BehaviorDisposable;->next:Z

    if-eqz v0, :cond_2

    .line 311
    monitor-exit p0

    return-void

    .line 314
    :cond_2
    iget-object v0, p0, Lcom/jakewharton/rxrelay2/BehaviorRelay$BehaviorDisposable;->state:Lcom/jakewharton/rxrelay2/BehaviorRelay;

    .line 315
    iget-object v1, v0, Lcom/jakewharton/rxrelay2/BehaviorRelay;->readLock:Ljava/util/concurrent/locks/Lock;

    .line 317
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 318
    iget-wide v2, v0, Lcom/jakewharton/rxrelay2/BehaviorRelay;->index:J

    iput-wide v2, p0, Lcom/jakewharton/rxrelay2/BehaviorRelay$BehaviorDisposable;->index:J

    .line 319
    iget-object v0, v0, Lcom/jakewharton/rxrelay2/BehaviorRelay;->value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 320
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 322
    :goto_0
    iput-boolean v2, p0, Lcom/jakewharton/rxrelay2/BehaviorRelay$BehaviorDisposable;->emitting:Z

    .line 323
    iput-boolean v1, p0, Lcom/jakewharton/rxrelay2/BehaviorRelay$BehaviorDisposable;->next:Z

    .line 324
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    .line 327
    invoke-virtual {p0, v0}, Lcom/jakewharton/rxrelay2/BehaviorRelay$BehaviorDisposable;->test(Ljava/lang/Object;)Z

    .line 328
    invoke-virtual {p0}, Lcom/jakewharton/rxrelay2/BehaviorRelay$BehaviorDisposable;->emitLoop()V

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    .line 324
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method emitLoop()V
    .locals 2

    .line 371
    :goto_0
    iget-boolean v0, p0, Lcom/jakewharton/rxrelay2/BehaviorRelay$BehaviorDisposable;->cancelled:Z

    if-eqz v0, :cond_0

    return-void

    .line 375
    :cond_0
    monitor-enter p0

    .line 376
    :try_start_0
    iget-object v0, p0, Lcom/jakewharton/rxrelay2/BehaviorRelay$BehaviorDisposable;->queue:Lcom/jakewharton/rxrelay2/AppendOnlyLinkedArrayList;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 378
    iput-boolean v0, p0, Lcom/jakewharton/rxrelay2/BehaviorRelay$BehaviorDisposable;->emitting:Z

    .line 379
    monitor-exit p0

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 381
    iput-object v1, p0, Lcom/jakewharton/rxrelay2/BehaviorRelay$BehaviorDisposable;->queue:Lcom/jakewharton/rxrelay2/AppendOnlyLinkedArrayList;

    .line 382
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    invoke-virtual {v0, p0}, Lcom/jakewharton/rxrelay2/AppendOnlyLinkedArrayList;->forEachWhile(Lcom/jakewharton/rxrelay2/AppendOnlyLinkedArrayList$NonThrowingPredicate;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 382
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method emitNext(Ljava/lang/Object;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .line 333
    iget-boolean v0, p0, Lcom/jakewharton/rxrelay2/BehaviorRelay$BehaviorDisposable;->cancelled:Z

    if-eqz v0, :cond_0

    return-void

    .line 336
    :cond_0
    iget-boolean v0, p0, Lcom/jakewharton/rxrelay2/BehaviorRelay$BehaviorDisposable;->fastPath:Z

    if-nez v0, :cond_5

    .line 337
    monitor-enter p0

    .line 338
    :try_start_0
    iget-boolean v0, p0, Lcom/jakewharton/rxrelay2/BehaviorRelay$BehaviorDisposable;->cancelled:Z

    if-eqz v0, :cond_1

    .line 339
    monitor-exit p0

    return-void

    .line 341
    :cond_1
    iget-wide v0, p0, Lcom/jakewharton/rxrelay2/BehaviorRelay$BehaviorDisposable;->index:J

    cmp-long v2, v0, p2

    if-nez v2, :cond_2

    .line 342
    monitor-exit p0

    return-void

    .line 344
    :cond_2
    iget-boolean p2, p0, Lcom/jakewharton/rxrelay2/BehaviorRelay$BehaviorDisposable;->emitting:Z

    if-eqz p2, :cond_4

    .line 345
    iget-object p2, p0, Lcom/jakewharton/rxrelay2/BehaviorRelay$BehaviorDisposable;->queue:Lcom/jakewharton/rxrelay2/AppendOnlyLinkedArrayList;

    if-nez p2, :cond_3

    .line 347
    new-instance p2, Lcom/jakewharton/rxrelay2/AppendOnlyLinkedArrayList;

    const/4 p3, 0x4

    invoke-direct {p2, p3}, Lcom/jakewharton/rxrelay2/AppendOnlyLinkedArrayList;-><init>(I)V

    .line 348
    iput-object p2, p0, Lcom/jakewharton/rxrelay2/BehaviorRelay$BehaviorDisposable;->queue:Lcom/jakewharton/rxrelay2/AppendOnlyLinkedArrayList;

    .line 350
    :cond_3
    invoke-virtual {p2, p1}, Lcom/jakewharton/rxrelay2/AppendOnlyLinkedArrayList;->add(Ljava/lang/Object;)V

    .line 351
    monitor-exit p0

    return-void

    :cond_4
    const/4 p2, 0x1

    .line 353
    iput-boolean p2, p0, Lcom/jakewharton/rxrelay2/BehaviorRelay$BehaviorDisposable;->next:Z

    .line 354
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    iput-boolean p2, p0, Lcom/jakewharton/rxrelay2/BehaviorRelay$BehaviorDisposable;->fastPath:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 354
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 358
    :cond_5
    :goto_0
    invoke-virtual {p0, p1}, Lcom/jakewharton/rxrelay2/BehaviorRelay$BehaviorDisposable;->test(Ljava/lang/Object;)Z

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 298
    iget-boolean v0, p0, Lcom/jakewharton/rxrelay2/BehaviorRelay$BehaviorDisposable;->cancelled:Z

    return v0
.end method

.method public test(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 363
    iget-boolean v0, p0, Lcom/jakewharton/rxrelay2/BehaviorRelay$BehaviorDisposable;->cancelled:Z

    if-nez v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/jakewharton/rxrelay2/BehaviorRelay$BehaviorDisposable;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
