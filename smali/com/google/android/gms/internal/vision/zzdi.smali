.class public final Lcom/google/android/gms/internal/vision/zzdi;
.super Lcom/google/android/gms/internal/vision/zzjn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/vision/zzjn<",
        "Lcom/google/android/gms/internal/vision/zzdi;",
        ">;"
    }
.end annotation


# instance fields
.field private zzoe:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzjn;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/vision/zzjw;->zzzb:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdi;->zzoe:[I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzdi;->zzadp:I

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/vision/zzjk;)Lcom/google/android/gms/internal/vision/zzdi;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjk;->zzdq()I

    move-result v0

    if-eqz v0, :cond_d

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_7

    const/16 v3, 0xa

    if-eq v0, v3, :cond_1

    .line 25
    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzjn;->zza(Lcom/google/android/gms/internal/vision/zzjk;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 54
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjk;->zzdt()I

    move-result v0

    .line 55
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzjk;->zzan(I)I

    move-result v0

    .line 57
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjk;->getPosition()I

    move-result v3

    const/4 v4, 0x0

    .line 58
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjk;->zzhq()I

    move-result v5

    if-lez v5, :cond_2

    .line 60
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjk;->zzdt()I

    move-result v5

    .line 61
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzeb;->zzx(I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    nop

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_6

    .line 67
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/vision/zzjk;->zzbt(I)V

    .line 68
    iget-object v3, p0, Lcom/google/android/gms/internal/vision/zzdi;->zzoe:[I

    if-nez v3, :cond_3

    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/google/android/gms/internal/vision/zzdi;->zzoe:[I

    array-length v3, v3

    :goto_2
    add-int/2addr v4, v3

    .line 69
    new-array v4, v4, [I

    if-eqz v3, :cond_4

    .line 71
    iget-object v5, p0, Lcom/google/android/gms/internal/vision/zzdi;->zzoe:[I

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    :cond_4
    :goto_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjk;->zzhq()I

    move-result v2

    if-lez v2, :cond_5

    .line 73
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjk;->getPosition()I

    move-result v2

    .line 75
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjk;->zzdt()I

    move-result v5

    .line 76
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzeb;->zzx(I)I

    move-result v5

    aput v5, v4, v3
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 80
    :catch_1
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/vision/zzjk;->zzbt(I)V

    .line 81
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/vision/zzjn;->zza(Lcom/google/android/gms/internal/vision/zzjk;I)Z

    goto :goto_3

    .line 83
    :cond_5
    iput-object v4, p0, Lcom/google/android/gms/internal/vision/zzdi;->zzoe:[I

    .line 84
    :cond_6
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzjk;->zzao(I)V

    goto :goto_0

    .line 28
    :cond_7
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/vision/zzjw;->zzb(Lcom/google/android/gms/internal/vision/zzjk;I)I

    move-result v1

    .line 29
    new-array v3, v1, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_4
    if-ge v4, v1, :cond_9

    if-eqz v4, :cond_8

    .line 33
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjk;->zzdq()I

    .line 34
    :cond_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjk;->getPosition()I

    move-result v6

    .line 36
    :try_start_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjk;->zzdt()I

    move-result v7

    .line 37
    invoke-static {v7}, Lcom/google/android/gms/internal/vision/zzeb;->zzx(I)I

    move-result v7

    aput v7, v3, v5
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 41
    :catch_2
    invoke-virtual {p1, v6}, Lcom/google/android/gms/internal/vision/zzjk;->zzbt(I)V

    .line 42
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzjn;->zza(Lcom/google/android/gms/internal/vision/zzjk;I)Z

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_9
    if-eqz v5, :cond_0

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdi;->zzoe:[I

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_6

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdi;->zzoe:[I

    array-length v0, v0

    :goto_6
    if-nez v0, :cond_b

    .line 46
    array-length v1, v3

    if-ne v5, v1, :cond_b

    .line 47
    iput-object v3, p0, Lcom/google/android/gms/internal/vision/zzdi;->zzoe:[I

    goto/16 :goto_0

    :cond_b
    add-int v1, v0, v5

    .line 48
    new-array v1, v1, [I

    if-eqz v0, :cond_c

    .line 50
    iget-object v4, p0, Lcom/google/android/gms/internal/vision/zzdi;->zzoe:[I

    invoke-static {v4, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    :cond_c
    invoke-static {v3, v2, v1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    iput-object v1, p0, Lcom/google/android/gms/internal/vision/zzdi;->zzoe:[I

    goto/16 :goto_0

    :cond_d
    return-object p0
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/vision/zzjk;)Lcom/google/android/gms/internal/vision/zzjt;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/zzdi;->zzb(Lcom/google/android/gms/internal/vision/zzjk;)Lcom/google/android/gms/internal/vision/zzdi;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/vision/zzjl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdi;->zzoe:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdi;->zzoe:[I

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdi;->zzoe:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdi;->zzoe:[I

    aget v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/vision/zzjl;->zze(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/vision/zzjn;->zza(Lcom/google/android/gms/internal/vision/zzjl;)V

    return-void
.end method

.method protected final zzt()I
    .locals 4

    .line 11
    invoke-super {p0}, Lcom/google/android/gms/internal/vision/zzjn;->zzt()I

    move-result v0

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdi;->zzoe:[I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdi;->zzoe:[I

    array-length v1, v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 14
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/vision/zzdi;->zzoe:[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 15
    iget-object v3, p0, Lcom/google/android/gms/internal/vision/zzdi;->zzoe:[I

    aget v3, v3, v1

    .line 17
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzjl;->zzaw(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr v0, v2

    .line 20
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdi;->zzoe:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method
