.class public final Lcom/google/android/gms/internal/measurement/zzah;
.super Lcom/google/android/gms/analytics/zzi;


# annotations
.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation

.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/zzi<",
        "Lcom/google/android/gms/internal/measurement/zzah;",
        ">;"
    }
.end annotation


# instance fields
.field private zzuw:Ljava/lang/String;

.field private zzux:I

.field private zzuy:I

.field private zzuz:Ljava/lang/String;

.field private zzva:Ljava/lang/String;

.field private zzvb:Z

.field private zzvc:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Z)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 4

    .line 4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "GAv4"

    const-string v0, "UUID.randomUUID() returned 0."

    .line 11
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7fffffff

    :goto_0
    const/4 p1, 0x0

    .line 13
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(ZI)V

    return-void
.end method

.method private constructor <init>(ZI)V
    .locals 0
    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/analytics/zzi;-><init>()V

    .line 16
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotZero(I)I

    .line 17
    iput p2, p0, Lcom/google/android/gms/internal/measurement/zzah;->zzux:I

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzah;->zzvc:Z

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "screenName"

    .line 24
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzah;->zzuw:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "interstitial"

    .line 25
    iget-boolean v2, p0, Lcom/google/android/gms/internal/measurement/zzah;->zzvb:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "automatic"

    .line 26
    iget-boolean v2, p0, Lcom/google/android/gms/internal/measurement/zzah;->zzvc:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "screenId"

    .line 27
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzah;->zzux:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "referrerScreenId"

    .line 28
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzah;->zzuy:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "referrerScreenName"

    .line 29
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzah;->zzuz:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "referrerUri"

    .line 30
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzah;->zzva:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzah;->zza(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb(Lcom/google/android/gms/analytics/zzi;)V
    .locals 2

    .line 32
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzah;

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzah;->zzuw:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzah;->zzuw:Ljava/lang/String;

    .line 36
    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/zzah;->zzuw:Ljava/lang/String;

    .line 37
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzah;->zzux:I

    if-eqz v0, :cond_1

    .line 38
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzah;->zzux:I

    .line 40
    iput v0, p1, Lcom/google/android/gms/internal/measurement/zzah;->zzux:I

    .line 41
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzah;->zzuy:I

    if-eqz v0, :cond_2

    .line 42
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzah;->zzuy:I

    .line 44
    iput v0, p1, Lcom/google/android/gms/internal/measurement/zzah;->zzuy:I

    .line 45
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzah;->zzuz:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzah;->zzuz:Ljava/lang/String;

    .line 48
    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/zzah;->zzuz:Ljava/lang/String;

    .line 49
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzah;->zzva:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzah;->zzva:Ljava/lang/String;

    .line 52
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    .line 53
    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/zzah;->zzva:Ljava/lang/String;

    goto :goto_0

    .line 54
    :cond_4
    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/zzah;->zzva:Ljava/lang/String;

    .line 55
    :cond_5
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzah;->zzvb:Z

    if-eqz v0, :cond_6

    .line 56
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzah;->zzvb:Z

    .line 58
    iput-boolean v0, p1, Lcom/google/android/gms/internal/measurement/zzah;->zzvb:Z

    .line 59
    :cond_6
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzah;->zzvc:Z

    if-eqz v0, :cond_7

    .line 60
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzah;->zzvc:Z

    .line 62
    iput-boolean v0, p1, Lcom/google/android/gms/internal/measurement/zzah;->zzvc:Z

    :cond_7
    return-void
.end method

.method public final zzbk()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzah;->zzuw:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbl()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzah;->zzux:I

    return v0
.end method

.method public final zzbm()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzah;->zzva:Ljava/lang/String;

    return-object v0
.end method
