.class public final Lcom/google/android/gms/tagmanager/zzy;
.super Lcom/google/android/gms/common/api/internal/BasePendingResult;


# annotations
.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/BasePendingResult<",
        "Lcom/google/android/gms/tagmanager/ContainerHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzbaa:Ljava/lang/String;

.field private zzbaf:J

.field private final zzbai:Landroid/os/Looper;

.field private final zzbao:Lcom/google/android/gms/tagmanager/TagManager;

.field private final zzbar:Lcom/google/android/gms/tagmanager/zzaf;

.field private final zzbas:Lcom/google/android/gms/tagmanager/zzej;

.field private final zzbat:I

.field private final zzbau:Lcom/google/android/gms/tagmanager/zzai;

.field private zzbav:Lcom/google/android/gms/tagmanager/zzah;

.field private zzbaw:Lcom/google/android/gms/internal/measurement/zzru;

.field private volatile zzbax:Lcom/google/android/gms/tagmanager/zzv;

.field private volatile zzbay:Z

.field private zzbaz:Lcom/google/android/gms/internal/measurement/zzo;

.field private zzbba:Ljava/lang/String;

.field private zzbbb:Lcom/google/android/gms/tagmanager/zzag;

.field private zzbbc:Lcom/google/android/gms/tagmanager/zzac;

.field private final zzri:Landroid/content/Context;

.field private final zzrz:Lcom/google/android/gms/common/util/Clock;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/zzah;Lcom/google/android/gms/tagmanager/zzag;Lcom/google/android/gms/internal/measurement/zzru;Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/tagmanager/zzej;Lcom/google/android/gms/tagmanager/zzai;)V
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    if-nez p3, :cond_0

    .line 7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p3

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;-><init>(Landroid/os/Looper;)V

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzy;->zzri:Landroid/content/Context;

    .line 9
    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbao:Lcom/google/android/gms/tagmanager/TagManager;

    if-nez p3, :cond_1

    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    :cond_1
    iput-object p3, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbai:Landroid/os/Looper;

    .line 11
    iput-object p4, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbaa:Ljava/lang/String;

    .line 12
    iput p5, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbat:I

    .line 13
    iput-object p6, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbav:Lcom/google/android/gms/tagmanager/zzah;

    .line 14
    iput-object p7, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbbb:Lcom/google/android/gms/tagmanager/zzag;

    .line 15
    iput-object p8, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbaw:Lcom/google/android/gms/internal/measurement/zzru;

    .line 16
    new-instance p1, Lcom/google/android/gms/tagmanager/zzaf;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/tagmanager/zzaf;-><init>(Lcom/google/android/gms/tagmanager/zzy;Lcom/google/android/gms/tagmanager/zzz;)V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbar:Lcom/google/android/gms/tagmanager/zzaf;

    .line 17
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzo;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzo;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbaz:Lcom/google/android/gms/internal/measurement/zzo;

    .line 18
    iput-object p9, p0, Lcom/google/android/gms/tagmanager/zzy;->zzrz:Lcom/google/android/gms/common/util/Clock;

    .line 19
    iput-object p10, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbas:Lcom/google/android/gms/tagmanager/zzej;

    .line 20
    iput-object p11, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbau:Lcom/google/android/gms/tagmanager/zzai;

    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzy;->zznw()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 22
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzeh;->zzpm()Lcom/google/android/gms/tagmanager/zzeh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzeh;->zzpo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/zzy;->zzdh(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/zzal;)V
    .locals 22

    move-object/from16 v1, p1

    move-object/from16 v4, p4

    .line 1
    new-instance v6, Lcom/google/android/gms/tagmanager/zzex;

    invoke-direct {v6, v1, v4}, Lcom/google/android/gms/tagmanager/zzex;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v7, Lcom/google/android/gms/tagmanager/zzes;

    move-object/from16 v12, p6

    invoke-direct {v7, v1, v4, v12}, Lcom/google/android/gms/tagmanager/zzes;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/zzal;)V

    new-instance v8, Lcom/google/android/gms/internal/measurement/zzru;

    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/measurement/zzru;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object v9

    new-instance v10, Lcom/google/android/gms/tagmanager/zzdg;

    const-string v20, "refreshing"

    .line 3
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object v21

    const/4 v14, 0x1

    const/4 v15, 0x5

    const-wide/32 v16, 0xdbba0

    const-wide/16 v18, 0x1388

    move-object v13, v10

    invoke-direct/range {v13 .. v21}, Lcom/google/android/gms/tagmanager/zzdg;-><init>(IIJJLjava/lang/String;Lcom/google/android/gms/common/util/Clock;)V

    new-instance v11, Lcom/google/android/gms/tagmanager/zzai;

    invoke-direct {v11, v1, v4}, Lcom/google/android/gms/tagmanager/zzai;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v5, p5

    .line 4
    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/tagmanager/zzy;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/zzah;Lcom/google/android/gms/tagmanager/zzag;Lcom/google/android/gms/internal/measurement/zzru;Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/tagmanager/zzej;Lcom/google/android/gms/tagmanager/zzai;)V

    .line 5
    iget-object v1, v0, Lcom/google/android/gms/tagmanager/zzy;->zzbaw:Lcom/google/android/gms/internal/measurement/zzru;

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gms/tagmanager/zzal;->zzoe()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/zzru;->zzfj(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/tagmanager/zzy;)Lcom/google/android/gms/tagmanager/zzej;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbas:Lcom/google/android/gms/tagmanager/zzej;

    return-object p0
.end method

.method private final declared-synchronized zza(Lcom/google/android/gms/internal/measurement/zzo;)V
    .locals 3

    monitor-enter p0

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbav:Lcom/google/android/gms/tagmanager/zzah;

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzrt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzrt;-><init>()V

    .line 92
    iget-wide v1, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbaf:J

    iput-wide v1, v0, Lcom/google/android/gms/internal/measurement/zzrt;->zzbqn:J

    .line 93
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzl;

    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/zzl;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzrt;->zzqg:Lcom/google/android/gms/internal/measurement/zzl;

    .line 94
    iput-object p1, v0, Lcom/google/android/gms/internal/measurement/zzrt;->zzbqo:Lcom/google/android/gms/internal/measurement/zzo;

    .line 95
    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbav:Lcom/google/android/gms/tagmanager/zzah;

    invoke-interface {p1, v0}, Lcom/google/android/gms/tagmanager/zzah;->zza(Lcom/google/android/gms/internal/measurement/zzrt;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 89
    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized zza(Lcom/google/android/gms/internal/measurement/zzo;JZ)V
    .locals 9

    monitor-enter p0

    if-eqz p4, :cond_0

    .line 51
    :try_start_0
    iget-boolean p4, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbay:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 52
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzy;->isReady()Z

    move-result p4

    if-eqz p4, :cond_1

    iget-object p4, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbax:Lcom/google/android/gms/tagmanager/zzv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p4, :cond_1

    .line 53
    monitor-exit p0

    return-void

    .line 54
    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbaz:Lcom/google/android/gms/internal/measurement/zzo;

    .line 55
    iput-wide p2, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbaf:J

    .line 56
    iget-object p4, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbau:Lcom/google/android/gms/tagmanager/zzai;

    invoke-virtual {p4}, Lcom/google/android/gms/tagmanager/zzai;->zznz()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    .line 57
    iget-wide v4, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbaf:J

    const/4 p4, 0x0

    add-long/2addr v4, v0

    iget-object p4, p0, Lcom/google/android/gms/tagmanager/zzy;->zzrz:Lcom/google/android/gms/common/util/Clock;

    .line 58
    invoke-interface {p4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    const/4 p4, 0x0

    sub-long/2addr v4, v6

    .line 59
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 60
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 61
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/zzy;->zzas(J)V

    .line 62
    new-instance p4, Lcom/google/android/gms/tagmanager/Container;

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/zzy;->zzri:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbao:Lcom/google/android/gms/tagmanager/TagManager;

    .line 63
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbaa:Ljava/lang/String;

    move-object v2, p4

    move-wide v6, p2

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/tagmanager/Container;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;Ljava/lang/String;JLcom/google/android/gms/internal/measurement/zzo;)V

    .line 64
    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbax:Lcom/google/android/gms/tagmanager/zzv;

    if-nez p1, :cond_2

    .line 65
    new-instance p1, Lcom/google/android/gms/tagmanager/zzv;

    iget-object p2, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbao:Lcom/google/android/gms/tagmanager/TagManager;

    iget-object p3, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbai:Landroid/os/Looper;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbar:Lcom/google/android/gms/tagmanager/zzaf;

    invoke-direct {p1, p2, p3, p4, v0}, Lcom/google/android/gms/tagmanager/zzv;-><init>(Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/tagmanager/zzw;)V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbax:Lcom/google/android/gms/tagmanager/zzv;

    goto :goto_1

    .line 66
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbax:Lcom/google/android/gms/tagmanager/zzv;

    invoke-virtual {p1, p4}, Lcom/google/android/gms/tagmanager/zzv;->zza(Lcom/google/android/gms/tagmanager/Container;)V

    .line 67
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzy;->isReady()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbbc:Lcom/google/android/gms/tagmanager/zzac;

    invoke-interface {p1, p4}, Lcom/google/android/gms/tagmanager/zzac;->zzb(Lcom/google/android/gms/tagmanager/Container;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 68
    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbax:Lcom/google/android/gms/tagmanager/zzv;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/zzy;->setResult(Lcom/google/android/gms/common/api/Result;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    :cond_3
    monitor-exit p0

    return-void

    .line 50
    :goto_2
    monitor-exit p0

    throw p1
.end method

.method static synthetic zza(Lcom/google/android/gms/tagmanager/zzy;J)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/tagmanager/zzy;->zzas(J)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/tagmanager/zzy;Lcom/google/android/gms/internal/measurement/zzo;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/zzy;->zza(Lcom/google/android/gms/internal/measurement/zzo;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/tagmanager/zzy;Lcom/google/android/gms/internal/measurement/zzo;JZ)V
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/tagmanager/zzy;->zza(Lcom/google/android/gms/internal/measurement/zzo;JZ)V

    return-void
.end method

.method private final declared-synchronized zzas(J)V
    .locals 2

    monitor-enter p0

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbbb:Lcom/google/android/gms/tagmanager/zzag;

    if-nez v0, :cond_0

    const-string p1, "Refresh requested, but no network load scheduler."

    .line 76
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdi;->zzab(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return-void

    .line 78
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbbb:Lcom/google/android/gms/tagmanager/zzag;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbaz:Lcom/google/android/gms/internal/measurement/zzo;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzo;->zzqh:Ljava/lang/String;

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/gms/tagmanager/zzag;->zza(JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 74
    monitor-exit p0

    throw p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/tagmanager/zzy;)Lcom/google/android/gms/tagmanager/zzv;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbax:Lcom/google/android/gms/tagmanager/zzv;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/tagmanager/zzy;)Lcom/google/android/gms/tagmanager/zzai;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbau:Lcom/google/android/gms/tagmanager/zzai;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/tagmanager/zzy;)Lcom/google/android/gms/common/util/Clock;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/google/android/gms/tagmanager/zzy;->zzrz:Lcom/google/android/gms/common/util/Clock;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/tagmanager/zzy;)Z
    .locals 0

    .line 103
    iget-boolean p0, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbay:Z

    return p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/tagmanager/zzy;)Lcom/google/android/gms/internal/measurement/zzo;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbaz:Lcom/google/android/gms/internal/measurement/zzo;

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/tagmanager/zzy;)J
    .locals 2

    .line 106
    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbaf:J

    return-wide v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/tagmanager/zzy;)Z
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzy;->zznw()Z

    move-result p0

    return p0
.end method

.method private final zzn(Z)V
    .locals 11

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbav:Lcom/google/android/gms/tagmanager/zzah;

    new-instance v1, Lcom/google/android/gms/tagmanager/zzad;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/tagmanager/zzad;-><init>(Lcom/google/android/gms/tagmanager/zzy;Lcom/google/android/gms/tagmanager/zzz;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzah;->zza(Lcom/google/android/gms/tagmanager/zzdh;)V

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbbb:Lcom/google/android/gms/tagmanager/zzag;

    new-instance v1, Lcom/google/android/gms/tagmanager/zzae;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/tagmanager/zzae;-><init>(Lcom/google/android/gms/tagmanager/zzy;Lcom/google/android/gms/tagmanager/zzz;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzag;->zza(Lcom/google/android/gms/tagmanager/zzdh;)V

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbav:Lcom/google/android/gms/tagmanager/zzah;

    iget v1, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbat:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzah;->zzu(I)Lcom/google/android/gms/internal/measurement/zzrz;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 44
    new-instance v0, Lcom/google/android/gms/tagmanager/zzv;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbao:Lcom/google/android/gms/tagmanager/TagManager;

    iget-object v9, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbai:Landroid/os/Looper;

    new-instance v10, Lcom/google/android/gms/tagmanager/Container;

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/zzy;->zzri:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbao:Lcom/google/android/gms/tagmanager/TagManager;

    .line 45
    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbaa:Ljava/lang/String;

    const-wide/16 v6, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/tagmanager/Container;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;Ljava/lang/String;JLcom/google/android/gms/internal/measurement/zzrz;)V

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbar:Lcom/google/android/gms/tagmanager/zzaf;

    invoke-direct {v0, v1, v9, v10, v2}, Lcom/google/android/gms/tagmanager/zzv;-><init>(Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/tagmanager/zzw;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbax:Lcom/google/android/gms/tagmanager/zzv;

    .line 46
    :cond_0
    new-instance v0, Lcom/google/android/gms/tagmanager/zzab;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/tagmanager/zzab;-><init>(Lcom/google/android/gms/tagmanager/zzy;Z)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbbc:Lcom/google/android/gms/tagmanager/zzac;

    .line 47
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzy;->zznw()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 48
    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbbb:Lcom/google/android/gms/tagmanager/zzag;

    const-wide/16 v0, 0x0

    const-string v2, ""

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/tagmanager/zzag;->zza(JLjava/lang/String;)V

    return-void

    .line 49
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbav:Lcom/google/android/gms/tagmanager/zzah;

    invoke-interface {p1}, Lcom/google/android/gms/tagmanager/zzah;->zzny()V

    return-void
.end method

.method private final zznw()Z
    .locals 3

    .line 85
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzeh;->zzpm()Lcom/google/android/gms/tagmanager/zzeh;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzeh;->zzpn()Lcom/google/android/gms/tagmanager/zzeh$zza;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/tagmanager/zzeh$zza;->zzbeq:Lcom/google/android/gms/tagmanager/zzeh$zza;

    if-eq v1, v2, :cond_0

    .line 87
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzeh;->zzpn()Lcom/google/android/gms/tagmanager/zzeh$zza;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/tagmanager/zzeh$zza;->zzber:Lcom/google/android/gms/tagmanager/zzeh$zza;

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbaa:Ljava/lang/String;

    .line 88
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzeh;->getContainerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected final synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/zzy;->zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/tagmanager/ContainerHolder;

    move-result-object p1

    return-object p1
.end method

.method protected final zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/tagmanager/ContainerHolder;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbax:Lcom/google/android/gms/tagmanager/zzv;

    if-eqz v0, :cond_0

    .line 81
    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbax:Lcom/google/android/gms/tagmanager/zzv;

    return-object p1

    .line 82
    :cond_0
    sget-object v0, Lcom/google/android/gms/common/api/Status;->RESULT_TIMEOUT:Lcom/google/android/gms/common/api/Status;

    if-ne p1, v0, :cond_1

    const-string v0, "timer expired: setting result to failure"

    .line 83
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdi;->e(Ljava/lang/String;)V

    .line 84
    :cond_1
    new-instance v0, Lcom/google/android/gms/tagmanager/zzv;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/zzv;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method final declared-synchronized zzdh(Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 70
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbba:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbbb:Lcom/google/android/gms/tagmanager/zzag;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbbb:Lcom/google/android/gms/tagmanager/zzag;

    invoke-interface {v0, p1}, Lcom/google/android/gms/tagmanager/zzag;->zzdi(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 69
    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized zznq()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbba:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zznt()V
    .locals 9

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbav:Lcom/google/android/gms/tagmanager/zzah;

    iget v1, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbat:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzah;->zzu(I)Lcom/google/android/gms/internal/measurement/zzrz;

    move-result-object v8

    const/4 v0, 0x0

    if-eqz v8, :cond_0

    .line 26
    new-instance v1, Lcom/google/android/gms/tagmanager/Container;

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/zzy;->zzri:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbao:Lcom/google/android/gms/tagmanager/TagManager;

    .line 27
    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbaa:Ljava/lang/String;

    const-wide/16 v6, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/tagmanager/Container;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;Ljava/lang/String;JLcom/google/android/gms/internal/measurement/zzrz;)V

    .line 28
    new-instance v2, Lcom/google/android/gms/tagmanager/zzv;

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbao:Lcom/google/android/gms/tagmanager/TagManager;

    iget-object v4, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbai:Landroid/os/Looper;

    new-instance v5, Lcom/google/android/gms/tagmanager/zzaa;

    invoke-direct {v5, p0}, Lcom/google/android/gms/tagmanager/zzaa;-><init>(Lcom/google/android/gms/tagmanager/zzy;)V

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/google/android/gms/tagmanager/zzv;-><init>(Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/tagmanager/zzw;)V

    invoke-virtual {p0, v2}, Lcom/google/android/gms/tagmanager/zzy;->setResult(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_0

    :cond_0
    const-string v1, "Default was requested, but no default container was found"

    .line 31
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzdi;->e(Ljava/lang/String;)V

    .line 32
    new-instance v2, Lcom/google/android/gms/common/api/Status;

    const/16 v3, 0xa

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p0, v2}, Lcom/google/android/gms/tagmanager/zzy;->zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/tagmanager/ContainerHolder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/tagmanager/zzy;->setResult(Lcom/google/android/gms/common/api/Result;)V

    .line 33
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbbb:Lcom/google/android/gms/tagmanager/zzag;

    .line 34
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzy;->zzbav:Lcom/google/android/gms/tagmanager/zzah;

    return-void
.end method

.method public final zznu()V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzy;->zzn(Z)V

    return-void
.end method

.method public final zznv()V
    .locals 1

    const/4 v0, 0x1

    .line 38
    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzy;->zzn(Z)V

    return-void
.end method
