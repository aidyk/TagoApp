.class public final Lcom/google/android/gms/internal/vision/zzdq;
.super Lcom/google/android/gms/internal/vision/zzjn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/vision/zzjn<",
        "Lcom/google/android/gms/internal/vision/zzdq;",
        ">;"
    }
.end annotation


# instance fields
.field private zzpl:Lcom/google/android/gms/internal/vision/zzcz$zzf$zzb;

.field public zzpm:Ljava/lang/Long;

.field public zzpn:Ljava/lang/Long;

.field public zzpo:Ljava/lang/Long;

.field public zzpp:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzjn;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdq;->zzpm:Ljava/lang/Long;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdq;->zzpn:Ljava/lang/Long;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdq;->zzpo:Ljava/lang/Long;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdq;->zzpp:Ljava/lang/Long;

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzdq;->zzadp:I

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/vision/zzjk;)Lcom/google/android/gms/internal/vision/zzjt;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjk;->zzdq()I

    move-result v0

    if-eqz v0, :cond_6

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    const/16 v1, 0x10

    if-eq v0, v1, :cond_4

    const/16 v1, 0x18

    if-eq v0, v1, :cond_3

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    .line 43
    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzjn;->zza(Lcom/google/android/gms/internal/vision/zzjk;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 68
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjk;->zzdu()J

    move-result-wide v0

    .line 69
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdq;->zzpo:Ljava/lang/Long;

    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjk;->zzdu()J

    move-result-wide v0

    .line 65
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdq;->zzpp:Ljava/lang/Long;

    goto :goto_0

    .line 60
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjk;->zzdu()J

    move-result-wide v0

    .line 61
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdq;->zzpn:Ljava/lang/Long;

    goto :goto_0

    .line 56
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjk;->zzdu()J

    move-result-wide v0

    .line 57
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdq;->zzpm:Ljava/lang/Long;

    goto :goto_0

    .line 45
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjk;->getPosition()I

    move-result v1

    .line 47
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjk;->zzdt()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 52
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/vision/zzjk;->zzbt(I)V

    .line 53
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzjn;->zza(Lcom/google/android/gms/internal/vision/zzjk;I)Z

    goto :goto_0

    .line 50
    :pswitch_0
    invoke-static {v2}, Lcom/google/android/gms/internal/vision/zzcz$zzf$zzb;->zzu(I)Lcom/google/android/gms/internal/vision/zzcz$zzf$zzb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdq;->zzpl:Lcom/google/android/gms/internal/vision/zzcz$zzf$zzb;

    goto :goto_0

    :cond_6
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/vision/zzjl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdq;->zzpl:Lcom/google/android/gms/internal/vision/zzcz$zzf$zzb;

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdq;->zzpl:Lcom/google/android/gms/internal/vision/zzcz$zzf$zzb;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdq;->zzpl:Lcom/google/android/gms/internal/vision/zzcz$zzf$zzb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzcz$zzf$zzb;->zzr()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzjl;->zze(II)V

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdq;->zzpm:Ljava/lang/Long;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdq;->zzpm:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/vision/zzjl;->zzi(IJ)V

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdq;->zzpn:Ljava/lang/Long;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdq;->zzpn:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/vision/zzjl;->zzi(IJ)V

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdq;->zzpp:Ljava/lang/Long;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 16
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdq;->zzpp:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/vision/zzjl;->zzi(IJ)V

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdq;->zzpo:Ljava/lang/Long;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdq;->zzpo:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/vision/zzjl;->zzi(IJ)V

    .line 19
    :cond_4
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/vision/zzjn;->zza(Lcom/google/android/gms/internal/vision/zzjl;)V

    return-void
.end method

.method protected final zzt()I
    .locals 4

    .line 21
    invoke-super {p0}, Lcom/google/android/gms/internal/vision/zzjn;->zzt()I

    move-result v0

    .line 22
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdq;->zzpl:Lcom/google/android/gms/internal/vision/zzcz$zzf$zzb;

    if-eqz v1, :cond_0

    .line 23
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdq;->zzpl:Lcom/google/android/gms/internal/vision/zzcz$zzf$zzb;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 24
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzdq;->zzpl:Lcom/google/android/gms/internal/vision/zzcz$zzf$zzb;

    .line 25
    invoke-virtual {v2}, Lcom/google/android/gms/internal/vision/zzcz$zzf$zzb;->zzr()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vision/zzjl;->zzi(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 26
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdq;->zzpm:Ljava/lang/Long;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 27
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzdq;->zzpm:Ljava/lang/Long;

    .line 28
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/vision/zzjl;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 29
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdq;->zzpn:Ljava/lang/Long;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 30
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzdq;->zzpn:Ljava/lang/Long;

    .line 31
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/vision/zzjl;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 32
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdq;->zzpp:Ljava/lang/Long;

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    .line 33
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzdq;->zzpp:Ljava/lang/Long;

    .line 34
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/vision/zzjl;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 35
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdq;->zzpo:Ljava/lang/Long;

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    .line 36
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzdq;->zzpo:Ljava/lang/Long;

    .line 37
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/vision/zzjl;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    return v0
.end method
