.class public final Lcom/google/android/gms/internal/measurement/zzrt;
.super Lcom/google/android/gms/internal/measurement/zzzl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzzl<",
        "Lcom/google/android/gms/internal/measurement/zzrt;",
        ">;"
    }
.end annotation


# instance fields
.field public zzbqn:J

.field public zzbqo:Lcom/google/android/gms/internal/measurement/zzo;

.field public zzqg:Lcom/google/android/gms/internal/measurement/zzl;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzl;-><init>()V

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzrt;->zzbqn:J

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzrt;->zzqg:Lcom/google/android/gms/internal/measurement/zzl;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzrt;->zzbqo:Lcom/google/android/gms/internal/measurement/zzo;

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzrt;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzrt;->zzcgh:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 11
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzrt;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 13
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzrt;

    .line 14
    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/zzrt;->zzbqn:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/measurement/zzrt;->zzbqn:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    .line 16
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzrt;->zzqg:Lcom/google/android/gms/internal/measurement/zzl;

    if-nez v1, :cond_3

    .line 17
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzrt;->zzqg:Lcom/google/android/gms/internal/measurement/zzl;

    if-eqz v1, :cond_4

    return v2

    .line 19
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzrt;->zzqg:Lcom/google/android/gms/internal/measurement/zzl;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzrt;->zzqg:Lcom/google/android/gms/internal/measurement/zzl;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/zzl;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 21
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzrt;->zzbqo:Lcom/google/android/gms/internal/measurement/zzo;

    if-nez v1, :cond_5

    .line 22
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzrt;->zzbqo:Lcom/google/android/gms/internal/measurement/zzo;

    if-eqz v1, :cond_6

    return v2

    .line 24
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzrt;->zzbqo:Lcom/google/android/gms/internal/measurement/zzo;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzrt;->zzbqo:Lcom/google/android/gms/internal/measurement/zzo;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/zzo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 26
    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzrt;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzrt;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_0

    .line 28
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzrt;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzrt;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzzn;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 27
    :cond_8
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzrt;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_a

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzrt;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_1

    :cond_9
    return v2

    :cond_a
    :goto_1
    return v0
.end method

.method public final hashCode()I
    .locals 6

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 30
    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/zzrt;->zzbqn:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/zzrt;->zzbqn:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    .line 31
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzrt;->zzqg:Lcom/google/android/gms/internal/measurement/zzl;

    mul-int/lit8 v0, v0, 0x1f

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzl;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    .line 34
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzrt;->zzbqo:Lcom/google/android/gms/internal/measurement/zzo;

    mul-int/lit8 v0, v0, 0x1f

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 36
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzo;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 38
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzrt;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzrt;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 39
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzrt;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->hashCode()I

    move-result v2

    :cond_3
    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/measurement/zzzi;)Lcom/google/android/gms/internal/measurement/zzzr;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuq()I

    move-result v0

    if-eqz v0, :cond_6

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    const/16 v1, 0x12

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    .line 62
    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzzl;->zza(Lcom/google/android/gms/internal/measurement/zzzi;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzrt;->zzbqo:Lcom/google/android/gms/internal/measurement/zzo;

    if-nez v0, :cond_2

    .line 73
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzo;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzrt;->zzbqo:Lcom/google/android/gms/internal/measurement/zzo;

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzrt;->zzbqo:Lcom/google/android/gms/internal/measurement/zzo;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzzi;->zza(Lcom/google/android/gms/internal/measurement/zzzr;)V

    goto :goto_0

    .line 68
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzrt;->zzqg:Lcom/google/android/gms/internal/measurement/zzl;

    if-nez v0, :cond_4

    .line 69
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzl;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzrt;->zzqg:Lcom/google/android/gms/internal/measurement/zzl;

    .line 70
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzrt;->zzqg:Lcom/google/android/gms/internal/measurement/zzl;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzzi;->zza(Lcom/google/android/gms/internal/measurement/zzzr;)V

    goto :goto_0

    .line 65
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvj()J

    move-result-wide v0

    .line 66
    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzrt;->zzbqn:J

    goto :goto_0

    :cond_6
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzzj;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzrt;->zzbqn:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzi(IJ)V

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzrt;->zzqg:Lcom/google/android/gms/internal/measurement/zzl;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 43
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzrt;->zzqg:Lcom/google/android/gms/internal/measurement/zzl;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zza(ILcom/google/android/gms/internal/measurement/zzzr;)V

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzrt;->zzbqo:Lcom/google/android/gms/internal/measurement/zzo;

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 45
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzrt;->zzbqo:Lcom/google/android/gms/internal/measurement/zzo;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zza(ILcom/google/android/gms/internal/measurement/zzzr;)V

    .line 46
    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/zzzl;->zza(Lcom/google/android/gms/internal/measurement/zzzj;)V

    return-void
.end method

.method protected final zzf()I
    .locals 4

    .line 48
    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzzl;->zzf()I

    move-result v0

    .line 49
    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/zzrt;->zzbqn:J

    const/4 v3, 0x1

    .line 50
    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 51
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzrt;->zzqg:Lcom/google/android/gms/internal/measurement/zzl;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 52
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzrt;->zzqg:Lcom/google/android/gms/internal/measurement/zzl;

    .line 53
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(ILcom/google/android/gms/internal/measurement/zzzr;)I

    move-result v1

    add-int/2addr v0, v1

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzrt;->zzbqo:Lcom/google/android/gms/internal/measurement/zzo;

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    .line 55
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzrt;->zzbqo:Lcom/google/android/gms/internal/measurement/zzo;

    .line 56
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(ILcom/google/android/gms/internal/measurement/zzzr;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method
