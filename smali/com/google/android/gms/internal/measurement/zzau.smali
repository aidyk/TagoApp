.class public abstract Lcom/google/android/gms/internal/measurement/zzau;
.super Lcom/google/android/gms/internal/measurement/zzat;


# instance fields
.field private zzvz:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/measurement/zzaw;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzat;-><init>(Lcom/google/android/gms/internal/measurement/zzaw;)V

    return-void
.end method


# virtual methods
.method public final isInitialized()Z
    .locals 1

    .line 3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzau;->zzvz:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract zzag()V
.end method

.method protected final zzcl()V
    .locals 2

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzau;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzq()V
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzau;->zzag()V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzau;->zzvz:Z

    return-void
.end method
