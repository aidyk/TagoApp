.class public final Lcom/google/android/gms/internal/measurement/zzal;
.super Lcom/google/android/gms/internal/measurement/zzau;


# instance fields
.field private final zzvq:Lcom/google/android/gms/internal/measurement/zzbi;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzaw;Lcom/google/android/gms/internal/measurement/zzay;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzau;-><init>(Lcom/google/android/gms/internal/measurement/zzaw;)V

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbi;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzbi;-><init>(Lcom/google/android/gms/internal/measurement/zzaw;Lcom/google/android/gms/internal/measurement/zzay;)V

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzal;->zzvq:Lcom/google/android/gms/internal/measurement/zzbi;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzal;)Lcom/google/android/gms/internal/measurement/zzbi;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzal;->zzvq:Lcom/google/android/gms/internal/measurement/zzbi;

    return-object p0
.end method


# virtual methods
.method final onServiceConnected()V
    .locals 1

    .line 68
    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzaf()V

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzal;->zzvq:Lcom/google/android/gms/internal/measurement/zzbi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbi;->onServiceConnected()V

    return-void
.end method

.method public final setLocalDispatchPeriod(I)V
    .locals 2

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzau;->zzcl()V

    const-string v0, "setLocalDispatchPeriod (sec)"

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzat;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzat;->zzca()Lcom/google/android/gms/analytics/zzk;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzam;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/measurement/zzam;-><init>(Lcom/google/android/gms/internal/measurement/zzal;I)V

    .line 14
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzk;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final start()V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzal;->zzvq:Lcom/google/android/gms/internal/measurement/zzbi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbi;->start()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzaz;)J
    .locals 5

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzau;->zzcl()V

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzaf()V

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzal;->zzvq:Lcom/google/android/gms/internal/measurement/zzbi;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzbi;->zza(Lcom/google/android/gms/internal/measurement/zzaz;Z)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 21
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzal;->zzvq:Lcom/google/android/gms/internal/measurement/zzbi;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/measurement/zzbi;->zzb(Lcom/google/android/gms/internal/measurement/zzaz;)V

    :cond_0
    return-wide v0
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzcd;)V
    .locals 2

    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzau;->zzcl()V

    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzat;->zzca()Lcom/google/android/gms/analytics/zzk;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzar;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/measurement/zzar;-><init>(Lcom/google/android/gms/internal/measurement/zzal;Lcom/google/android/gms/internal/measurement/zzcd;)V

    .line 35
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzk;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzck;)V
    .locals 2

    .line 23
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzau;->zzcl()V

    const-string v0, "Hit delivery requested"

    .line 25
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzat;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzat;->zzca()Lcom/google/android/gms/analytics/zzk;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/measurement/zzap;-><init>(Lcom/google/android/gms/internal/measurement/zzal;Lcom/google/android/gms/internal/measurement/zzck;)V

    .line 27
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzk;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    const-string v0, "campaign param can\'t be empty"

    .line 74
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzat;->zzca()Lcom/google/android/gms/analytics/zzk;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzao;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzao;-><init>(Lcom/google/android/gms/internal/measurement/zzal;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 76
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzk;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final zzag()V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzal;->zzvq:Lcom/google/android/gms/internal/measurement/zzbi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzau;->zzq()V

    return-void
.end method

.method public final zzbr()V
    .locals 2

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzau;->zzcl()V

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzat;->zzca()Lcom/google/android/gms/analytics/zzk;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/zzaq;-><init>(Lcom/google/android/gms/internal/measurement/zzal;)V

    .line 31
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzk;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzbs()V
    .locals 4

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzau;->zzcl()V

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzat;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 39
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzcw;->zza(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzcx;->zze(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 41
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.google.android.gms.analytics.AnalyticsService"

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 42
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzal;->zza(Lcom/google/android/gms/internal/measurement/zzcd;)V

    return-void
.end method

.method public final zzbt()Z
    .locals 5

    .line 46
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzau;->zzcl()V

    .line 48
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzat;->zzca()Lcom/google/android/gms/analytics/zzk;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzas;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/zzas;-><init>(Lcom/google/android/gms/internal/measurement/zzal;)V

    .line 49
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzk;->zza(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    const-wide/16 v1, 0x4

    const/4 v3, 0x0

    .line 50
    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v1, "syncDispatchLocalHits timed out"

    .line 59
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/zzat;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    return v3

    :catch_1
    move-exception v0

    const-string v1, "syncDispatchLocalHits failed"

    .line 56
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/zzat;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    return v3

    :catch_2
    move-exception v0

    const-string v1, "syncDispatchLocalHits interrupted"

    .line 53
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/zzat;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    return v3
.end method

.method public final zzbu()V
    .locals 2

    .line 61
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzau;->zzcl()V

    .line 62
    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzaf()V

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzal;->zzvq:Lcom/google/android/gms/internal/measurement/zzbi;

    .line 64
    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzaf()V

    .line 65
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzau;->zzcl()V

    const-string v1, "Service disconnected"

    .line 66
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzat;->zzq(Ljava/lang/String;)V

    return-void
.end method

.method final zzbv()V
    .locals 1

    .line 71
    invoke-static {}, Lcom/google/android/gms/analytics/zzk;->zzaf()V

    .line 72
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzal;->zzvq:Lcom/google/android/gms/internal/measurement/zzbi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbi;->zzbv()V

    return-void
.end method
