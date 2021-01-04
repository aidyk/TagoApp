.class public final Lcom/google/android/gms/internal/vision/zzdl;
.super Lcom/google/android/gms/internal/vision/zzjn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/vision/zzjn<",
        "Lcom/google/android/gms/internal/vision/zzdl;",
        ">;"
    }
.end annotation


# instance fields
.field private url:Ljava/lang/String;

.field private zzoi:Ljava/lang/Boolean;

.field private zzoj:Lcom/google/android/gms/internal/vision/zzcz$zzc$zzb;

.field private zzok:Ljava/lang/Long;

.field private zzol:Ljava/lang/Long;

.field private zzom:Ljava/lang/Long;

.field private zzon:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzjn;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdl;->url:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdl;->zzoi:Ljava/lang/Boolean;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdl;->zzok:Ljava/lang/Long;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdl;->zzol:Ljava/lang/Long;

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdl;->zzom:Ljava/lang/Long;

    .line 7
    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdl;->zzon:Ljava/lang/String;

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzdl;->zzadp:I

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

    .line 54
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjk;->zzdq()I

    move-result v0

    if-eqz v0, :cond_8

    const/16 v1, 0xa

    if-eq v0, v1, :cond_7

    const/16 v1, 0x10

    if-eq v0, v1, :cond_6

    const/16 v1, 0x18

    if-eq v0, v1, :cond_5

    const/16 v1, 0x20

    if-eq v0, v1, :cond_4

    const/16 v1, 0x28

    if-eq v0, v1, :cond_3

    const/16 v1, 0x30

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_1

    .line 57
    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzjn;->zza(Lcom/google/android/gms/internal/vision/zzjk;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 85
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjk;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdl;->zzon:Ljava/lang/String;

    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjk;->zzdu()J

    move-result-wide v0

    .line 83
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdl;->zzom:Ljava/lang/Long;

    goto :goto_0

    .line 78
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjk;->zzdu()J

    move-result-wide v0

    .line 79
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdl;->zzol:Ljava/lang/Long;

    goto :goto_0

    .line 74
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjk;->zzdu()J

    move-result-wide v0

    .line 75
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdl;->zzok:Ljava/lang/Long;

    goto :goto_0

    .line 63
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjk;->getPosition()I

    move-result v1

    .line 65
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjk;->zzdt()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 70
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/vision/zzjk;->zzbt(I)V

    .line 71
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzjn;->zza(Lcom/google/android/gms/internal/vision/zzjk;I)Z

    goto :goto_0

    .line 68
    :pswitch_0
    invoke-static {v2}, Lcom/google/android/gms/internal/vision/zzcz$zzc$zzb;->zzs(I)Lcom/google/android/gms/internal/vision/zzcz$zzc$zzb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdl;->zzoj:Lcom/google/android/gms/internal/vision/zzcz$zzc$zzb;

    goto :goto_0

    .line 61
    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjk;->zzcu()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdl;->zzoi:Ljava/lang/Boolean;

    goto :goto_0

    .line 59
    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjk;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdl;->url:Ljava/lang/String;

    goto :goto_0

    :cond_8
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

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdl;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdl;->url:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzjl;->zza(ILjava/lang/String;)V

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdl;->zzoi:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdl;->zzoi:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzjl;->zzb(IZ)V

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdl;->zzoj:Lcom/google/android/gms/internal/vision/zzcz$zzc$zzb;

    if-eqz v0, :cond_2

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdl;->zzoj:Lcom/google/android/gms/internal/vision/zzcz$zzc$zzb;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 16
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdl;->zzoj:Lcom/google/android/gms/internal/vision/zzcz$zzc$zzb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzcz$zzc$zzb;->zzr()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzjl;->zze(II)V

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdl;->zzok:Ljava/lang/Long;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdl;->zzok:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/vision/zzjl;->zzi(IJ)V

    .line 19
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdl;->zzol:Ljava/lang/Long;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 20
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdl;->zzol:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/vision/zzjl;->zzi(IJ)V

    .line 21
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdl;->zzom:Ljava/lang/Long;

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    .line 22
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdl;->zzom:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/vision/zzjl;->zzi(IJ)V

    .line 23
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdl;->zzon:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdl;->zzon:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzjl;->zza(ILjava/lang/String;)V

    .line 25
    :cond_6
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/vision/zzjn;->zza(Lcom/google/android/gms/internal/vision/zzjl;)V

    return-void
.end method

.method protected final zzt()I
    .locals 4

    .line 27
    invoke-super {p0}, Lcom/google/android/gms/internal/vision/zzjn;->zzt()I

    move-result v0

    .line 28
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdl;->url:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 29
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdl;->url:Ljava/lang/String;

    .line 30
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/vision/zzjl;->zzb(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 31
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdl;->zzoi:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 32
    iget-object v3, p0, Lcom/google/android/gms/internal/vision/zzdl;->zzoi:Ljava/lang/Boolean;

    .line 33
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 34
    invoke-static {v1}, Lcom/google/android/gms/internal/vision/zzjl;->zzav(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 36
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdl;->zzoj:Lcom/google/android/gms/internal/vision/zzcz$zzc$zzb;

    if-eqz v1, :cond_2

    .line 37
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdl;->zzoj:Lcom/google/android/gms/internal/vision/zzcz$zzc$zzb;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 38
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzdl;->zzoj:Lcom/google/android/gms/internal/vision/zzcz$zzc$zzb;

    .line 39
    invoke-virtual {v2}, Lcom/google/android/gms/internal/vision/zzcz$zzc$zzb;->zzr()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vision/zzjl;->zzi(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 40
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdl;->zzok:Ljava/lang/Long;

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    .line 41
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzdl;->zzok:Ljava/lang/Long;

    .line 42
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/vision/zzjl;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 43
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdl;->zzol:Ljava/lang/Long;

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    .line 44
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzdl;->zzol:Ljava/lang/Long;

    .line 45
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/vision/zzjl;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 46
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdl;->zzom:Ljava/lang/Long;

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    .line 47
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzdl;->zzom:Ljava/lang/Long;

    .line 48
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/vision/zzjl;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 49
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdl;->zzon:Ljava/lang/String;

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    .line 50
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzdl;->zzon:Ljava/lang/String;

    .line 51
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vision/zzjl;->zzb(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    return v0
.end method
