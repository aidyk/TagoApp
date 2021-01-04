.class public final Lcom/google/android/gms/internal/measurement/zzbx;
.super Ljava/lang/Object;


# instance fields
.field private final zzqx:Lcom/google/android/gms/internal/measurement/zzaw;

.field private volatile zzyk:Ljava/lang/Boolean;

.field private zzyl:Ljava/lang/String;

.field private zzym:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/measurement/zzaw;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzbx;->zzqx:Lcom/google/android/gms/internal/measurement/zzaw;

    return-void
.end method

.method public static zzdx()Z
    .locals 1

    .line 21
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcf;->zzyw:Lcom/google/android/gms/internal/measurement/zzcg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcg;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static zzdy()I
    .locals 1

    .line 22
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcf;->zzzt:Lcom/google/android/gms/internal/measurement/zzcg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcg;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static zzdz()J
    .locals 2

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcf;->zzze:Lcom/google/android/gms/internal/measurement/zzcg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcg;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzea()J
    .locals 2

    .line 24
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcf;->zzzh:Lcom/google/android/gms/internal/measurement/zzcg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcg;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzeb()I
    .locals 1

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcf;->zzzj:Lcom/google/android/gms/internal/measurement/zzcg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcg;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static zzec()I
    .locals 1

    .line 26
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcf;->zzzk:Lcom/google/android/gms/internal/measurement/zzcg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcg;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static zzed()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcf;->zzzm:Lcom/google/android/gms/internal/measurement/zzcg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcg;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static zzee()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 28
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcf;->zzzl:Lcom/google/android/gms/internal/measurement/zzcg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcg;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static zzef()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcf;->zzzn:Lcom/google/android/gms/internal/measurement/zzcg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcg;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static zzeh()J
    .locals 2

    .line 43
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcf;->zzaab:Lcom/google/android/gms/internal/measurement/zzcg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcg;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final zzdw()Z
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbx;->zzyk:Ljava/lang/Boolean;

    if-nez v0, :cond_5

    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbx;->zzyk:Ljava/lang/Boolean;

    if-nez v0, :cond_4

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbx;->zzqx:Lcom/google/android/gms/internal/measurement/zzaw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzaw;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 10
    invoke-static {}, Lcom/google/android/gms/common/util/ProcessUtils;->getMyProcessName()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbx;->zzyk:Ljava/lang/Boolean;

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbx;->zzyk:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbx;->zzyk:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "com.google.android.gms.analytics"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbx;->zzyk:Ljava/lang/Boolean;

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbx;->zzyk:Ljava/lang/Boolean;

    if-nez v0, :cond_4

    .line 17
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbx;->zzyk:Ljava/lang/Boolean;

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbx;->zzqx:Lcom/google/android/gms/internal/measurement/zzaw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzaw;->zzby()Lcom/google/android/gms/internal/measurement/zzcp;

    move-result-object v0

    const-string v1, "My process not in the list of running processes"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzat;->zzu(Ljava/lang/String;)V

    .line 19
    :cond_4
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 20
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbx;->zzyk:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zzeg()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 30
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcf;->zzzw:Lcom/google/android/gms/internal/measurement/zzcg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcg;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 31
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzbx;->zzym:Ljava/util/Set;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzbx;->zzyl:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzbx;->zzyl:Ljava/lang/String;

    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const-string v1, ","

    .line 33
    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 34
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 35
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    .line 36
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 40
    :cond_1
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbx;->zzyl:Ljava/lang/String;

    .line 41
    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/zzbx;->zzym:Ljava/util/Set;

    .line 42
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbx;->zzym:Ljava/util/Set;

    return-object v0
.end method
