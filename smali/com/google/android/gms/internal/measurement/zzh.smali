.class public final Lcom/google/android/gms/internal/measurement/zzh;
.super Lcom/google/android/gms/internal/measurement/zzzl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzzl<",
        "Lcom/google/android/gms/internal/measurement/zzh;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzod:[Lcom/google/android/gms/internal/measurement/zzh;


# instance fields
.field private name:I

.field public zzoe:[I

.field private zzof:I

.field private zzog:Z

.field private zzoh:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzl;-><init>()V

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzzu;->zzcbs:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzh;->zzoe:[I

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzh;->zzof:I

    .line 11
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzh;->name:I

    .line 12
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzh;->zzog:Z

    .line 13
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzh;->zzoh:Z

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzh;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzh;->zzcgh:I

    return-void
.end method

.method public static zze()[Lcom/google/android/gms/internal/measurement/zzh;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzh;->zzod:[Lcom/google/android/gms/internal/measurement/zzh;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzzp;->zzcgg:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzh;->zzod:[Lcom/google/android/gms/internal/measurement/zzh;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Lcom/google/android/gms/internal/measurement/zzh;

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzh;->zzod:[Lcom/google/android/gms/internal/measurement/zzh;

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
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzh;->zzod:[Lcom/google/android/gms/internal/measurement/zzh;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 19
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzh;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 21
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzh;

    .line 22
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzh;->zzoe:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzh;->zzoe:[I

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/zzzp;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 24
    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzh;->zzof:I

    iget v3, p1, Lcom/google/android/gms/internal/measurement/zzh;->zzof:I

    if-eq v1, v3, :cond_3

    return v2

    .line 26
    :cond_3
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzh;->name:I

    iget v3, p1, Lcom/google/android/gms/internal/measurement/zzh;->name:I

    if-eq v1, v3, :cond_4

    return v2

    .line 28
    :cond_4
    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzh;->zzog:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/measurement/zzh;->zzog:Z

    if-eq v1, v3, :cond_5

    return v2

    .line 30
    :cond_5
    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzh;->zzoh:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/measurement/zzh;->zzoh:Z

    if-eq v1, v3, :cond_6

    return v2

    .line 32
    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzh;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzh;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_0

    .line 34
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzh;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzh;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzzn;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 33
    :cond_8
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzh;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_a

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzh;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

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
    .locals 4

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 36
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzh;->zzoe:[I

    .line 37
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzzp;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 38
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzh;->zzof:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 39
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzh;->name:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 40
    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzh;->zzog:Z

    const/16 v2, 0x4d5

    const/16 v3, 0x4cf

    if-eqz v1, :cond_0

    const/16 v1, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v1, 0x4d5

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 41
    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzh;->zzoh:Z

    if-eqz v1, :cond_1

    const/16 v2, 0x4cf

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 43
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzh;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzh;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 44
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzh;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/measurement/zzzi;)Lcom/google/android/gms/internal/measurement/zzzr;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuq()I

    move-result v0

    if-eqz v0, :cond_e

    const/16 v1, 0x8

    if-eq v0, v1, :cond_d

    const/16 v1, 0x10

    if-eq v0, v1, :cond_c

    const/16 v1, 0x18

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    const/16 v1, 0x30

    if-eq v0, v1, :cond_1

    .line 87
    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzzl;->zza(Lcom/google/android/gms/internal/measurement/zzzi;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 137
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuw()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzh;->zzog:Z

    goto :goto_0

    .line 134
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvi()I

    move-result v0

    .line 135
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzh;->name:I

    goto :goto_0

    .line 112
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvi()I

    move-result v0

    .line 113
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzzi;->zzar(I)I

    move-result v0

    .line 115
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->getPosition()I

    move-result v1

    const/4 v3, 0x0

    .line 116
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzzf()I

    move-result v4

    if-lez v4, :cond_4

    .line 118
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvi()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 120
    :cond_4
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzca(I)V

    .line 121
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzh;->zzoe:[I

    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzh;->zzoe:[I

    array-length v1, v1

    :goto_2
    add-int/2addr v3, v1

    .line 122
    new-array v3, v3, [I

    if-eqz v1, :cond_6

    .line 124
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzh;->zzoe:[I

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    :cond_6
    :goto_3
    array-length v2, v3

    if-ge v1, v2, :cond_7

    .line 127
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvi()I

    move-result v2

    .line 128
    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 130
    :cond_7
    iput-object v3, p0, Lcom/google/android/gms/internal/measurement/zzh;->zzoe:[I

    .line 131
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzzi;->zzas(I)V

    goto :goto_0

    .line 96
    :cond_8
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzu;->zzb(Lcom/google/android/gms/internal/measurement/zzzi;I)I

    move-result v0

    .line 97
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzh;->zzoe:[I

    if-nez v1, :cond_9

    const/4 v1, 0x0

    goto :goto_4

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzh;->zzoe:[I

    array-length v1, v1

    :goto_4
    add-int/2addr v0, v1

    .line 98
    new-array v0, v0, [I

    if-eqz v1, :cond_a

    .line 100
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzh;->zzoe:[I

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    :cond_a
    :goto_5
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_b

    .line 103
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvi()I

    move-result v2

    .line 104
    aput v2, v0, v1

    .line 105
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuq()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 108
    :cond_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvi()I

    move-result v2

    .line 109
    aput v2, v0, v1

    .line 110
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzh;->zzoe:[I

    goto/16 :goto_0

    .line 92
    :cond_c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvi()I

    move-result v0

    .line 93
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzh;->zzof:I

    goto/16 :goto_0

    .line 89
    :cond_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuw()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzh;->zzoh:Z

    goto/16 :goto_0

    :cond_e
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzzj;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzh;->zzoh:Z

    if-eqz v0, :cond_0

    .line 47
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzh;->zzoh:Z

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(IZ)V

    :cond_0
    const/4 v0, 0x2

    .line 48
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzh;->zzof:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzd(II)V

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzh;->zzoe:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzh;->zzoe:[I

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 50
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzh;->zzoe:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x3

    .line 51
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzh;->zzoe:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zzd(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzh;->name:I

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    .line 54
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzh;->name:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzd(II)V

    .line 55
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzh;->zzog:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x6

    .line 56
    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzh;->zzog:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(IZ)V

    .line 57
    :cond_3
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/zzzl;->zza(Lcom/google/android/gms/internal/measurement/zzzj;)V

    return-void
.end method

.method protected final zzf()I
    .locals 5

    .line 59
    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzzl;->zzf()I

    move-result v0

    .line 60
    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzh;->zzoh:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 62
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zzbc(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_0
    const/4 v1, 0x2

    .line 64
    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzh;->zzof:I

    .line 65
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/zzzj;->zzh(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 66
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzh;->zzoe:[I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzh;->zzoe:[I

    array-length v1, v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 68
    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzh;->zzoe:[I

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 69
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzh;->zzoe:[I

    aget v4, v4, v1

    .line 71
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzzj;->zzbd(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v0, v3

    .line 74
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzh;->zzoe:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 75
    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzh;->name:I

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    .line 76
    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzh;->name:I

    .line 77
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/zzzj;->zzh(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 78
    :cond_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzh;->zzog:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x6

    .line 80
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzbc(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_4
    return v0
.end method
