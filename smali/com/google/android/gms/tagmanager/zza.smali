.class public final Lcom/google/android/gms/tagmanager/zza;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation


# static fields
.field private static zzazo:Ljava/lang/Object;

.field private static zzazp:Lcom/google/android/gms/tagmanager/zza;


# instance fields
.field private volatile closed:Z

.field private volatile zzazh:J

.field private volatile zzazi:J

.field private volatile zzazj:J

.field private volatile zzazk:J

.field private final zzazl:Ljava/lang/Thread;

.field private final zzazm:Ljava/lang/Object;

.field private zzazn:Lcom/google/android/gms/tagmanager/zzd;

.field private final zzri:Landroid/content/Context;

.field private final zzrz:Lcom/google/android/gms/common/util/Clock;

.field private volatile zzvl:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/zza;->zzazo:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 9
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/tagmanager/zza;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzd;Lcom/google/android/gms/common/util/Clock;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzd;Lcom/google/android/gms/common/util/Clock;)V
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xdbba0

    .line 12
    iput-wide v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzazh:J

    const-wide/16 v0, 0x7530

    .line 13
    iput-wide v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzazi:J

    const/4 p2, 0x0

    .line 14
    iput-boolean p2, p0, Lcom/google/android/gms/tagmanager/zza;->closed:Z

    .line 15
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zza;->zzazm:Ljava/lang/Object;

    .line 16
    new-instance p2, Lcom/google/android/gms/tagmanager/zzb;

    invoke-direct {p2, p0}, Lcom/google/android/gms/tagmanager/zzb;-><init>(Lcom/google/android/gms/tagmanager/zza;)V

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zza;->zzazn:Lcom/google/android/gms/tagmanager/zzd;

    .line 17
    iput-object p3, p0, Lcom/google/android/gms/tagmanager/zza;->zzrz:Lcom/google/android/gms/common/util/Clock;

    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zza;->zzri:Landroid/content/Context;

    goto :goto_0

    .line 20
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zza;->zzri:Landroid/content/Context;

    .line 21
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zza;->zzrz:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/tagmanager/zza;->zzazj:J

    .line 22
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/google/android/gms/tagmanager/zzc;

    invoke-direct {p2, p0}, Lcom/google/android/gms/tagmanager/zzc;-><init>(Lcom/google/android/gms/tagmanager/zza;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zza;->zzazl:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/tagmanager/zza;)Landroid/content/Context;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/google/android/gms/tagmanager/zza;->zzri:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/tagmanager/zza;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zza;->zzni()V

    return-void
.end method

.method private final zznf()V
    .locals 2

    .line 34
    monitor-enter p0

    .line 35
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zza;->closed:Z

    if-nez v0, :cond_0

    .line 36
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zza;->zzng()V

    const-wide/16 v0, 0x1f4

    .line 37
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 40
    :catch_0
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final zzng()V
    .locals 5

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzrz:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/zza;->zzazj:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/zza;->zzazi:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzazm:Ljava/lang/Object;

    monitor-enter v0

    .line 43
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zza;->zzazm:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 44
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzrz:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzazj:J

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 44
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method private final zznh()V
    .locals 5

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzrz:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/zza;->zzazk:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzvl:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    :cond_0
    return-void
.end method

.method private final zzni()V
    .locals 4

    const/16 v0, 0xa

    .line 50
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 51
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zza;->closed:Z

    if-nez v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzazn:Lcom/google/android/gms/tagmanager/zzd;

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/zzd;->zznj()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzvl:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzrz:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzazk:J

    const-string v0, "Obtained fresh AdvertisingId info from GmsCore."

    .line 56
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdi;->zzdo(Ljava/lang/String;)V

    .line 57
    :cond_0
    monitor-enter p0

    .line 58
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 59
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 60
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzazm:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 61
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zza;->zzazm:Ljava/lang/Object;

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/zza;->zzazh:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 62
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    const-string v0, "sleep interrupted in AdvertiserDataPoller thread; continuing"

    .line 64
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdi;->zzdo(Ljava/lang/String;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 59
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_1
    return-void
.end method

.method public static zzo(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/zza;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/tagmanager/zza;->zzazp:Lcom/google/android/gms/tagmanager/zza;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/google/android/gms/tagmanager/zza;->zzazo:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/google/android/gms/tagmanager/zza;->zzazp:Lcom/google/android/gms/tagmanager/zza;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/google/android/gms/tagmanager/zza;

    invoke-direct {v1, p0}, Lcom/google/android/gms/tagmanager/zza;-><init>(Landroid/content/Context;)V

    .line 5
    sput-object v1, Lcom/google/android/gms/tagmanager/zza;->zzazp:Lcom/google/android/gms/tagmanager/zza;

    .line 6
    iget-object p0, v1, Lcom/google/android/gms/tagmanager/zza;->zzazl:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 8
    :cond_1
    :goto_0
    sget-object p0, Lcom/google/android/gms/tagmanager/zza;->zzazp:Lcom/google/android/gms/tagmanager/zza;

    return-object p0
.end method


# virtual methods
.method public final close()V
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/zza;->closed:Z

    .line 68
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzazl:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public final isLimitAdTrackingEnabled()Z
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzvl:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-nez v0, :cond_0

    .line 30
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zza;->zznf()V

    goto :goto_0

    .line 31
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zza;->zzng()V

    .line 32
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zza;->zznh()V

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzvl:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzvl:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    return v0
.end method

.method public final zzne()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzvl:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-nez v0, :cond_0

    .line 25
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zza;->zznf()V

    goto :goto_0

    .line 26
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zza;->zzng()V

    .line 27
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zza;->zznh()V

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzvl:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzvl:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
