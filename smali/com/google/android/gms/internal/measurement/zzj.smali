.class public final Lcom/google/android/gms/internal/measurement/zzj;
.super Lcom/google/android/gms/internal/measurement/zzzl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzzl<",
        "Lcom/google/android/gms/internal/measurement/zzj;",
        ">;"
    }
.end annotation


# instance fields
.field public zzoo:[Lcom/google/android/gms/internal/measurement/zzp;

.field public zzop:[Lcom/google/android/gms/internal/measurement/zzp;

.field public zzoq:[Lcom/google/android/gms/internal/measurement/zzi;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzl;-><init>()V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzp;->zzk()[Lcom/google/android/gms/internal/measurement/zzp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzj;->zzoo:[Lcom/google/android/gms/internal/measurement/zzp;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzp;->zzk()[Lcom/google/android/gms/internal/measurement/zzp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzj;->zzop:[Lcom/google/android/gms/internal/measurement/zzp;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzi;->zzg()[Lcom/google/android/gms/internal/measurement/zzi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzj;->zzoq:[Lcom/google/android/gms/internal/measurement/zzi;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzj;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzj;->zzcgh:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 11
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzj;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 13
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzj;

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzj;->zzoo:[Lcom/google/android/gms/internal/measurement/zzp;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzj;->zzoo:[Lcom/google/android/gms/internal/measurement/zzp;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/zzzp;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 16
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzj;->zzop:[Lcom/google/android/gms/internal/measurement/zzp;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzj;->zzop:[Lcom/google/android/gms/internal/measurement/zzp;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/zzzp;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 18
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzj;->zzoq:[Lcom/google/android/gms/internal/measurement/zzi;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzj;->zzoq:[Lcom/google/android/gms/internal/measurement/zzi;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/zzzp;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 20
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzj;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzj;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    .line 22
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzj;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzj;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzzn;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 21
    :cond_6
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzj;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_8

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzj;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    return v2

    :cond_8
    :goto_1
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzj;->zzoo:[Lcom/google/android/gms/internal/measurement/zzp;

    .line 25
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzzp;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 26
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzj;->zzop:[Lcom/google/android/gms/internal/measurement/zzp;

    .line 27
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzzp;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 28
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzj;->zzoq:[Lcom/google/android/gms/internal/measurement/zzi;

    .line 29
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzzp;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 31
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzj;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzj;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzj;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/measurement/zzzi;)Lcom/google/android/gms/internal/measurement/zzzr;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuq()I

    move-result v0

    if-eqz v0, :cond_d

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-eq v0, v1, :cond_9

    const/16 v1, 0x12

    if-eq v0, v1, :cond_5

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    .line 81
    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzzl;->zza(Lcom/google/android/gms/internal/measurement/zzzi;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 114
    :cond_1
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzu;->zzb(Lcom/google/android/gms/internal/measurement/zzzi;I)I

    move-result v0

    .line 115
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzj;->zzoq:[Lcom/google/android/gms/internal/measurement/zzi;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzj;->zzoq:[Lcom/google/android/gms/internal/measurement/zzi;

    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    .line 116
    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/zzi;

    if-eqz v1, :cond_3

    .line 118
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzj;->zzoq:[Lcom/google/android/gms/internal/measurement/zzi;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    :cond_3
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4

    .line 120
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzi;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzi;-><init>()V

    aput-object v2, v0, v1

    .line 121
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/zzzi;->zza(Lcom/google/android/gms/internal/measurement/zzzr;)V

    .line 122
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuq()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 124
    :cond_4
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzi;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzi;-><init>()V

    aput-object v2, v0, v1

    .line 125
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzi;->zza(Lcom/google/android/gms/internal/measurement/zzzr;)V

    .line 126
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzj;->zzoq:[Lcom/google/android/gms/internal/measurement/zzi;

    goto :goto_0

    .line 99
    :cond_5
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzu;->zzb(Lcom/google/android/gms/internal/measurement/zzzi;I)I

    move-result v0

    .line 100
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzj;->zzop:[Lcom/google/android/gms/internal/measurement/zzp;

    if-nez v1, :cond_6

    const/4 v1, 0x0

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzj;->zzop:[Lcom/google/android/gms/internal/measurement/zzp;

    array-length v1, v1

    :goto_3
    add-int/2addr v0, v1

    .line 101
    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/zzp;

    if-eqz v1, :cond_7

    .line 103
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzj;->zzop:[Lcom/google/android/gms/internal/measurement/zzp;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    :cond_7
    :goto_4
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_8

    .line 105
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzp;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzp;-><init>()V

    aput-object v2, v0, v1

    .line 106
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/zzzi;->zza(Lcom/google/android/gms/internal/measurement/zzzr;)V

    .line 107
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuq()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 109
    :cond_8
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzp;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzp;-><init>()V

    aput-object v2, v0, v1

    .line 110
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzi;->zza(Lcom/google/android/gms/internal/measurement/zzzr;)V

    .line 111
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzj;->zzop:[Lcom/google/android/gms/internal/measurement/zzp;

    goto/16 :goto_0

    .line 84
    :cond_9
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzu;->zzb(Lcom/google/android/gms/internal/measurement/zzzi;I)I

    move-result v0

    .line 85
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzj;->zzoo:[Lcom/google/android/gms/internal/measurement/zzp;

    if-nez v1, :cond_a

    const/4 v1, 0x0

    goto :goto_5

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzj;->zzoo:[Lcom/google/android/gms/internal/measurement/zzp;

    array-length v1, v1

    :goto_5
    add-int/2addr v0, v1

    .line 86
    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/zzp;

    if-eqz v1, :cond_b

    .line 88
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzj;->zzoo:[Lcom/google/android/gms/internal/measurement/zzp;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    :cond_b
    :goto_6
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_c

    .line 90
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzp;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzp;-><init>()V

    aput-object v2, v0, v1

    .line 91
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/zzzi;->zza(Lcom/google/android/gms/internal/measurement/zzzr;)V

    .line 92
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuq()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 94
    :cond_c
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzp;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzp;-><init>()V

    aput-object v2, v0, v1

    .line 95
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzi;->zza(Lcom/google/android/gms/internal/measurement/zzzr;)V

    .line 96
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzj;->zzoo:[Lcom/google/android/gms/internal/measurement/zzp;

    goto/16 :goto_0

    :cond_d
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzzj;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzj;->zzoo:[Lcom/google/android/gms/internal/measurement/zzp;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzj;->zzoo:[Lcom/google/android/gms/internal/measurement/zzp;

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 35
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzj;->zzoo:[Lcom/google/android/gms/internal/measurement/zzp;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 36
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzj;->zzoo:[Lcom/google/android/gms/internal/measurement/zzp;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    .line 38
    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zza(ILcom/google/android/gms/internal/measurement/zzzr;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzj;->zzop:[Lcom/google/android/gms/internal/measurement/zzp;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzj;->zzop:[Lcom/google/android/gms/internal/measurement/zzp;

    array-length v0, v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    .line 41
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzj;->zzop:[Lcom/google/android/gms/internal/measurement/zzp;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 42
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzj;->zzop:[Lcom/google/android/gms/internal/measurement/zzp;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    .line 44
    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zza(ILcom/google/android/gms/internal/measurement/zzzr;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 46
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzj;->zzoq:[Lcom/google/android/gms/internal/measurement/zzi;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzj;->zzoq:[Lcom/google/android/gms/internal/measurement/zzi;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 47
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzj;->zzoq:[Lcom/google/android/gms/internal/measurement/zzi;

    array-length v0, v0

    if-ge v1, v0, :cond_5

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzj;->zzoq:[Lcom/google/android/gms/internal/measurement/zzi;

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    const/4 v2, 0x3

    .line 50
    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/measurement/zzzj;->zza(ILcom/google/android/gms/internal/measurement/zzzr;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 52
    :cond_5
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/zzzl;->zza(Lcom/google/android/gms/internal/measurement/zzzj;)V

    return-void
.end method

.method protected final zzf()I
    .locals 5

    .line 54
    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzzl;->zzf()I

    move-result v0

    .line 55
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzj;->zzoo:[Lcom/google/android/gms/internal/measurement/zzp;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzj;->zzoo:[Lcom/google/android/gms/internal/measurement/zzp;

    array-length v1, v1

    if-lez v1, :cond_2

    move v1, v0

    const/4 v0, 0x0

    .line 56
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzj;->zzoo:[Lcom/google/android/gms/internal/measurement/zzp;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 57
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzj;->zzoo:[Lcom/google/android/gms/internal/measurement/zzp;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    .line 60
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(ILcom/google/android/gms/internal/measurement/zzzr;)I

    move-result v3

    add-int/2addr v1, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 62
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzj;->zzop:[Lcom/google/android/gms/internal/measurement/zzp;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzj;->zzop:[Lcom/google/android/gms/internal/measurement/zzp;

    array-length v1, v1

    if-lez v1, :cond_5

    move v1, v0

    const/4 v0, 0x0

    .line 63
    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzj;->zzop:[Lcom/google/android/gms/internal/measurement/zzp;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 64
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzj;->zzop:[Lcom/google/android/gms/internal/measurement/zzp;

    aget-object v3, v3, v0

    if-eqz v3, :cond_3

    const/4 v4, 0x2

    .line 67
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(ILcom/google/android/gms/internal/measurement/zzzr;)I

    move-result v3

    add-int/2addr v1, v3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v1

    .line 69
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzj;->zzoq:[Lcom/google/android/gms/internal/measurement/zzi;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzj;->zzoq:[Lcom/google/android/gms/internal/measurement/zzi;

    array-length v1, v1

    if-lez v1, :cond_7

    .line 70
    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzj;->zzoq:[Lcom/google/android/gms/internal/measurement/zzi;

    array-length v1, v1

    if-ge v2, v1, :cond_7

    .line 71
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzj;->zzoq:[Lcom/google/android/gms/internal/measurement/zzi;

    aget-object v1, v1, v2

    if-eqz v1, :cond_6

    const/4 v3, 0x3

    .line 74
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(ILcom/google/android/gms/internal/measurement/zzzr;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    return v0
.end method
