.class public Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;
.super Ljava/lang/Object;
.source "TimeoutConfiguration.java"


# instance fields
.field public final timeout:J

.field public final timeoutScheduler:Lio/reactivex/Scheduler;

.field public final timeoutTimeUnit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-wide p1, p0, Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;->timeout:J

    .line 16
    iput-object p3, p0, Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;->timeoutTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 17
    iput-object p4, p0, Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;->timeoutScheduler:Lio/reactivex/Scheduler;

    return-void
.end method
