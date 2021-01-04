.class public final Lcom/google/android/gms/internal/measurement/zzi;
.super Lcom/google/android/gms/internal/measurement/zzzl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzzl<",
        "Lcom/google/android/gms/internal/measurement/zzi;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzoi:[Lcom/google/android/gms/internal/measurement/zzi;


# instance fields
.field public zzoj:Ljava/lang/String;

.field public zzok:J

.field public zzol:J

.field public zzom:Z

.field public zzon:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzl;-><init>()V

    const-string v0, ""

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzoj:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 10
    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzok:J

    const-wide/32 v2, 0x7fffffff

    .line 11
    iput-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzol:J

    const/4 v2, 0x0

    .line 12
    iput-boolean v2, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzom:Z

    .line 13
    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzon:J

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzcgh:I

    return-void
.end method

.method public static zzg()[Lcom/google/android/gms/internal/measurement/zzi;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzi;->zzoi:[Lcom/google/android/gms/internal/measurement/zzi;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzzp;->zzcgg:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzi;->zzoi:[Lcom/google/android/gms/internal/measurement/zzi;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Lcom/google/android/gms/internal/measurement/zzi;

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzi;->zzoi:[Lcom/google/android/gms/internal/measurement/zzi;

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
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzi;->zzoi:[Lcom/google/android/gms/internal/measurement/zzi;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 19
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzi;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 21
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzi;

    .line 22
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzoj:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 23
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzi;->zzoj:Ljava/lang/String;

    if-eqz v1, :cond_3

    return v2

    .line 25
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzoj:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzi;->zzoj:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 27
    :cond_3
    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzok:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/measurement/zzi;->zzok:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    .line 29
    :cond_4
    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzol:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/measurement/zzi;->zzol:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    .line 31
    :cond_5
    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzom:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/measurement/zzi;->zzom:Z

    if-eq v1, v3, :cond_6

    return v2

    .line 33
    :cond_6
    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzon:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/measurement/zzi;->zzon:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    return v2

    .line 35
    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_0

    .line 37
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzi;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzzn;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 36
    :cond_9
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzi;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_b

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzi;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

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
    .locals 7

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
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzoj:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzoj:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 41
    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzok:J

    iget-wide v5, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzok:J

    const/16 v1, 0x20

    ushr-long/2addr v5, v1

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 42
    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzol:J

    iget-wide v5, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzol:J

    ushr-long/2addr v5, v1

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 43
    iget-boolean v3, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzom:Z

    if-eqz v3, :cond_1

    const/16 v3, 0x4cf

    goto :goto_1

    :cond_1
    const/16 v3, 0x4d5

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 44
    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzon:J

    iget-wide v5, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzon:J

    ushr-long/2addr v5, v1

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 46
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 47
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

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

    .line 80
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuq()I

    move-result v0

    if-eqz v0, :cond_6

    const/16 v1, 0xa

    if-eq v0, v1, :cond_5

    const/16 v1, 0x10

    if-eq v0, v1, :cond_4

    const/16 v1, 0x18

    if-eq v0, v1, :cond_3

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    .line 83
    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzzl;->zza(Lcom/google/android/gms/internal/measurement/zzzi;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 98
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvj()J

    move-result-wide v0

    .line 99
    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzon:J

    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuw()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzom:Z

    goto :goto_0

    .line 92
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvj()J

    move-result-wide v0

    .line 93
    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzol:J

    goto :goto_0

    .line 88
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvj()J

    move-result-wide v0

    .line 89
    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzok:J

    goto :goto_0

    .line 85
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzoj:Ljava/lang/String;

    goto :goto_0

    :cond_6
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzzj;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzoj:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzoj:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 50
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzoj:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(ILjava/lang/String;)V

    .line 51
    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzok:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v0, 0x2

    .line 52
    iget-wide v4, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzok:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/android/gms/internal/measurement/zzzj;->zzi(IJ)V

    .line 53
    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzol:J

    const-wide/32 v4, 0x7fffffff

    cmp-long v6, v0, v4

    if-eqz v6, :cond_2

    const/4 v0, 0x3

    .line 54
    iget-wide v4, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzol:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/android/gms/internal/measurement/zzzj;->zzi(IJ)V

    .line 55
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzom:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 56
    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzom:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(IZ)V

    .line 57
    :cond_3
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzon:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    const/4 v0, 0x5

    .line 58
    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzon:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zzi(IJ)V

    .line 59
    :cond_4
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/zzzl;->zza(Lcom/google/android/gms/internal/measurement/zzzj;)V

    return-void
.end method

.method protected final zzf()I
    .locals 9

    .line 61
    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzzl;->zzf()I

    move-result v0

    .line 62
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzoj:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzoj:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzoj:Ljava/lang/String;

    .line 64
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzc(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 65
    :cond_0
    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzok:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 66
    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzok:J

    .line 67
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzzj;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 68
    :cond_1
    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzol:J

    const-wide/32 v7, 0x7fffffff

    cmp-long v1, v3, v7

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 69
    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzol:J

    .line 70
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzzj;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 71
    :cond_2
    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzom:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    .line 73
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzbc(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 75
    :cond_3
    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzon:J

    cmp-long v3, v1, v5

    if-eqz v3, :cond_4

    const/4 v1, 0x5

    .line 76
    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzi;->zzon:J

    .line 77
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzzj;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    return v0
.end method
