.class public Lcom/google/android/gms/tagmanager/Container;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/Container$zzb;,
        Lcom/google/android/gms/tagmanager/Container$zza;,
        Lcom/google/android/gms/tagmanager/Container$FunctionCallTagCallback;,
        Lcom/google/android/gms/tagmanager/Container$FunctionCallMacroCallback;
    }
.end annotation


# instance fields
.field private final zzbaa:Ljava/lang/String;

.field private final zzbab:Lcom/google/android/gms/tagmanager/DataLayer;

.field private zzbac:Lcom/google/android/gms/tagmanager/zzfb;

.field private zzbad:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/Container$FunctionCallMacroCallback;",
            ">;"
        }
    .end annotation
.end field

.field private zzbae:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/Container$FunctionCallTagCallback;",
            ">;"
        }
    .end annotation
.end field

.field private volatile zzbaf:J

.field private volatile zzbag:Ljava/lang/String;

.field private final zzri:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;Ljava/lang/String;JLcom/google/android/gms/internal/measurement/zzo;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzbad:Ljava/util/Map;

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzbae:Ljava/util/Map;

    const-string v0, ""

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzbag:Ljava/lang/String;

    .line 15
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/Container;->zzri:Landroid/content/Context;

    .line 16
    iput-object p2, p0, Lcom/google/android/gms/tagmanager/Container;->zzbab:Lcom/google/android/gms/tagmanager/DataLayer;

    .line 17
    iput-object p3, p0, Lcom/google/android/gms/tagmanager/Container;->zzbaa:Ljava/lang/String;

    .line 18
    iput-wide p4, p0, Lcom/google/android/gms/tagmanager/Container;->zzbaf:J

    .line 19
    iget-object p1, p6, Lcom/google/android/gms/internal/measurement/zzo;->zzqg:Lcom/google/android/gms/internal/measurement/zzl;

    if-eqz p1, :cond_2

    .line 22
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzrv;->zza(Lcom/google/android/gms/internal/measurement/zzl;)Lcom/google/android/gms/internal/measurement/zzrz;

    move-result-object p2
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzsd; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/Container;->zza(Lcom/google/android/gms/internal/measurement/zzrz;)V

    goto :goto_0

    :catch_0
    move-exception p2

    .line 25
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzsd;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x2e

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    add-int/2addr p3, p4

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Not loading resource: "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " because it is invalid: "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdi;->e(Ljava/lang/String;)V

    .line 28
    :goto_0
    iget-object p1, p6, Lcom/google/android/gms/internal/measurement/zzo;->zzqf:[Lcom/google/android/gms/internal/measurement/zzn;

    if-eqz p1, :cond_1

    .line 29
    iget-object p1, p6, Lcom/google/android/gms/internal/measurement/zzo;->zzqf:[Lcom/google/android/gms/internal/measurement/zzn;

    .line 30
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 31
    array-length p3, p1

    const/4 p4, 0x0

    :goto_1
    if-ge p4, p3, :cond_0

    aget-object p5, p1, p4

    .line 32
    invoke-interface {p2, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    .line 34
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/Container;->zznp()Lcom/google/android/gms/tagmanager/zzfb;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tagmanager/zzfb;->zzf(Ljava/util/List;)V

    :cond_1
    return-void

    .line 21
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;Ljava/lang/String;JLcom/google/android/gms/internal/measurement/zzrz;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/google/android/gms/tagmanager/Container;->zzbad:Ljava/util/Map;

    .line 3
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/google/android/gms/tagmanager/Container;->zzbae:Ljava/util/Map;

    const-string p4, ""

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/tagmanager/Container;->zzbag:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/Container;->zzri:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/tagmanager/Container;->zzbab:Lcom/google/android/gms/tagmanager/DataLayer;

    .line 7
    iput-object p3, p0, Lcom/google/android/gms/tagmanager/Container;->zzbaa:Ljava/lang/String;

    const-wide/16 p1, 0x0

    .line 8
    iput-wide p1, p0, Lcom/google/android/gms/tagmanager/Container;->zzbaf:J

    .line 9
    invoke-direct {p0, p6}, Lcom/google/android/gms/tagmanager/Container;->zza(Lcom/google/android/gms/internal/measurement/zzrz;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/measurement/zzrz;)V
    .locals 9

    .line 96
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzrz;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzbag:Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzbag:Ljava/lang/String;

    .line 98
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzeh;->zzpm()Lcom/google/android/gms/tagmanager/zzeh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzeh;->zzpn()Lcom/google/android/gms/tagmanager/zzeh$zza;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/tagmanager/zzeh$zza;->zzber:Lcom/google/android/gms/tagmanager/zzeh$zza;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/zzeh$zza;->equals(Ljava/lang/Object;)Z

    .line 99
    new-instance v8, Lcom/google/android/gms/tagmanager/zzdq;

    invoke-direct {v8}, Lcom/google/android/gms/tagmanager/zzdq;-><init>()V

    .line 101
    new-instance v0, Lcom/google/android/gms/tagmanager/zzfb;

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/Container;->zzri:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/tagmanager/Container;->zzbab:Lcom/google/android/gms/tagmanager/DataLayer;

    new-instance v6, Lcom/google/android/gms/tagmanager/Container$zza;

    const/4 v1, 0x0

    invoke-direct {v6, p0, v1}, Lcom/google/android/gms/tagmanager/Container$zza;-><init>(Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/tagmanager/zzu;)V

    new-instance v7, Lcom/google/android/gms/tagmanager/Container$zzb;

    invoke-direct {v7, p0, v1}, Lcom/google/android/gms/tagmanager/Container$zzb;-><init>(Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/tagmanager/zzu;)V

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/tagmanager/zzfb;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzrz;Lcom/google/android/gms/tagmanager/DataLayer;Lcom/google/android/gms/tagmanager/zzan;Lcom/google/android/gms/tagmanager/zzan;Lcom/google/android/gms/tagmanager/zzbo;)V

    .line 102
    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/Container;->zza(Lcom/google/android/gms/tagmanager/zzfb;)V

    const-string p1, "_gtm.loadEventEnabled"

    .line 103
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/Container;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 104
    iget-object p1, p0, Lcom/google/android/gms/tagmanager/Container;->zzbab:Lcom/google/android/gms/tagmanager/DataLayer;

    const-string v0, "gtm.load"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "gtm.id"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/Container;->zzbaa:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 105
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 106
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tagmanager/DataLayer;->pushEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private final declared-synchronized zza(Lcom/google/android/gms/tagmanager/zzfb;)V
    .locals 0

    monitor-enter p0

    .line 108
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/Container;->zzbac:Lcom/google/android/gms/tagmanager/zzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 107
    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized zznp()Lcom/google/android/gms/tagmanager/zzfb;
    .locals 1

    monitor-enter p0

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzbac:Lcom/google/android/gms/tagmanager/zzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;)Z
    .locals 2

    .line 37
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/Container;->zznp()Lcom/google/android/gms/tagmanager/zzfb;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "getBoolean called for closed container."

    .line 39
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdi;->e(Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzgj;->zzqn()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 41
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/zzfb;->zzeb(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzdz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzdz;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzp;

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzgj;->zzg(Lcom/google/android/gms/internal/measurement/zzp;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x42

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Calling getBoolean() threw an exception: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Returning default value."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 43
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdi;->e(Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzgj;->zzqn()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public getContainerId()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzbaa:Ljava/lang/String;

    return-object v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2

    .line 45
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/Container;->zznp()Lcom/google/android/gms/tagmanager/zzfb;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "getDouble called for closed container."

    .line 47
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdi;->e(Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzgj;->zzqm()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 49
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/zzfb;->zzeb(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzdz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzdz;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzp;

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzgj;->zzf(Lcom/google/android/gms/internal/measurement/zzp;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 50
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x41

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Calling getDouble() threw an exception: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Returning default value."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 51
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdi;->e(Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzgj;->zzqm()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLastRefreshTime()J
    .locals 2

    .line 69
    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzbaf:J

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2

    .line 53
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/Container;->zznp()Lcom/google/android/gms/tagmanager/zzfb;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "getLong called for closed container."

    .line 55
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdi;->e(Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzgj;->zzql()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 57
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/zzfb;->zzeb(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzdz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzdz;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzp;

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzgj;->zze(Lcom/google/android/gms/internal/measurement/zzp;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Calling getLong() threw an exception: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Returning default value."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 59
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdi;->e(Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzgj;->zzql()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 61
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/Container;->zznp()Lcom/google/android/gms/tagmanager/zzfb;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "getString called for closed container."

    .line 63
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdi;->e(Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzgj;->zzqp()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 65
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/zzfb;->zzeb(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzdz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzdz;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzp;

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzgj;->zzc(Lcom/google/android/gms/internal/measurement/zzp;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x41

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Calling getString() threw an exception: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Returning default value."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdi;->e(Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzgj;->zzqp()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isDefault()Z
    .locals 5

    .line 70
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/Container;->getLastRefreshTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public registerFunctionCallMacroCallback(Ljava/lang/String;Lcom/google/android/gms/tagmanager/Container$FunctionCallMacroCallback;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 73
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzbad:Ljava/util/Map;

    monitor-enter v0

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/Container;->zzbad:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 72
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Macro handler must be non-null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public registerFunctionCallTagCallback(Ljava/lang/String;Lcom/google/android/gms/tagmanager/Container$FunctionCallTagCallback;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzbae:Ljava/util/Map;

    monitor-enter v0

    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/Container;->zzbae:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 83
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Tag callback must be non-null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final release()V
    .locals 1

    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzbac:Lcom/google/android/gms/tagmanager/zzfb;

    return-void
.end method

.method public unregisterFunctionCallMacroCallback(Ljava/lang/String;)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzbad:Ljava/util/Map;

    monitor-enter v0

    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/Container;->zzbad:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unregisterFunctionCallTagCallback(Ljava/lang/String;)V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzbae:Ljava/util/Map;

    monitor-enter v0

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/Container;->zzbae:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final zzde(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/Container$FunctionCallMacroCallback;
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzbad:Ljava/util/Map;

    monitor-enter v0

    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/Container;->zzbad:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/tagmanager/Container$FunctionCallMacroCallback;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 81
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzdf(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/Container$FunctionCallTagCallback;
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzbae:Ljava/util/Map;

    monitor-enter v0

    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/Container;->zzbae:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/tagmanager/Container$FunctionCallTagCallback;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 92
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzdg(Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 93
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/Container;->zznp()Lcom/google/android/gms/tagmanager/zzfb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/zzfb;->zzdg(Ljava/lang/String;)V

    return-void
.end method

.method public final zzno()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzbag:Ljava/lang/String;

    return-object v0
.end method
