.class public Lcom/polidea/rxandroidble2/Timeout;
.super Ljava/lang/Object;
.source "Timeout.java"


# instance fields
.field public final timeUnit:Ljava/util/concurrent/TimeUnit;

.field public final timeout:J


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p3, p0, Lcom/polidea/rxandroidble2/Timeout;->timeUnit:Ljava/util/concurrent/TimeUnit;

    .line 12
    iput-wide p1, p0, Lcom/polidea/rxandroidble2/Timeout;->timeout:J

    return-void
.end method
