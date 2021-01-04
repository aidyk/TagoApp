.class public Lcom/google/android/gms/analytics/zza;
.super Lcom/google/android/gms/analytics/zzj;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/zzj<",
        "Lcom/google/android/gms/analytics/zza;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzqx:Lcom/google/android/gms/internal/measurement/zzaw;

.field private zzqy:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzaw;)V
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzaw;->zzca()Lcom/google/android/gms/analytics/zzk;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzaw;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/analytics/zzj;-><init>(Lcom/google/android/gms/analytics/zzk;Lcom/google/android/gms/common/util/Clock;)V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/analytics/zza;->zzqx:Lcom/google/android/gms/internal/measurement/zzaw;

    return-void
.end method


# virtual methods
.method public final enableAdvertisingIdCollection(Z)V
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/google/android/gms/analytics/zza;->zzqy:Z

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/analytics/zzg;)V
    .locals 2

    .line 12
    const-class v0, Lcom/google/android/gms/internal/measurement/zzag;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/zzg;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/analytics/zzi;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzag;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzag;->zzbd()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/analytics/zza;->zzqx:Lcom/google/android/gms/internal/measurement/zzaw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzaw;->zzcr()Lcom/google/android/gms/internal/measurement/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbo;->zzdr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzag;->setClientId(Ljava/lang/String;)V

    .line 15
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/zza;->zzqy:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzag;->zzbf()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/analytics/zza;->zzqx:Lcom/google/android/gms/internal/measurement/zzaw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzaw;->zzcq()Lcom/google/android/gms/internal/measurement/zzak;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzak;->zzbn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzag;->zzm(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzak;->zzbg()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzag;->zza(Z)V

    :cond_1
    return-void
.end method

.method public final zza(Ljava/lang/String;)V
    .locals 3

    .line 22
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    invoke-static {p1}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/google/android/gms/analytics/zzj;->zzsk:Lcom/google/android/gms/analytics/zzg;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/zzg;->zzu()Ljava/util/List;

    move-result-object v1

    .line 27
    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 28
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 29
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/analytics/zzo;

    invoke-interface {v2}, Lcom/google/android/gms/analytics/zzo;->zzo()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/zzj;->zzsk:Lcom/google/android/gms/analytics/zzg;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzg;->zzu()Ljava/util/List;

    move-result-object v0

    .line 33
    new-instance v1, Lcom/google/android/gms/analytics/zzb;

    iget-object v2, p0, Lcom/google/android/gms/analytics/zza;->zzqx:Lcom/google/android/gms/internal/measurement/zzaw;

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/analytics/zzb;-><init>(Lcom/google/android/gms/internal/measurement/zzaw;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final zzl()Lcom/google/android/gms/internal/measurement/zzaw;
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/analytics/zza;->zzqx:Lcom/google/android/gms/internal/measurement/zzaw;

    return-object v0
.end method

.method public final zzm()Lcom/google/android/gms/analytics/zzg;
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/analytics/zzj;->zzsk:Lcom/google/android/gms/analytics/zzg;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzg;->zzs()Lcom/google/android/gms/analytics/zzg;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/analytics/zza;->zzqx:Lcom/google/android/gms/internal/measurement/zzaw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzaw;->zzci()Lcom/google/android/gms/internal/measurement/zzbh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbh;->zzdf()Lcom/google/android/gms/internal/measurement/zzx;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzg;->zza(Lcom/google/android/gms/analytics/zzi;)V

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/analytics/zza;->zzqx:Lcom/google/android/gms/internal/measurement/zzaw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzaw;->zzcj()Lcom/google/android/gms/internal/measurement/zzcb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcb;->zzek()Lcom/google/android/gms/internal/measurement/zzac;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzg;->zza(Lcom/google/android/gms/analytics/zzi;)V

    .line 10
    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/zzj;->zzd(Lcom/google/android/gms/analytics/zzg;)V

    return-object v0
.end method
