.class final Lio/reactivex/Scheduler$Worker$PeriodicTask;
.super Ljava/lang/Object;
.source "Scheduler.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lio/reactivex/schedulers/SchedulerRunnableIntrospection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/Scheduler$Worker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PeriodicTask"
.end annotation


# instance fields
.field count:J

.field final decoratedRun:Ljava/lang/Runnable;
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation
.end field

.field lastNowNanoseconds:J

.field final periodInNanoseconds:J

.field final sd:Lio/reactivex/internal/disposables/SequentialDisposable;
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation
.end field

.field startInNanoseconds:J

.field final synthetic this$0:Lio/reactivex/Scheduler$Worker;


# direct methods
.method constructor <init>(Lio/reactivex/Scheduler$Worker;JLjava/lang/Runnable;JLio/reactivex/internal/disposables/SequentialDisposable;J)V
    .locals 0
    .param p2    # J
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .param p5    # J
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    .line 469
    iput-object p1, p0, Lio/reactivex/Scheduler$Worker$PeriodicTask;->this$0:Lio/reactivex/Scheduler$Worker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 470
    iput-object p4, p0, Lio/reactivex/Scheduler$Worker$PeriodicTask;->decoratedRun:Ljava/lang/Runnable;

    .line 471
    iput-object p7, p0, Lio/reactivex/Scheduler$Worker$PeriodicTask;->sd:Lio/reactivex/internal/disposables/SequentialDisposable;

    .line 472
    iput-wide p8, p0, Lio/reactivex/Scheduler$Worker$PeriodicTask;->periodInNanoseconds:J

    .line 473
    iput-wide p5, p0, Lio/reactivex/Scheduler$Worker$PeriodicTask;->lastNowNanoseconds:J

    .line 474
    iput-wide p2, p0, Lio/reactivex/Scheduler$Worker$PeriodicTask;->startInNanoseconds:J

    return-void
.end method


# virtual methods
.method public getWrappedRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 507
    iget-object v0, p0, Lio/reactivex/Scheduler$Worker$PeriodicTask;->decoratedRun:Ljava/lang/Runnable;

    return-object v0
.end method

.method public run()V
    .locals 10

    .line 479
    iget-object v0, p0, Lio/reactivex/Scheduler$Worker$PeriodicTask;->decoratedRun:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 481
    iget-object v0, p0, Lio/reactivex/Scheduler$Worker$PeriodicTask;->sd:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 485
    iget-object v0, p0, Lio/reactivex/Scheduler$Worker$PeriodicTask;->this$0:Lio/reactivex/Scheduler$Worker;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler$Worker;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 487
    sget-wide v2, Lio/reactivex/Scheduler;->CLOCK_DRIFT_TOLERANCE_NANOSECONDS:J

    add-long/2addr v2, v0

    iget-wide v4, p0, Lio/reactivex/Scheduler$Worker$PeriodicTask;->lastNowNanoseconds:J

    const-wide/16 v6, 0x1

    cmp-long v8, v2, v4

    if-ltz v8, :cond_1

    iget-wide v2, p0, Lio/reactivex/Scheduler$Worker$PeriodicTask;->lastNowNanoseconds:J

    iget-wide v4, p0, Lio/reactivex/Scheduler$Worker$PeriodicTask;->periodInNanoseconds:J

    add-long/2addr v2, v4

    sget-wide v4, Lio/reactivex/Scheduler;->CLOCK_DRIFT_TOLERANCE_NANOSECONDS:J

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    goto :goto_0

    .line 496
    :cond_0
    iget-wide v2, p0, Lio/reactivex/Scheduler$Worker$PeriodicTask;->startInNanoseconds:J

    iget-wide v4, p0, Lio/reactivex/Scheduler$Worker$PeriodicTask;->count:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lio/reactivex/Scheduler$Worker$PeriodicTask;->count:J

    iget-wide v6, p0, Lio/reactivex/Scheduler$Worker$PeriodicTask;->periodInNanoseconds:J

    mul-long v4, v4, v6

    add-long/2addr v2, v4

    goto :goto_1

    .line 489
    :cond_1
    :goto_0
    iget-wide v2, p0, Lio/reactivex/Scheduler$Worker$PeriodicTask;->periodInNanoseconds:J

    add-long/2addr v2, v0

    .line 494
    iget-wide v4, p0, Lio/reactivex/Scheduler$Worker$PeriodicTask;->periodInNanoseconds:J

    iget-wide v8, p0, Lio/reactivex/Scheduler$Worker$PeriodicTask;->count:J

    add-long/2addr v8, v6

    iput-wide v8, p0, Lio/reactivex/Scheduler$Worker$PeriodicTask;->count:J

    mul-long v4, v4, v8

    sub-long v4, v2, v4

    iput-wide v4, p0, Lio/reactivex/Scheduler$Worker$PeriodicTask;->startInNanoseconds:J

    .line 498
    :goto_1
    iput-wide v0, p0, Lio/reactivex/Scheduler$Worker$PeriodicTask;->lastNowNanoseconds:J

    sub-long/2addr v2, v0

    .line 501
    iget-object v0, p0, Lio/reactivex/Scheduler$Worker$PeriodicTask;->sd:Lio/reactivex/internal/disposables/SequentialDisposable;

    iget-object v1, p0, Lio/reactivex/Scheduler$Worker$PeriodicTask;->this$0:Lio/reactivex/Scheduler$Worker;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p0, v2, v3, v4}, Lio/reactivex/Scheduler$Worker;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/disposables/Disposable;)Z

    :cond_2
    return-void
.end method
