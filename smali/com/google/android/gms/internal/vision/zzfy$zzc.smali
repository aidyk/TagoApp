.class public Lcom/google/android/gms/internal/vision/zzfy$zzc;
.super Lcom/google/android/gms/internal/vision/zzfy$zza;

# interfaces
.implements Lcom/google/android/gms/internal/vision/zzhh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/vision/zzfy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/vision/zzfy$zzd<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/vision/zzfy$zzc<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/vision/zzfy$zza<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/vision/zzhh;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/vision/zzfy$zzd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/zzfy$zza;-><init>(Lcom/google/android/gms/internal/vision/zzfy;)V

    return-void
.end method


# virtual methods
.method protected final zzfc()V
    .locals 2

    .line 3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzfy$zzc;->zzwo:Z

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/internal/vision/zzfy$zza;->zzfc()V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy$zzc;->zzwn:Lcom/google/android/gms/internal/vision/zzfy;

    check-cast v0, Lcom/google/android/gms/internal/vision/zzfy$zzd;

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfy$zzc;->zzwn:Lcom/google/android/gms/internal/vision/zzfy;

    check-cast v1, Lcom/google/android/gms/internal/vision/zzfy$zzd;

    iget-object v1, v1, Lcom/google/android/gms/internal/vision/zzfy$zzd;->zzwp:Lcom/google/android/gms/internal/vision/zzfp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzfp;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/vision/zzfp;

    iput-object v1, v0, Lcom/google/android/gms/internal/vision/zzfy$zzd;->zzwp:Lcom/google/android/gms/internal/vision/zzfp;

    return-void
.end method

.method public synthetic zzfd()Lcom/google/android/gms/internal/vision/zzfy;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfy$zza;->zzff()Lcom/google/android/gms/internal/vision/zzhf;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/zzfy$zzd;

    return-object v0
.end method

.method public synthetic zzff()Lcom/google/android/gms/internal/vision/zzhf;
    .locals 1

    .line 10
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzfy$zzc;->zzwo:Z

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy$zzc;->zzwn:Lcom/google/android/gms/internal/vision/zzfy;

    check-cast v0, Lcom/google/android/gms/internal/vision/zzfy$zzd;

    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy$zzc;->zzwn:Lcom/google/android/gms/internal/vision/zzfy;

    check-cast v0, Lcom/google/android/gms/internal/vision/zzfy$zzd;

    iget-object v0, v0, Lcom/google/android/gms/internal/vision/zzfy$zzd;->zzwp:Lcom/google/android/gms/internal/vision/zzfp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzfp;->zzci()V

    .line 13
    invoke-super {p0}, Lcom/google/android/gms/internal/vision/zzfy$zza;->zzfd()Lcom/google/android/gms/internal/vision/zzfy;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/zzfy$zzd;

    return-object v0
.end method
