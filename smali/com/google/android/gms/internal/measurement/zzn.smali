.class public final Lcom/google/android/gms/internal/measurement/zzn;
.super Lcom/google/android/gms/internal/measurement/zzzl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzzl<",
        "Lcom/google/android/gms/internal/measurement/zzn;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzqc:[Lcom/google/android/gms/internal/measurement/zzn;


# instance fields
.field public name:Ljava/lang/String;

.field private zzqd:Lcom/google/android/gms/internal/measurement/zzp;

.field public zzqe:Lcom/google/android/gms/internal/measurement/zzj;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzl;-><init>()V

    const-string v0, ""

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzn;->name:Ljava/lang/String;

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzn;->zzqd:Lcom/google/android/gms/internal/measurement/zzp;

    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzn;->zzqe:Lcom/google/android/gms/internal/measurement/zzj;

    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzn;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzn;->zzcgh:I

    return-void
.end method

.method public static zzj()[Lcom/google/android/gms/internal/measurement/zzn;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzn;->zzqc:[Lcom/google/android/gms/internal/measurement/zzn;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzzp;->zzcgg:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzn;->zzqc:[Lcom/google/android/gms/internal/measurement/zzn;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Lcom/google/android/gms/internal/measurement/zzn;

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzn;->zzqc:[Lcom/google/android/gms/internal/measurement/zzn;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzn;->zzqc:[Lcom/google/android/gms/internal/measurement/zzn;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 17
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzn;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 19
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzn;

    .line 20
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzn;->name:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 21
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzn;->name:Ljava/lang/String;

    if-eqz v1, :cond_3

    return v2

    .line 23
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzn;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzn;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 25
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzn;->zzqd:Lcom/google/android/gms/internal/measurement/zzp;

    if-nez v1, :cond_4

    .line 26
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzn;->zzqd:Lcom/google/android/gms/internal/measurement/zzp;

    if-eqz v1, :cond_5

    return v2

    .line 28
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzn;->zzqd:Lcom/google/android/gms/internal/measurement/zzp;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzn;->zzqd:Lcom/google/android/gms/internal/measurement/zzp;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/zzp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 30
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzn;->zzqe:Lcom/google/android/gms/internal/measurement/zzj;

    if-nez v1, :cond_6

    .line 31
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzn;->zzqe:Lcom/google/android/gms/internal/measurement/zzj;

    if-eqz v1, :cond_7

    return v2

    .line 33
    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzn;->zzqe:Lcom/google/android/gms/internal/measurement/zzj;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzn;->zzqe:Lcom/google/android/gms/internal/measurement/zzj;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/zzj;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 35
    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzn;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzn;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_0

    .line 37
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzn;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzn;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzzn;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 36
    :cond_9
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzn;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_b

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzn;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_1

    :cond_a
    return v2

    :cond_b
    :goto_1
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 40
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzn;->name:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzn;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    .line 41
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzn;->zzqd:Lcom/google/android/gms/internal/measurement/zzp;

    mul-int/lit8 v0, v0, 0x1f

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 43
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzp;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    .line 44
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzn;->zzqe:Lcom/google/android/gms/internal/measurement/zzj;

    mul-int/lit8 v0, v0, 0x1f

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    .line 46
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzj;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 48
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzn;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzn;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    .line 49
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzn;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->hashCode()I

    move-result v2

    :cond_4
    :goto_3
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

    .line 71
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuq()I

    move-result v0

    if-eqz v0, :cond_6

    const/16 v1, 0xa

    if-eq v0, v1, :cond_5

    const/16 v1, 0x12

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    .line 74
    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzzl;->zza(Lcom/google/android/gms/internal/measurement/zzzi;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzn;->zzqe:Lcom/google/android/gms/internal/measurement/zzj;

    if-nez v0, :cond_2

    .line 83
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzj;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzn;->zzqe:Lcom/google/android/gms/internal/measurement/zzj;

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzn;->zzqe:Lcom/google/android/gms/internal/measurement/zzj;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzzi;->zza(Lcom/google/android/gms/internal/measurement/zzzr;)V

    goto :goto_0

    .line 78
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzn;->zzqd:Lcom/google/android/gms/internal/measurement/zzp;

    if-nez v0, :cond_4

    .line 79
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzp;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzn;->zzqd:Lcom/google/android/gms/internal/measurement/zzp;

    .line 80
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzn;->zzqd:Lcom/google/android/gms/internal/measurement/zzp;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzzi;->zza(Lcom/google/android/gms/internal/measurement/zzzr;)V

    goto :goto_0

    .line 76
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzn;->name:Ljava/lang/String;

    goto :goto_0

    :cond_6
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzzj;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzn;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzn;->name:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 52
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzn;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(ILjava/lang/String;)V

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzn;->zzqd:Lcom/google/android/gms/internal/measurement/zzp;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 54
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzn;->zzqd:Lcom/google/android/gms/internal/measurement/zzp;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zza(ILcom/google/android/gms/internal/measurement/zzzr;)V

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzn;->zzqe:Lcom/google/android/gms/internal/measurement/zzj;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 56
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzn;->zzqe:Lcom/google/android/gms/internal/measurement/zzj;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zza(ILcom/google/android/gms/internal/measurement/zzzr;)V

    .line 57
    :cond_2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/zzzl;->zza(Lcom/google/android/gms/internal/measurement/zzzj;)V

    return-void
.end method

.method protected final zzf()I
    .locals 3

    .line 59
    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzzl;->zzf()I

    move-result v0

    .line 60
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzn;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzn;->name:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 61
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzn;->name:Ljava/lang/String;

    .line 62
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zzc(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzn;->zzqd:Lcom/google/android/gms/internal/measurement/zzp;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 64
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzn;->zzqd:Lcom/google/android/gms/internal/measurement/zzp;

    .line 65
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(ILcom/google/android/gms/internal/measurement/zzzr;)I

    move-result v1

    add-int/2addr v0, v1

    .line 66
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzn;->zzqe:Lcom/google/android/gms/internal/measurement/zzj;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 67
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzn;->zzqe:Lcom/google/android/gms/internal/measurement/zzj;

    .line 68
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(ILcom/google/android/gms/internal/measurement/zzzr;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method
