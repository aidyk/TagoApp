.class public final Lcom/google/android/gms/internal/measurement/zzag;
.super Lcom/google/android/gms/analytics/zzi;


# annotations
.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/zzi<",
        "Lcom/google/android/gms/internal/measurement/zzag;",
        ">;"
    }
.end annotation


# instance fields
.field private zzuo:Ljava/lang/String;

.field private zzup:Ljava/lang/String;

.field private zzuq:Ljava/lang/String;

.field private zzur:Ljava/lang/String;

.field private zzus:Z

.field private zzut:Ljava/lang/String;

.field private zzuu:Z

.field private zzuv:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/analytics/zzi;-><init>()V

    return-void
.end method


# virtual methods
.method public final setClientId(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzup:Ljava/lang/String;

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzuq:Ljava/lang/String;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "hitType"

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzuo:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "clientId"

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzup:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "userId"

    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzuq:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "androidAdId"

    .line 6
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzur:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AdTargetingEnabled"

    .line 7
    iget-boolean v2, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzus:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sessionControl"

    .line 8
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzut:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "nonInteraction"

    .line 9
    iget-boolean v2, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzuu:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sampleRate"

    .line 10
    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzuv:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzag;->zza(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzus:Z

    return-void
.end method

.method public final synthetic zzb(Lcom/google/android/gms/analytics/zzi;)V
    .locals 6

    .line 32
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzag;

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzuo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzuo:Ljava/lang/String;

    .line 35
    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/zzag;->zzuo:Ljava/lang/String;

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzup:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzup:Ljava/lang/String;

    .line 38
    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/zzag;->zzup:Ljava/lang/String;

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzuq:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzuq:Ljava/lang/String;

    .line 41
    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/zzag;->zzuq:Ljava/lang/String;

    .line 42
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzur:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzur:Ljava/lang/String;

    .line 44
    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/zzag;->zzur:Ljava/lang/String;

    .line 45
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzus:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 47
    iput-boolean v1, p1, Lcom/google/android/gms/internal/measurement/zzag;->zzus:Z

    .line 48
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzut:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzut:Ljava/lang/String;

    .line 50
    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/zzag;->zzut:Ljava/lang/String;

    .line 51
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzuu:Z

    if-eqz v0, :cond_6

    .line 52
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzuu:Z

    .line 53
    iput-boolean v0, p1, Lcom/google/android/gms/internal/measurement/zzag;->zzuu:Z

    .line 54
    :cond_6
    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzuv:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_8

    .line 55
    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzuv:D

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_7

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    :goto_0
    const-string v0, "Sample rate must be between 0% and 100%"

    .line 56
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 57
    iput-wide v2, p1, Lcom/google/android/gms/internal/measurement/zzag;->zzuv:D

    :cond_8
    return-void
.end method

.method public final zzb(Z)V
    .locals 0

    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzuu:Z

    return-void
.end method

.method public final zzbc()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzuo:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbd()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzup:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbe()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzuq:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbf()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzur:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbg()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzus:Z

    return v0
.end method

.method public final zzbh()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzut:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbi()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzuu:Z

    return v0
.end method

.method public final zzbj()D
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzuv:D

    return-wide v0
.end method

.method public final zzl(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzuo:Ljava/lang/String;

    return-void
.end method

.method public final zzm(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzag;->zzur:Ljava/lang/String;

    return-void
.end method
