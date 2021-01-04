.class final Lcom/google/android/gms/analytics/Tracker$zza;
.super Lcom/google/android/gms/internal/measurement/zzau;

# interfaces
.implements Lcom/google/android/gms/analytics/GoogleAnalytics$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/Tracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zza"
.end annotation


# instance fields
.field private final synthetic zztl:Lcom/google/android/gms/analytics/Tracker;

.field private zztm:Z

.field private zztn:I

.field private zzto:J

.field private zztp:Z

.field private zztq:J


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/analytics/Tracker;Lcom/google/android/gms/internal/measurement/zzaw;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zztl:Lcom/google/android/gms/analytics/Tracker;

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzau;-><init>(Lcom/google/android/gms/internal/measurement/zzaw;)V

    const-wide/16 p1, -0x1

    .line 3
    iput-wide p1, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzto:J

    return-void
.end method

.method private final zzai()V
    .locals 5

    .line 15
    iget-wide v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzto:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zztm:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzat;->zzcb()Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zztl:Lcom/google/android/gms/analytics/Tracker;

    invoke-static {v1}, Lcom/google/android/gms/analytics/Tracker;->zza(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/analytics/Tracker$zza;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzb(Lcom/google/android/gms/analytics/GoogleAnalytics$zza;)V

    return-void

    .line 16
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzat;->zzcb()Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zztl:Lcom/google/android/gms/analytics/Tracker;

    invoke-static {v1}, Lcom/google/android/gms/analytics/Tracker;->zza(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/analytics/Tracker$zza;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zza(Lcom/google/android/gms/analytics/GoogleAnalytics$zza;)V

    return-void
.end method


# virtual methods
.method public final enableAutoActivityTracking(Z)V
    .locals 0

    .line 9
    iput-boolean p1, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zztm:Z

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/analytics/Tracker$zza;->zzai()V

    return-void
.end method

.method public final setSessionTimeout(J)V
    .locals 0

    .line 6
    iput-wide p1, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzto:J

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/analytics/Tracker$zza;->zzai()V

    return-void
.end method

.method protected final zzag()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zzah()Z
    .locals 2

    monitor-enter p0

    .line 12
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zztp:Z

    const/4 v1, 0x0

    .line 13
    iput-boolean v1, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zztp:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 11
    monitor-exit p0

    throw v0
.end method

.method public final zzc(Landroid/app/Activity;)V
    .locals 10

    .line 19
    iget v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zztn:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzat;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zztq:J

    const-wide/16 v6, 0x3e8

    iget-wide v8, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzto:J

    .line 21
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 23
    iput-boolean v1, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zztp:Z

    .line 24
    :cond_1
    iget v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zztn:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zztn:I

    .line 25
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zztm:Z

    if-eqz v0, :cond_8

    .line 26
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 28
    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zztl:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/Tracker;->setCampaignParamsOnNextHit(Landroid/net/Uri;)V

    .line 29
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "&t"

    const-string v2, "screenview"

    .line 30
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zztl:Lcom/google/android/gms/analytics/Tracker;

    const-string v2, "&cd"

    .line 32
    iget-object v3, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zztl:Lcom/google/android/gms/analytics/Tracker;

    invoke-static {v3}, Lcom/google/android/gms/analytics/Tracker;->zzk(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/internal/measurement/zzdf;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 33
    iget-object v3, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zztl:Lcom/google/android/gms/analytics/Tracker;

    invoke-static {v3}, Lcom/google/android/gms/analytics/Tracker;->zzk(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/internal/measurement/zzdf;

    move-result-object v3

    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    .line 35
    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzdf;->zzaco:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_4

    move-object v4, v3

    goto :goto_1

    .line 38
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    .line 39
    :cond_4
    :goto_1
    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "&dr"

    .line 40
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 42
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    const-string v2, "android.intent.extra.REFERRER_NAME"

    .line 46
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    move-object v1, p1

    .line 51
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "&dr"

    .line 52
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zztl:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    :cond_8
    return-void
.end method

.method public final zzd(Landroid/app/Activity;)V
    .locals 2

    .line 55
    iget p1, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zztn:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zztn:I

    .line 56
    iget p1, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zztn:I

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zztn:I

    .line 57
    iget p1, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zztn:I

    if-nez p1, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzat;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zztq:J

    :cond_0
    return-void
.end method
