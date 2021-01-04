.class public final Lcom/google/android/gms/internal/vision/zzdm;
.super Lcom/google/android/gms/internal/vision/zzjn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/vision/zzjn<",
        "Lcom/google/android/gms/internal/vision/zzdm;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzoo:[Lcom/google/android/gms/internal/vision/zzdm;


# instance fields
.field public name:Ljava/lang/String;

.field private zzop:Ljava/lang/String;

.field private zzoq:[Ljava/lang/String;

.field private zzor:Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;

.field public zzos:Ljava/lang/String;

.field public zzot:Ljava/lang/Long;

.field public zzou:Ljava/lang/Long;

.field public zzov:[Lcom/google/android/gms/internal/vision/zzdt;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzjn;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdm;->name:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdm;->zzop:Ljava/lang/String;

    .line 10
    sget-object v1, Lcom/google/android/gms/internal/vision/zzjw;->zzady:[Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/vision/zzdm;->zzoq:[Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdm;->zzos:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdm;->zzot:Ljava/lang/Long;

    .line 13
    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdm;->zzou:Ljava/lang/Long;

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzdt;->zzcd()[Lcom/google/android/gms/internal/vision/zzdt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdm;->zzov:[Lcom/google/android/gms/internal/vision/zzdt;

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzdm;->zzadp:I

    return-void
.end method

.method public static zzcb()[Lcom/google/android/gms/internal/vision/zzdm;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/vision/zzdm;->zzoo:[Lcom/google/android/gms/internal/vision/zzdm;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/vision/zzjr;->zzado:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/vision/zzdm;->zzoo:[Lcom/google/android/gms/internal/vision/zzdm;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Lcom/google/android/gms/internal/vision/zzdm;

    sput-object v1, Lcom/google/android/gms/internal/vision/zzdm;->zzoo:[Lcom/google/android/gms/internal/vision/zzdm;

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
    sget-object v0, Lcom/google/android/gms/internal/vision/zzdm;->zzoo:[Lcom/google/android/gms/internal/vision/zzdm;

    return-object v0
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/vision/zzjk;)Lcom/google/android/gms/internal/vision/zzjt;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjk;->zzdq()I

    move-result v0

    if-eqz v0, :cond_f

    const/16 v1, 0xa

    if-eq v0, v1, :cond_e

    const/16 v1, 0x12

    if-eq v0, v1, :cond_d

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-eq v0, v1, :cond_9

    const/16 v1, 0x20

    if-eq v0, v1, :cond_8

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_7

    const/16 v1, 0x30

    if-eq v0, v1, :cond_6

    const/16 v1, 0x38

    if-eq v0, v1, :cond_5

    const/16 v1, 0x42

    if-eq v0, v1, :cond_1

    .line 88
    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzjn;->zza(Lcom/google/android/gms/internal/vision/zzjk;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 128
    :cond_1
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/vision/zzjw;->zzb(Lcom/google/android/gms/internal/vision/zzjk;I)I

    move-result v0

    .line 129
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdm;->zzov:[Lcom/google/android/gms/internal/vision/zzdt;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdm;->zzov:[Lcom/google/android/gms/internal/vision/zzdt;

    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    .line 130
    new-array v0, v0, [Lcom/google/android/gms/internal/vision/zzdt;

    if-eqz v1, :cond_3

    .line 132
    iget-object v3, p0, Lcom/google/android/gms/internal/vision/zzdm;->zzov:[Lcom/google/android/gms/internal/vision/zzdt;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    :cond_3
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4

    .line 134
    new-instance v2, Lcom/google/android/gms/internal/vision/zzdt;

    invoke-direct {v2}, Lcom/google/android/gms/internal/vision/zzdt;-><init>()V

    aput-object v2, v0, v1

    .line 135
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/vision/zzjk;->zza(Lcom/google/android/gms/internal/vision/zzjt;)V

    .line 136
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjk;->zzdq()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 138
    :cond_4
    new-instance v2, Lcom/google/android/gms/internal/vision/zzdt;

    invoke-direct {v2}, Lcom/google/android/gms/internal/vision/zzdt;-><init>()V

    aput-object v2, v0, v1

    .line 139
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/vision/zzjk;->zza(Lcom/google/android/gms/internal/vision/zzjt;)V

    .line 140
    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdm;->zzov:[Lcom/google/android/gms/internal/vision/zzdt;

    goto :goto_0

    .line 124
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjk;->zzdu()J

    move-result-wide v0

    .line 125
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdm;->zzou:Ljava/lang/Long;

    goto :goto_0

    .line 120
    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjk;->zzdu()J

    move-result-wide v0

    .line 121
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdm;->zzot:Ljava/lang/Long;

    goto/16 :goto_0

    .line 117
    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjk;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdm;->zzos:Ljava/lang/String;

    goto/16 :goto_0

    .line 107
    :cond_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjk;->getPosition()I

    move-result v1

    .line 109
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjk;->zzdt()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 114
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/vision/zzjk;->zzbt(I)V

    .line 115
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzjn;->zza(Lcom/google/android/gms/internal/vision/zzjk;I)Z

    goto/16 :goto_0

    .line 112
    :pswitch_0
    invoke-static {v2}, Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;->zzt(I)Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdm;->zzor:Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;

    goto/16 :goto_0

    .line 95
    :cond_9
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/vision/zzjw;->zzb(Lcom/google/android/gms/internal/vision/zzjk;I)I

    move-result v0

    .line 96
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdm;->zzoq:[Ljava/lang/String;

    if-nez v1, :cond_a

    const/4 v1, 0x0

    goto :goto_3

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdm;->zzoq:[Ljava/lang/String;

    array-length v1, v1

    :goto_3
    add-int/2addr v0, v1

    .line 97
    new-array v0, v0, [Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 99
    iget-object v3, p0, Lcom/google/android/gms/internal/vision/zzdm;->zzoq:[Ljava/lang/String;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    :cond_b
    :goto_4
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_c

    .line 101
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjk;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 102
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjk;->zzdq()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 104
    :cond_c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjk;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 105
    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdm;->zzoq:[Ljava/lang/String;

    goto/16 :goto_0

    .line 92
    :cond_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjk;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdm;->zzop:Ljava/lang/String;

    goto/16 :goto_0

    .line 90
    :cond_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjk;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdm;->name:Ljava/lang/String;

    goto/16 :goto_0

    :cond_f
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/vision/zzjl;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdm;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdm;->name:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/vision/zzjl;->zza(ILjava/lang/String;)V

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdm;->zzop:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 20
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdm;->zzop:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzjl;->zza(ILjava/lang/String;)V

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdm;->zzoq:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdm;->zzoq:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    .line 22
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzdm;->zzoq:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 23
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzdm;->zzoq:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    const/4 v3, 0x3

    .line 25
    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/vision/zzjl;->zza(ILjava/lang/String;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 27
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdm;->zzor:Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;

    if-eqz v0, :cond_4

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdm;->zzor:Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    .line 29
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzdm;->zzor:Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;->zzr()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/vision/zzjl;->zze(II)V

    .line 30
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdm;->zzos:Ljava/lang/String;

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    .line 31
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzdm;->zzos:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/vision/zzjl;->zza(ILjava/lang/String;)V

    .line 32
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdm;->zzot:Ljava/lang/Long;

    if-eqz v0, :cond_6

    const/4 v0, 0x6

    .line 33
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzdm;->zzot:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/vision/zzjl;->zzi(IJ)V

    .line 34
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdm;->zzou:Ljava/lang/Long;

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    .line 35
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzdm;->zzou:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/vision/zzjl;->zzi(IJ)V

    .line 36
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdm;->zzov:[Lcom/google/android/gms/internal/vision/zzdt;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdm;->zzov:[Lcom/google/android/gms/internal/vision/zzdt;

    array-length v0, v0

    if-lez v0, :cond_9

    .line 37
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdm;->zzov:[Lcom/google/android/gms/internal/vision/zzdt;

    array-length v0, v0

    if-ge v1, v0, :cond_9

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdm;->zzov:[Lcom/google/android/gms/internal/vision/zzdt;

    aget-object v0, v0, v1

    if-eqz v0, :cond_8

    const/16 v2, 0x8

    .line 40
    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/vision/zzjl;->zza(ILcom/google/android/gms/internal/vision/zzjt;)V

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 42
    :cond_9
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/vision/zzjn;->zza(Lcom/google/android/gms/internal/vision/zzjl;)V

    return-void
.end method

.method protected final zzt()I
    .locals 7

    .line 44
    invoke-super {p0}, Lcom/google/android/gms/internal/vision/zzjn;->zzt()I

    move-result v0

    .line 45
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdm;->name:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdm;->name:Ljava/lang/String;

    .line 47
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/vision/zzjl;->zzb(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdm;->zzop:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 49
    iget-object v3, p0, Lcom/google/android/gms/internal/vision/zzdm;->zzop:Ljava/lang/String;

    .line 50
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/vision/zzjl;->zzb(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 51
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdm;->zzoq:[Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdm;->zzoq:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_4

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 54
    :goto_0
    iget-object v6, p0, Lcom/google/android/gms/internal/vision/zzdm;->zzoq:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_3

    .line 55
    iget-object v6, p0, Lcom/google/android/gms/internal/vision/zzdm;->zzoq:[Ljava/lang/String;

    aget-object v6, v6, v1

    if-eqz v6, :cond_2

    add-int/lit8 v5, v5, 0x1

    .line 59
    invoke-static {v6}, Lcom/google/android/gms/internal/vision/zzjl;->zzn(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v4, v6

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    add-int/2addr v0, v4

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v0, v5

    .line 63
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdm;->zzor:Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;

    if-eqz v1, :cond_5

    .line 64
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdm;->zzor:Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;

    if-eqz v1, :cond_5

    const/4 v1, 0x4

    .line 65
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzdm;->zzor:Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;

    .line 66
    invoke-virtual {v2}, Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;->zzr()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vision/zzjl;->zzi(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 67
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdm;->zzos:Ljava/lang/String;

    if-eqz v1, :cond_6

    const/4 v1, 0x5

    .line 68
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzdm;->zzos:Ljava/lang/String;

    .line 69
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vision/zzjl;->zzb(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 70
    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdm;->zzot:Ljava/lang/Long;

    if-eqz v1, :cond_7

    const/4 v1, 0x6

    .line 71
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzdm;->zzot:Ljava/lang/Long;

    .line 72
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/zzjl;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 73
    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdm;->zzou:Ljava/lang/Long;

    if-eqz v1, :cond_8

    const/4 v1, 0x7

    .line 74
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzdm;->zzou:Ljava/lang/Long;

    .line 75
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/zzjl;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 76
    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdm;->zzov:[Lcom/google/android/gms/internal/vision/zzdt;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdm;->zzov:[Lcom/google/android/gms/internal/vision/zzdt;

    array-length v1, v1

    if-lez v1, :cond_a

    .line 77
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdm;->zzov:[Lcom/google/android/gms/internal/vision/zzdt;

    array-length v1, v1

    if-ge v3, v1, :cond_a

    .line 78
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdm;->zzov:[Lcom/google/android/gms/internal/vision/zzdt;

    aget-object v1, v1, v3

    if-eqz v1, :cond_9

    const/16 v2, 0x8

    .line 81
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/vision/zzjl;->zzb(ILcom/google/android/gms/internal/vision/zzjt;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_a
    return v0
.end method
