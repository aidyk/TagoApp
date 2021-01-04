.class public final Lcom/google/android/gms/internal/measurement/zzx;
.super Lcom/google/android/gms/analytics/zzi;


# annotations
.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation

.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/zzi<",
        "Lcom/google/android/gms/internal/measurement/zzx;",
        ">;"
    }
.end annotation


# instance fields
.field private zztr:Ljava/lang/String;

.field private zzts:Ljava/lang/String;

.field private zztt:Ljava/lang/String;

.field private zztu:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/analytics/zzi;-><init>()V

    return-void
.end method


# virtual methods
.method public final setAppId(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzx;->zztt:Ljava/lang/String;

    return-void
.end method

.method public final setAppInstallerId(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzx;->zztu:Ljava/lang/String;

    return-void
.end method

.method public final setAppName(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzx;->zztr:Ljava/lang/String;

    return-void
.end method

.method public final setAppVersion(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzx;->zzts:Ljava/lang/String;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "appName"

    .line 16
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzx;->zztr:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appVersion"

    .line 17
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzx;->zzts:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appId"

    .line 18
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzx;->zztt:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appInstallerId"

    .line 19
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzx;->zztu:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzx;->zza(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzx;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzx;->zztr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzx;->zztr:Ljava/lang/String;

    .line 4
    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/zzx;->zztr:Ljava/lang/String;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzx;->zzts:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzx;->zzts:Ljava/lang/String;

    .line 7
    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/zzx;->zzts:Ljava/lang/String;

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzx;->zztt:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzx;->zztt:Ljava/lang/String;

    .line 10
    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/zzx;->zztt:Ljava/lang/String;

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzx;->zztu:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzx;->zztu:Ljava/lang/String;

    .line 13
    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/zzx;->zztu:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method public final zzaj()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzx;->zztr:Ljava/lang/String;

    return-object v0
.end method

.method public final zzak()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzx;->zzts:Ljava/lang/String;

    return-object v0
.end method

.method public final zzal()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzx;->zztt:Ljava/lang/String;

    return-object v0
.end method

.method public final zzam()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzx;->zztu:Ljava/lang/String;

    return-object v0
.end method

.method public final synthetic zzb(Lcom/google/android/gms/analytics/zzi;)V
    .locals 0

    .line 33
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzx;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzx;->zza(Lcom/google/android/gms/internal/measurement/zzx;)V

    return-void
.end method
