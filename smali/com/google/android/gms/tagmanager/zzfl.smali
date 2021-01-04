.class final Lcom/google/android/gms/tagmanager/zzfl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzej;


# instance fields
.field private final zzabb:J

.field private final zzabc:I

.field private zzabd:D

.field private final zzabf:Ljava/lang/Object;

.field private zzbgh:J

.field private final zzrz:Lcom/google/android/gms/common/util/Clock;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x3c

    const-wide/16 v1, 0x7d0

    .line 8
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/tagmanager/zzfl;-><init>(IJ)V

    return-void
.end method

.method private constructor <init>(IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzfl;->zzabf:Ljava/lang/Object;

    const/16 p1, 0x3c

    .line 3
    iput p1, p0, Lcom/google/android/gms/tagmanager/zzfl;->zzabc:I

    .line 4
    iget p1, p0, Lcom/google/android/gms/tagmanager/zzfl;->zzabc:I

    int-to-double p1, p1

    iput-wide p1, p0, Lcom/google/android/gms/tagmanager/zzfl;->zzabd:D

    const-wide/16 p1, 0x7d0

    .line 5
    iput-wide p1, p0, Lcom/google/android/gms/tagmanager/zzfl;->zzabb:J

    .line 6
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzfl;->zzrz:Lcom/google/android/gms/common/util/Clock;

    return-void
.end method


# virtual methods
.method public final zzew()Z
    .locals 10

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfl;->zzabf:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzfl;->zzrz:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    .line 12
    iget-wide v3, p0, Lcom/google/android/gms/tagmanager/zzfl;->zzabd:D

    iget v5, p0, Lcom/google/android/gms/tagmanager/zzfl;->zzabc:I

    int-to-double v5, v5

    cmpg-double v7, v3, v5

    if-gez v7, :cond_0

    .line 13
    iget-wide v3, p0, Lcom/google/android/gms/tagmanager/zzfl;->zzbgh:J

    const/4 v5, 0x0

    sub-long v3, v1, v3

    long-to-double v3, v3

    .line 14
    iget-wide v5, p0, Lcom/google/android/gms/tagmanager/zzfl;->zzabb:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-double v5, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    const-wide/16 v5, 0x0

    cmpl-double v7, v3, v5

    if-lez v7, :cond_0

    .line 16
    :try_start_1
    iget v5, p0, Lcom/google/android/gms/tagmanager/zzfl;->zzabc:I

    int-to-double v5, v5

    iget-wide v7, p0, Lcom/google/android/gms/tagmanager/zzfl;->zzabd:D

    const/4 v9, 0x0

    add-double/2addr v7, v3

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gms/tagmanager/zzfl;->zzabd:D

    .line 17
    :cond_0
    iput-wide v1, p0, Lcom/google/android/gms/tagmanager/zzfl;->zzbgh:J

    .line 18
    iget-wide v1, p0, Lcom/google/android/gms/tagmanager/zzfl;->zzabd:D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v1, v3

    if-ltz v5, :cond_1

    .line 19
    iget-wide v1, p0, Lcom/google/android/gms/tagmanager/zzfl;->zzabd:D

    const/4 v5, 0x0

    sub-double/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/tagmanager/zzfl;->zzabd:D

    const/4 v1, 0x1

    .line 20
    monitor-exit v0

    return v1

    :cond_1
    const-string v1, "No more tokens available."

    .line 21
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzdi;->zzab(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 22
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 23
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
