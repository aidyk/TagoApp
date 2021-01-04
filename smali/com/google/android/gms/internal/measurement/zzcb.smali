.class public final Lcom/google/android/gms/internal/measurement/zzcb;
.super Lcom/google/android/gms/internal/measurement/zzau;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzaw;)V
    .locals 0
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzau;-><init>(Lcom/google/android/gms/internal/measurement/zzaw;)V

    return-void
.end method


# virtual methods
.method protected final zzag()V
    .locals 0

    return-void
.end method

.method public final zzek()Lcom/google/android/gms/internal/measurement/zzac;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzau;->zzcl()V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzat;->zzca()Lcom/google/android/gms/analytics/zzk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzk;->zzae()Lcom/google/android/gms/internal/measurement/zzac;

    move-result-object v0

    return-object v0
.end method

.method public final zzel()Ljava/lang/String;
    .locals 4

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzau;->zzcl()V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzcb;->zzek()Lcom/google/android/gms/internal/measurement/zzac;

    move-result-object v0

    .line 9
    iget v1, v0, Lcom/google/android/gms/internal/measurement/zzac;->zzuh:I

    .line 11
    iget v0, v0, Lcom/google/android/gms/internal/measurement/zzac;->zzui:I

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x17

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
