.class public Lcom/google/android/gms/tagmanager/TagManager;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/TagManager$zza;
    }
.end annotation


# static fields
.field private static zzbhb:Lcom/google/android/gms/tagmanager/TagManager;


# instance fields
.field private final zzbab:Lcom/google/android/gms/tagmanager/DataLayer;

.field private final zzbfc:Lcom/google/android/gms/tagmanager/zzal;

.field private final zzbgy:Lcom/google/android/gms/tagmanager/TagManager$zza;

.field private final zzbgz:Lcom/google/android/gms/tagmanager/zzfm;

.field private final zzbha:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/zzv;",
            ">;"
        }
    .end annotation
.end field

.field private final zzri:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager$zza;Lcom/google/android/gms/tagmanager/DataLayer;Lcom/google/android/gms/tagmanager/zzfm;)V
    .locals 0
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzri:Landroid/content/Context;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbgz:Lcom/google/android/gms/tagmanager/zzfm;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbgy:Lcom/google/android/gms/tagmanager/TagManager$zza;

    .line 7
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbha:Ljava/util/concurrent/ConcurrentMap;

    .line 8
    iput-object p3, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbab:Lcom/google/android/gms/tagmanager/DataLayer;

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbab:Lcom/google/android/gms/tagmanager/DataLayer;

    new-instance p2, Lcom/google/android/gms/tagmanager/zzga;

    invoke-direct {p2, p0}, Lcom/google/android/gms/tagmanager/zzga;-><init>(Lcom/google/android/gms/tagmanager/TagManager;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tagmanager/DataLayer;->zza(Lcom/google/android/gms/tagmanager/DataLayer$zzb;)V

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbab:Lcom/google/android/gms/tagmanager/DataLayer;

    new-instance p2, Lcom/google/android/gms/tagmanager/zzg;

    iget-object p3, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzri:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/google/android/gms/tagmanager/zzg;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tagmanager/DataLayer;->zza(Lcom/google/android/gms/tagmanager/DataLayer$zzb;)V

    .line 11
    new-instance p1, Lcom/google/android/gms/tagmanager/zzal;

    invoke-direct {p1}, Lcom/google/android/gms/tagmanager/zzal;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbfc:Lcom/google/android/gms/tagmanager/zzal;

    .line 13
    iget-object p1, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzri:Landroid/content/Context;

    new-instance p2, Lcom/google/android/gms/tagmanager/zzgc;

    invoke-direct {p2, p0}, Lcom/google/android/gms/tagmanager/zzgc;-><init>(Lcom/google/android/gms/tagmanager/TagManager;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzri:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zza;->zzo(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/zza;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "context cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/TagManager;
    .locals 5
    .annotation build Landroid/support/annotation/RequiresPermission;
        allOf = {
            "android.permission.INTERNET",
            "android.permission.ACCESS_NETWORK_STATE"
        }
    .end annotation

    .line 17
    const-class v0, Lcom/google/android/gms/tagmanager/TagManager;

    monitor-enter v0

    .line 18
    :try_start_0
    sget-object v1, Lcom/google/android/gms/tagmanager/TagManager;->zzbhb:Lcom/google/android/gms/tagmanager/TagManager;

    if-nez v1, :cond_1

    if-eqz p0, :cond_0

    .line 22
    new-instance v1, Lcom/google/android/gms/tagmanager/zzgb;

    invoke-direct {v1}, Lcom/google/android/gms/tagmanager/zzgb;-><init>()V

    .line 23
    new-instance v2, Lcom/google/android/gms/tagmanager/zzat;

    invoke-direct {v2, p0}, Lcom/google/android/gms/tagmanager/zzat;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance v3, Lcom/google/android/gms/tagmanager/TagManager;

    new-instance v4, Lcom/google/android/gms/tagmanager/DataLayer;

    invoke-direct {v4, v2}, Lcom/google/android/gms/tagmanager/DataLayer;-><init>(Lcom/google/android/gms/tagmanager/DataLayer$zzc;)V

    .line 25
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzfn;->zzqe()Lcom/google/android/gms/tagmanager/zzfn;

    move-result-object v2

    invoke-direct {v3, p0, v1, v4, v2}, Lcom/google/android/gms/tagmanager/TagManager;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager$zza;Lcom/google/android/gms/tagmanager/DataLayer;Lcom/google/android/gms/tagmanager/zzfm;)V

    sput-object v3, Lcom/google/android/gms/tagmanager/TagManager;->zzbhb:Lcom/google/android/gms/tagmanager/TagManager;

    goto :goto_0

    :cond_0
    const-string p0, "TagManager.getInstance requires non-null context."

    .line 20
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdi;->e(Ljava/lang/String;)V

    .line 21
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0

    .line 26
    :cond_1
    :goto_0
    sget-object p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbhb:Lcom/google/android/gms/tagmanager/TagManager;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic zza(Lcom/google/android/gms/tagmanager/TagManager;Ljava/lang/String;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/TagManager;->zzed(Ljava/lang/String;)V

    return-void
.end method

.method private final zzed(Ljava/lang/String;)V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbha:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/tagmanager/zzv;

    .line 83
    invoke-virtual {v1, p1}, Lcom/google/android/gms/tagmanager/zzv;->zzdg(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatch()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbgz:Lcom/google/android/gms/tagmanager/zzfm;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzfm;->dispatch()V

    return-void
.end method

.method public getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbab:Lcom/google/android/gms/tagmanager/DataLayer;

    return-object v0
.end method

.method public loadContainerDefaultOnly(Ljava/lang/String;I)Lcom/google/android/gms/common/api/PendingResult;
    .locals 7
    .param p2    # I
        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/tagmanager/ContainerHolder;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbgy:Lcom/google/android/gms/tagmanager/TagManager$zza;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzri:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbfc:Lcom/google/android/gms/tagmanager/zzal;

    const/4 v3, 0x0

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    .line 30
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/TagManager$zza;->zza(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/zzal;)Lcom/google/android/gms/tagmanager/zzy;

    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzy;->zznt()V

    return-object p1
.end method

.method public loadContainerDefaultOnly(Ljava/lang/String;ILandroid/os/Handler;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 7
    .param p2    # I
        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/os/Handler;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/tagmanager/ContainerHolder;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbgy:Lcom/google/android/gms/tagmanager/TagManager$zza;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzri:Landroid/content/Context;

    .line 34
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v6, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbfc:Lcom/google/android/gms/tagmanager/zzal;

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    .line 35
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/TagManager$zza;->zza(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/zzal;)Lcom/google/android/gms/tagmanager/zzy;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzy;->zznt()V

    return-object p1
.end method

.method public loadContainerPreferFresh(Ljava/lang/String;I)Lcom/google/android/gms/common/api/PendingResult;
    .locals 7
    .param p2    # I
        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/tagmanager/ContainerHolder;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbgy:Lcom/google/android/gms/tagmanager/TagManager$zza;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzri:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbfc:Lcom/google/android/gms/tagmanager/zzal;

    const/4 v3, 0x0

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    .line 48
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/TagManager$zza;->zza(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/zzal;)Lcom/google/android/gms/tagmanager/zzy;

    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzy;->zznv()V

    return-object p1
.end method

.method public loadContainerPreferFresh(Ljava/lang/String;ILandroid/os/Handler;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 7
    .param p2    # I
        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/os/Handler;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/tagmanager/ContainerHolder;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbgy:Lcom/google/android/gms/tagmanager/TagManager$zza;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzri:Landroid/content/Context;

    .line 52
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v6, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbfc:Lcom/google/android/gms/tagmanager/zzal;

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    .line 53
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/TagManager$zza;->zza(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/zzal;)Lcom/google/android/gms/tagmanager/zzy;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzy;->zznv()V

    return-object p1
.end method

.method public loadContainerPreferNonDefault(Ljava/lang/String;I)Lcom/google/android/gms/common/api/PendingResult;
    .locals 7
    .param p2    # I
        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/tagmanager/ContainerHolder;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbgy:Lcom/google/android/gms/tagmanager/TagManager$zza;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzri:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbfc:Lcom/google/android/gms/tagmanager/zzal;

    const/4 v3, 0x0

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    .line 39
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/TagManager$zza;->zza(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/zzal;)Lcom/google/android/gms/tagmanager/zzy;

    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzy;->zznu()V

    return-object p1
.end method

.method public loadContainerPreferNonDefault(Ljava/lang/String;ILandroid/os/Handler;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 7
    .param p2    # I
        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/os/Handler;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/tagmanager/ContainerHolder;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbgy:Lcom/google/android/gms/tagmanager/TagManager$zza;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzri:Landroid/content/Context;

    .line 43
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v6, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbfc:Lcom/google/android/gms/tagmanager/zzal;

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    .line 44
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/TagManager$zza;->zza(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/zzal;)Lcom/google/android/gms/tagmanager/zzy;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzy;->zznu()V

    return-object p1
.end method

.method public setVerboseLoggingEnabled(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    .line 58
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdi;->setLogLevel(I)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/tagmanager/zzv;)I
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbha:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzv;->getContainerId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object p1, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbha:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result p1

    return p1
.end method

.method final declared-synchronized zzb(Landroid/net/Uri;)Z
    .locals 5

    monitor-enter p0

    .line 60
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzeh;->zzpm()Lcom/google/android/gms/tagmanager/zzeh;

    move-result-object v0

    .line 61
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/zzeh;->zzb(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 62
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzeh;->getContainerId()Ljava/lang/String;

    move-result-object p1

    .line 63
    sget-object v1, Lcom/google/android/gms/tagmanager/zzgd;->zzbhd:[I

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzeh;->zzpn()Lcom/google/android/gms/tagmanager/zzeh$zza;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/zzeh$zza;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 68
    :pswitch_0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbha:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 69
    iget-object v4, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbha:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/tagmanager/zzv;

    .line 70
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 71
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzeh;->zzpo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/google/android/gms/tagmanager/zzv;->zzdh(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v4}, Lcom/google/android/gms/tagmanager/zzv;->refresh()V

    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {v4}, Lcom/google/android/gms/tagmanager/zzv;->zznq()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 74
    invoke-virtual {v4, v2}, Lcom/google/android/gms/tagmanager/zzv;->zzdh(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v4}, Lcom/google/android/gms/tagmanager/zzv;->refresh()V

    goto :goto_0

    .line 64
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbha:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/tagmanager/zzv;

    if-eqz p1, :cond_2

    .line 66
    invoke-virtual {p1, v2}, Lcom/google/android/gms/tagmanager/zzv;->zzdh(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzv;->refresh()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    const/4 p1, 0x1

    .line 77
    monitor-exit p0

    return p1

    :cond_3
    const/4 p1, 0x0

    .line 78
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 59
    monitor-exit p0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final zzb(Lcom/google/android/gms/tagmanager/zzv;)Z
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbha:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzv;->getContainerId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
