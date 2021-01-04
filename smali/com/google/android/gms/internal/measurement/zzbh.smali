.class public final Lcom/google/android/gms/internal/measurement/zzbh;
.super Lcom/google/android/gms/internal/measurement/zzau;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation


# instance fields
.field private final zzsq:Lcom/google/android/gms/internal/measurement/zzx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzaw;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzau;-><init>(Lcom/google/android/gms/internal/measurement/zzaw;)V

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzx;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzx;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzbh;->zzsq:Lcom/google/android/gms/internal/measurement/zzx;

    return-void
.end method


# virtual methods
.method protected final zzag()V
    .locals 3

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzat;->zzca()Lcom/google/android/gms/analytics/zzk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzk;->zzad()Lcom/google/android/gms/internal/measurement/zzx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzbh;->zzsq:Lcom/google/android/gms/internal/measurement/zzx;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzx;->zza(Lcom/google/android/gms/internal/measurement/zzx;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzat;->zzce()Lcom/google/android/gms/internal/measurement/zzdh;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzdh;->zzaj()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 9
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzbh;->zzsq:Lcom/google/android/gms/internal/measurement/zzx;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/zzx;->setAppName(Ljava/lang/String;)V

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzdh;->zzak()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzbh;->zzsq:Lcom/google/android/gms/internal/measurement/zzx;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzx;->setAppVersion(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final zzdf()Lcom/google/android/gms/internal/measurement/zzx;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzau;->zzcl()V

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbh;->zzsq:Lcom/google/android/gms/internal/measurement/zzx;

    return-object v0
.end method
