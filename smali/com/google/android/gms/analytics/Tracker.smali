.class public Lcom/google/android/gms/analytics/Tracker;
.super Lcom/google/android/gms/internal/measurement/zzau;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/analytics/Tracker$zza;
    }
.end annotation


# instance fields
.field private zzsx:Z

.field private final zzsy:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzsz:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzta:Lcom/google/android/gms/internal/measurement/zzcn;

.field private final zztb:Lcom/google/android/gms/analytics/Tracker$zza;

.field private zztc:Lcom/google/android/gms/analytics/ExceptionReporter;

.field private zztd:Lcom/google/android/gms/internal/measurement/zzdf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzaw;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzcn;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzau;-><init>(Lcom/google/android/gms/internal/measurement/zzaw;)V

    .line 2
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/analytics/Tracker;->zzsy:Ljava/util/Map;

    .line 3
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/analytics/Tracker;->zzsz:Ljava/util/Map;

    if-eqz p2, :cond_0

    .line 5
    iget-object p3, p0, Lcom/google/android/gms/analytics/Tracker;->zzsy:Ljava/util/Map;

    const-string v0, "&tid"

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/analytics/Tracker;->zzsy:Ljava/util/Map;

    const-string p3, "useSecure"

    const-string v0, "1"

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p2, p0, Lcom/google/android/gms/analytics/Tracker;->zzsy:Ljava/util/Map;

    const-string p3, "&a"

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance p2, Lcom/google/android/gms/internal/measurement/zzcn;

    const-string p3, "tracking"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzat;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-direct {p2, p3, v0}, Lcom/google/android/gms/internal/measurement/zzcn;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/util/Clock;)V

    iput-object p2, p0, Lcom/google/android/gms/analytics/Tracker;->zzta:Lcom/google/android/gms/internal/measurement/zzcn;

    .line 9
    new-instance p2, Lcom/google/android/gms/analytics/Tracker$zza;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/analytics/Tracker$zza;-><init>(Lcom/google/android/gms/analytics/Tracker;Lcom/google/android/gms/internal/measurement/zzaw;)V

    iput-object p2, p0, Lcom/google/android/gms/analytics/Tracker;->zztb:Lcom/google/android/gms/analytics/Tracker$zza;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/analytics/Tracker$zza;
    .locals 0

    .line 248
    iget-object p0, p0, Lcom/google/android/gms/analytics/Tracker;->zztb:Lcom/google/android/gms/analytics/Tracker$zza;

    return-object p0
.end method

.method private static zza(Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 85
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "&"

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 91
    :cond_2
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static zza(Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 92
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p0, :cond_0

    return-void

    .line 95
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 96
    invoke-static {v0}, Lcom/google/android/gms/analytics/Tracker;->zza(Ljava/util/Map$Entry;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 98
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/internal/measurement/zzak;
    .locals 0

    .line 249
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzat;->zzch()Lcom/google/android/gms/internal/measurement/zzak;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/internal/measurement/zzbh;
    .locals 0

    .line 250
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzat;->zzci()Lcom/google/android/gms/internal/measurement/zzbh;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/internal/measurement/zzcb;
    .locals 0

    .line 251
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzat;->zzcj()Lcom/google/android/gms/internal/measurement/zzcb;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/internal/measurement/zzcb;
    .locals 0

    .line 252
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzat;->zzcj()Lcom/google/android/gms/internal/measurement/zzcb;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/internal/measurement/zzcn;
    .locals 0

    .line 253
    iget-object p0, p0, Lcom/google/android/gms/analytics/Tracker;->zzta:Lcom/google/android/gms/internal/measurement/zzcn;

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/internal/measurement/zzcp;
    .locals 0

    .line 254
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzat;->zzby()Lcom/google/android/gms/internal/measurement/zzcp;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzh(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/internal/measurement/zzcp;
    .locals 0

    .line 255
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzat;->zzby()Lcom/google/android/gms/internal/measurement/zzcp;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzi(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/internal/measurement/zzal;
    .locals 0

    .line 256
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzat;->zzcc()Lcom/google/android/gms/internal/measurement/zzal;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzj(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/internal/measurement/zzal;
    .locals 0

    .line 257
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzat;->zzcc()Lcom/google/android/gms/internal/measurement/zzal;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzk(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/internal/measurement/zzdf;
    .locals 0

    .line 258
    iget-object p0, p0, Lcom/google/android/gms/analytics/Tracker;->zztd:Lcom/google/android/gms/internal/measurement/zzdf;

    return-object p0
.end method


# virtual methods
.method public enableAdvertisingIdCollection(Z)V
    .locals 0

    .line 246
    iput-boolean p1, p0, Lcom/google/android/gms/analytics/Tracker;->zzsx:Z

    return-void
.end method

.method public enableAutoActivityTracking(Z)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zztb:Lcom/google/android/gms/analytics/Tracker$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/Tracker$zza;->enableAutoActivityTracking(Z)V

    return-void
.end method

.method public enableExceptionReporting(Z)V
    .locals 2

    .line 64
    monitor-enter p0

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zztc:Lcom/google/android/gms/analytics/ExceptionReporter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne v0, p1, :cond_1

    .line 68
    monitor-exit p0

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 70
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzat;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 71
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 72
    new-instance v1, Lcom/google/android/gms/analytics/ExceptionReporter;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/gms/analytics/ExceptionReporter;-><init>(Lcom/google/android/gms/analytics/Tracker;Ljava/lang/Thread$UncaughtExceptionHandler;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->zztc:Lcom/google/android/gms/analytics/ExceptionReporter;

    .line 73
    iget-object p1, p0, Lcom/google/android/gms/analytics/Tracker;->zztc:Lcom/google/android/gms/analytics/ExceptionReporter;

    invoke-static {p1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    const-string p1, "Uncaught exceptions will be reported to Google Analytics"

    .line 74
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzat;->zzq(Ljava/lang/String;)V

    goto :goto_1

    .line 76
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/analytics/Tracker;->zztc:Lcom/google/android/gms/analytics/ExceptionReporter;

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/ExceptionReporter;->zzp()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p1

    .line 77
    invoke-static {p1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    const-string p1, "Uncaught exceptions will not be reported to Google Analytics"

    .line 78
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzat;->zzq(Ljava/lang/String;)V

    .line 79
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 143
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzau;->zzcl()V

    .line 144
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzsy:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzsy:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    const-string v0, "&ul"

    .line 148
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzdg;->zza(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v0, "&cid"

    .line 150
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 151
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzat;->zzcg()Lcom/google/android/gms/internal/measurement/zzbo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbo;->zzdr()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const-string v0, "&sr"

    .line 152
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 153
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzat;->zzcj()Lcom/google/android/gms/internal/measurement/zzcb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzcb;->zzel()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const-string v0, "&aid"

    .line 154
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 155
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzat;->zzci()Lcom/google/android/gms/internal/measurement/zzbh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbh;->zzdf()Lcom/google/android/gms/internal/measurement/zzx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzx;->zzal()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    const-string v0, "&an"

    .line 156
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 157
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzat;->zzci()Lcom/google/android/gms/internal/measurement/zzbh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbh;->zzdf()Lcom/google/android/gms/internal/measurement/zzx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzx;->zzaj()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    const-string v0, "&av"

    .line 158
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 159
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzat;->zzci()Lcom/google/android/gms/internal/measurement/zzbh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbh;->zzdf()Lcom/google/android/gms/internal/measurement/zzx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzx;->zzak()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    const-string v0, "&aiid"

    .line 160
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 161
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzat;->zzci()Lcom/google/android/gms/internal/measurement/zzbh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbh;->zzdf()Lcom/google/android/gms/internal/measurement/zzx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzx;->zzam()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_8
    return-object v1
.end method

.method public send(Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 101
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzat;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    .line 102
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzat;->zzcb()Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getAppOptOut()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "AppOptOut is set to true. Not sending Google Analytics hit"

    .line 103
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzat;->zzr(Ljava/lang/String;)V

    return-void

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzat;->zzcb()Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->isDryRunEnabled()Z

    move-result v8

    .line 106
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 107
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzsy:Ljava/util/Map;

    invoke-static {v0, v3}, Lcom/google/android/gms/analytics/Tracker;->zza(Ljava/util/Map;Ljava/util/Map;)V

    .line 108
    invoke-static {p1, v3}, Lcom/google/android/gms/analytics/Tracker;->zza(Ljava/util/Map;Ljava/util/Map;)V

    .line 109
    iget-object p1, p0, Lcom/google/android/gms/analytics/Tracker;->zzsy:Ljava/util/Map;

    const-string v0, "useSecure"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzdg;->zzb(Ljava/lang/String;Z)Z

    move-result v9

    .line 110
    iget-object p1, p0, Lcom/google/android/gms/analytics/Tracker;->zzsz:Ljava/util/Map;

    .line 111
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_2

    .line 113
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 114
    invoke-static {v1}, Lcom/google/android/gms/analytics/Tracker;->zza(Ljava/util/Map$Entry;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 115
    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 116
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 118
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/analytics/Tracker;->zzsz:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    const-string p1, "t"

    .line 119
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    .line 120
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 121
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzat;->zzby()Lcom/google/android/gms/internal/measurement/zzcp;

    move-result-object p1

    const-string v0, "Missing hit type parameter"

    invoke-virtual {p1, v3, v0}, Lcom/google/android/gms/internal/measurement/zzcp;->zza(Ljava/util/Map;Ljava/lang/String;)V

    return-void

    :cond_3
    const-string p1, "tid"

    .line 123
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v10, p1

    check-cast v10, Ljava/lang/String;

    .line 124
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 125
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzat;->zzby()Lcom/google/android/gms/internal/measurement/zzcp;

    move-result-object p1

    const-string v0, "Missing tracking id parameter"

    invoke-virtual {p1, v3, v0}, Lcom/google/android/gms/internal/measurement/zzcp;->zza(Ljava/util/Map;Ljava/lang/String;)V

    return-void

    .line 128
    :cond_4
    iget-boolean v4, p0, Lcom/google/android/gms/analytics/Tracker;->zzsx:Z

    .line 130
    monitor-enter p0

    :try_start_0
    const-string p1, "screenview"

    .line 131
    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "pageview"

    .line 132
    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "appview"

    .line 133
    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 134
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 135
    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/analytics/Tracker;->zzsy:Ljava/util/Map;

    const-string v1, "&a"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p1, v0

    const v1, 0x7fffffff

    if-lt p1, v1, :cond_6

    const/4 p1, 0x1

    .line 138
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzsy:Ljava/util/Map;

    const-string v1, "&a"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzat;->zzca()Lcom/google/android/gms/analytics/zzk;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/analytics/zzp;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/analytics/zzp;-><init>(Lcom/google/android/gms/analytics/Tracker;Ljava/util/Map;ZLjava/lang/String;JZZLjava/lang/String;)V

    .line 141
    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/zzk;->zza(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 139
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Key should be non-null"

    .line 163
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzsy:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setAnonymizeIp(Z)V
    .locals 1

    const-string v0, "&aip"

    .line 207
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzdg;->zzc(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&aid"

    .line 201
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAppInstallerId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&aiid"

    .line 203
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&an"

    .line 199
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&av"

    .line 205
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCampaignParamsOnNextHit(Landroid/net/Uri;)V
    .locals 3

    if-eqz p1, :cond_d

    .line 209
    invoke-virtual {p1}, Landroid/net/Uri;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "referrer"

    .line 211
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 212
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "http://hostname/?"

    .line 214
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "utm_id"

    .line 215
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 217
    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->zzsz:Ljava/util/Map;

    const-string v2, "&ci"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v0, "anid"

    .line 218
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 220
    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->zzsz:Ljava/util/Map;

    const-string v2, "&anid"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v0, "utm_campaign"

    .line 221
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 223
    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->zzsz:Ljava/util/Map;

    const-string v2, "&cn"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v0, "utm_content"

    .line 224
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 226
    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->zzsz:Ljava/util/Map;

    const-string v2, "&cc"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-string v0, "utm_medium"

    .line 227
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 229
    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->zzsz:Ljava/util/Map;

    const-string v2, "&cm"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const-string v0, "utm_source"

    .line 230
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 232
    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->zzsz:Ljava/util/Map;

    const-string v2, "&cs"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    const-string v0, "utm_term"

    .line 233
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 235
    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->zzsz:Ljava/util/Map;

    const-string v2, "&ck"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    const-string v0, "dclid"

    .line 236
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 238
    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->zzsz:Ljava/util/Map;

    const-string v2, "&dclid"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    const-string v0, "gclid"

    .line 239
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 241
    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->zzsz:Ljava/util/Map;

    const-string v2, "&gclid"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    const-string v0, "aclid"

    .line 242
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 244
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzsz:Ljava/util/Map;

    const-string v1, "&aclid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    return-void

    :cond_d
    :goto_1
    return-void
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&cid"

    .line 197
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&de"

    .line 186
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHostname(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&dh"

    .line 180
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&ul"

    .line 184
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&dl"

    .line 174
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&dp"

    .line 178
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setReferrer(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&dr"

    .line 176
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSampleRate(D)V
    .locals 1

    const-string v0, "&sf"

    .line 168
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setScreenColors(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&sd"

    .line 188
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setScreenName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&cd"

    .line 172
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setScreenResolution(II)V
    .locals 3

    if-gez p1, :cond_0

    if-gez p2, :cond_0

    const-string p1, "Invalid width or height. The values should be non-negative."

    .line 191
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzat;->zzt(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "&sr"

    const/16 v1, 0x17

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "x"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSessionTimeout(J)V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zztb:Lcom/google/android/gms/analytics/Tracker$zza;

    const-wide/16 v1, 0x3e8

    mul-long p1, p1, v1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/analytics/Tracker$zza;->setSessionTimeout(J)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&dt"

    .line 182
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUseSecure(Z)V
    .locals 1

    const-string v0, "useSecure"

    .line 170
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzdg;->zzc(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setViewportSize(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&vp"

    .line 195
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzdf;)V
    .locals 6

    const-string v0, "Loading Tracker config values"

    .line 19
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzat;->zzq(Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lcom/google/android/gms/analytics/Tracker;->zztd:Lcom/google/android/gms/internal/measurement/zzdf;

    .line 21
    iget-object p1, p0, Lcom/google/android/gms/analytics/Tracker;->zztd:Lcom/google/android/gms/internal/measurement/zzdf;

    .line 22
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzdf;->zzaci:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 24
    iget-object p1, p0, Lcom/google/android/gms/analytics/Tracker;->zztd:Lcom/google/android/gms/internal/measurement/zzdf;

    .line 25
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzdf;->zzaci:Ljava/lang/String;

    const-string v2, "&tid"

    .line 27
    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "trackingId loaded"

    .line 28
    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/measurement/zzat;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/analytics/Tracker;->zztd:Lcom/google/android/gms/internal/measurement/zzdf;

    .line 30
    iget-wide v2, p1, Lcom/google/android/gms/internal/measurement/zzdf;->zzacj:D

    const-wide/16 v4, 0x0

    cmpl-double p1, v2, v4

    if-ltz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    .line 32
    iget-object p1, p0, Lcom/google/android/gms/analytics/Tracker;->zztd:Lcom/google/android/gms/internal/measurement/zzdf;

    .line 33
    iget-wide v2, p1, Lcom/google/android/gms/internal/measurement/zzdf;->zzacj:D

    .line 34
    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    const-string v2, "&sf"

    .line 35
    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Sample frequency loaded"

    .line 36
    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/measurement/zzat;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/analytics/Tracker;->zztd:Lcom/google/android/gms/internal/measurement/zzdf;

    .line 38
    iget p1, p1, Lcom/google/android/gms/internal/measurement/zzdf;->zzack:I

    if-ltz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_5

    .line 40
    iget-object p1, p0, Lcom/google/android/gms/analytics/Tracker;->zztd:Lcom/google/android/gms/internal/measurement/zzdf;

    .line 41
    iget p1, p1, Lcom/google/android/gms/internal/measurement/zzdf;->zzack:I

    int-to-long v2, p1

    .line 43
    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/analytics/Tracker;->setSessionTimeout(J)V

    const-string v2, "Session timeout loaded"

    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/measurement/zzat;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/analytics/Tracker;->zztd:Lcom/google/android/gms/internal/measurement/zzdf;

    .line 46
    iget p1, p1, Lcom/google/android/gms/internal/measurement/zzdf;->zzacl:I

    const/4 v2, -0x1

    if-eq p1, v2, :cond_7

    .line 47
    iget-object p1, p0, Lcom/google/android/gms/analytics/Tracker;->zztd:Lcom/google/android/gms/internal/measurement/zzdf;

    .line 48
    iget p1, p1, Lcom/google/android/gms/internal/measurement/zzdf;->zzacl:I

    if-ne p1, v1, :cond_6

    const/4 p1, 0x1

    goto :goto_3

    :cond_6
    const/4 p1, 0x0

    .line 50
    :goto_3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/Tracker;->enableAutoActivityTracking(Z)V

    const-string v3, "Auto activity tracking loaded"

    .line 51
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/internal/measurement/zzat;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/analytics/Tracker;->zztd:Lcom/google/android/gms/internal/measurement/zzdf;

    .line 53
    iget p1, p1, Lcom/google/android/gms/internal/measurement/zzdf;->zzacm:I

    if-eq p1, v2, :cond_a

    .line 54
    iget-object p1, p0, Lcom/google/android/gms/analytics/Tracker;->zztd:Lcom/google/android/gms/internal/measurement/zzdf;

    .line 55
    iget p1, p1, Lcom/google/android/gms/internal/measurement/zzdf;->zzacm:I

    if-ne p1, v1, :cond_8

    const/4 p1, 0x1

    goto :goto_4

    :cond_8
    const/4 p1, 0x0

    :goto_4
    if-eqz p1, :cond_9

    const-string v2, "&aip"

    const-string v3, "1"

    .line 58
    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const-string v2, "Anonymize ip loaded"

    .line 59
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/measurement/zzat;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    :cond_a
    iget-object p1, p0, Lcom/google/android/gms/analytics/Tracker;->zztd:Lcom/google/android/gms/internal/measurement/zzdf;

    .line 61
    iget p1, p1, Lcom/google/android/gms/internal/measurement/zzdf;->zzacn:I

    if-ne p1, v1, :cond_b

    const/4 v0, 0x1

    .line 62
    :cond_b
    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/Tracker;->enableExceptionReporting(Z)V

    return-void
.end method

.method protected final zzag()V
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zztb:Lcom/google/android/gms/analytics/Tracker$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzau;->zzq()V

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzat;->zzce()Lcom/google/android/gms/internal/measurement/zzdh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzdh;->zzaj()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "&an"

    .line 14
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzat;->zzce()Lcom/google/android/gms/internal/measurement/zzdh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzdh;->zzak()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "&av"

    .line 17
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
