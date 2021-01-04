.class final Lcom/google/android/gms/internal/vision/zzfc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/vision/zzhv;


# instance fields
.field private tag:I

.field private zzru:I

.field private final zzsp:Lcom/google/android/gms/internal/vision/zzez;

.field private zzsq:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/vision/zzez;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsq:I

    const-string v0, "input"

    .line 6
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/vision/zzga;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/vision/zzez;

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    iput-object p0, p1, Lcom/google/android/gms/internal/vision/zzez;->zzsi:Lcom/google/android/gms/internal/vision/zzfc;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/vision/zzez;)Lcom/google/android/gms/internal/vision/zzfc;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzez;->zzsi:Lcom/google/android/gms/internal/vision/zzfc;

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzez;->zzsi:Lcom/google/android/gms/internal/vision/zzfc;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/vision/zzfc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/vision/zzfc;-><init>(Lcom/google/android/gms/internal/vision/zzez;)V

    return-object v0
.end method

.method private final zza(Lcom/google/android/gms/internal/vision/zzjd;Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzfk;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/vision/zzjd;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/gms/internal/vision/zzfk;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 719
    sget-object v0, Lcom/google/android/gms/internal/vision/zzfd;->zzrr:[I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjd;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 737
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unsupported field type."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 736
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfc;->zzcp()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 735
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfc;->zzcx()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 734
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfc;->zzcv()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 733
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfc;->zzdc()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 732
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfc;->zzdb()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 731
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfc;->zzda()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 730
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfc;->zzcz()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 729
    :pswitch_7
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/vision/zzfc;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzfk;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 728
    :pswitch_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfc;->zzcq()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 727
    :pswitch_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfc;->zzcr()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 726
    :pswitch_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfc;->readFloat()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 725
    :pswitch_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfc;->zzcs()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 724
    :pswitch_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfc;->zzct()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 723
    :pswitch_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfc;->zzcy()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 722
    :pswitch_e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfc;->readDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 721
    :pswitch_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfc;->zzcw()Lcom/google/android/gms/internal/vision/zzeo;

    move-result-object p1

    return-object p1

    .line 720
    :pswitch_10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfc;->zzcu()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zza(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 403
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 407
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzgo;

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    .line 408
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/vision/zzgo;

    .line 409
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfc;->zzcw()Lcom/google/android/gms/internal/vision/zzeo;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/vision/zzgo;->zzc(Lcom/google/android/gms/internal/vision/zzeo;)V

    .line 410
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzcm()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 412
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzdq()I

    move-result p1

    .line 413
    iget p2, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    if-eq p1, p2, :cond_0

    .line 414
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsq:I

    return-void

    :cond_2
    if-eqz p2, :cond_3

    .line 417
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfc;->zzcv()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfc;->readString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcm()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 420
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzdq()I

    move-result v0

    .line 421
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    if-eq v0, v1, :cond_2

    .line 422
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsq:I

    return-void

    .line 406
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfm()Lcom/google/android/gms/internal/vision/zzgg;

    move-result-object p1

    throw p1
.end method

.method private final zzab(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-ne v0, p1, :cond_0

    return-void

    .line 25
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfm()Lcom/google/android/gms/internal/vision/zzgg;

    move-result-object p1

    throw p1
.end method

.method private static zzac(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p0, p0, 0x7

    if-nez p0, :cond_0

    return-void

    .line 692
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfo()Lcom/google/android/gms/internal/vision/zzgf;

    move-result-object p0

    throw p0
.end method

.method private static zzad(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p0, p0, 0x3

    if-nez p0, :cond_0

    return-void

    .line 739
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfo()Lcom/google/android/gms/internal/vision/zzgf;

    move-result-object p0

    throw p0
.end method

.method private final zzae(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 741
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzds()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 742
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfh()Lcom/google/android/gms/internal/vision/zzgf;

    move-result-object p1

    throw p1
.end method

.method private final zzb(Lcom/google/android/gms/internal/vision/zzhw;Lcom/google/android/gms/internal/vision/zzfk;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/vision/zzhw<",
            "TT;>;",
            "Lcom/google/android/gms/internal/vision/zzfk;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcx()I

    move-result v0

    .line 56
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    iget v1, v1, Lcom/google/android/gms/internal/vision/zzez;->zzsf:I

    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    iget v2, v2, Lcom/google/android/gms/internal/vision/zzez;->zzsg:I

    if-ge v1, v2, :cond_0

    .line 58
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/vision/zzez;->zzan(I)I

    move-result v0

    .line 59
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzhw;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 60
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    iget v3, v2, Lcom/google/android/gms/internal/vision/zzez;->zzsf:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/google/android/gms/internal/vision/zzez;->zzsf:I

    .line 61
    invoke-interface {p1, v1, p0, p2}, Lcom/google/android/gms/internal/vision/zzhw;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzhv;Lcom/google/android/gms/internal/vision/zzfk;)V

    .line 62
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/vision/zzhw;->zze(Ljava/lang/Object;)V

    .line 63
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/vision/zzez;->zzak(I)V

    .line 64
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    iget p2, p1, Lcom/google/android/gms/internal/vision/zzez;->zzsf:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lcom/google/android/gms/internal/vision/zzez;->zzsf:I

    .line 65
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzez;->zzao(I)V

    return-object v1

    .line 57
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfn()Lcom/google/android/gms/internal/vision/zzgf;

    move-result-object p1

    throw p1
.end method

.method private final zzd(Lcom/google/android/gms/internal/vision/zzhw;Lcom/google/android/gms/internal/vision/zzfk;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/vision/zzhw<",
            "TT;>;",
            "Lcom/google/android/gms/internal/vision/zzfk;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzru:I

    .line 68
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    ushr-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    or-int/lit8 v1, v1, 0x4

    .line 71
    iput v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzru:I

    .line 72
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzhw;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 73
    invoke-interface {p1, v1, p0, p2}, Lcom/google/android/gms/internal/vision/zzhw;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzhv;Lcom/google/android/gms/internal/vision/zzfk;)V

    .line 74
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/vision/zzhw;->zze(Ljava/lang/Object;)V

    .line 75
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    iget p2, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzru:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    .line 78
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzru:I

    return-object v1

    .line 76
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfo()Lcom/google/android/gms/internal/vision/zzgf;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 80
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzru:I

    throw p1
.end method


# virtual methods
.method public final getTag()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    return v0
.end method

.method public final readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 27
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfc;->zzab(I)V

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public final readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 29
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfc;->zzab(I)V

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->readFloat()F

    move-result v0

    return v0
.end method

.method public final readString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 43
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfc;->zzab(I)V

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final readStringList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 399
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzfc;->zza(Ljava/util/List;Z)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/vision/zzhw;Lcom/google/android/gms/internal/vision/zzfk;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/vision/zzhw<",
            "TT;>;",
            "Lcom/google/android/gms/internal/vision/zzfk;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 49
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfc;->zzab(I)V

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzfc;->zzb(Lcom/google/android/gms/internal/vision/zzhw;Lcom/google/android/gms/internal/vision/zzfk;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzfk;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/android/gms/internal/vision/zzfk;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 47
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfc;->zzab(I)V

    .line 48
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhs;->zzgl()Lcom/google/android/gms/internal/vision/zzhs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzhs;->zzf(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzfc;->zzb(Lcom/google/android/gms/internal/vision/zzhw;Lcom/google/android/gms/internal/vision/zzfk;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzfh;

    if-eqz v0, :cond_3

    .line 96
    check-cast p1, Lcom/google/android/gms/internal/vision/zzfh;

    .line 97
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_0

    .line 114
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfm()Lcom/google/android/gms/internal/vision/zzgg;

    move-result-object p1

    throw p1

    .line 100
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcx()I

    move-result v0

    .line 101
    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzfc;->zzac(I)V

    .line 102
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzez;->zzds()I

    move-result v1

    add-int/2addr v1, v0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->readDouble()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzfh;->zzc(D)V

    .line 104
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzds()I

    move-result v0

    if-lt v0, v1, :cond_0

    return-void

    .line 106
    :cond_1
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->readDouble()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzfh;->zzc(D)V

    .line 107
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcm()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 109
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzdq()I

    move-result v0

    .line 110
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    if-eq v0, v1, :cond_1

    .line 111
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsq:I

    return-void

    .line 115
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_1

    .line 132
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfm()Lcom/google/android/gms/internal/vision/zzgg;

    move-result-object p1

    throw p1

    .line 118
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcx()I

    move-result v0

    .line 119
    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzfc;->zzac(I)V

    .line 120
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzez;->zzds()I

    move-result v1

    add-int/2addr v1, v0

    .line 121
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzds()I

    move-result v0

    if-lt v0, v1, :cond_4

    return-void

    .line 124
    :cond_5
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcm()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    .line 127
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzdq()I

    move-result v0

    .line 128
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    if-eq v0, v1, :cond_5

    .line 129
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsq:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final zza(Ljava/util/List;Lcom/google/android/gms/internal/vision/zzhw;Lcom/google/android/gms/internal/vision/zzfk;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/android/gms/internal/vision/zzhw<",
            "TT;>;",
            "Lcom/google/android/gms/internal/vision/zzfk;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 425
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 429
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    .line 430
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/vision/zzfc;->zzb(Lcom/google/android/gms/internal/vision/zzhw;Lcom/google/android/gms/internal/vision/zzfk;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzez;->zzcm()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsq:I

    if-eqz v1, :cond_1

    goto :goto_0

    .line 433
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzez;->zzdq()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 435
    iput v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsq:I

    return-void

    :cond_2
    :goto_0
    return-void

    .line 428
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfm()Lcom/google/android/gms/internal/vision/zzgg;

    move-result-object p1

    throw p1
.end method

.method public final zza(Ljava/util/Map;Lcom/google/android/gms/internal/vision/zzgy;Lcom/google/android/gms/internal/vision/zzfk;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/vision/zzgy<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/vision/zzfk;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 694
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfc;->zzab(I)V

    .line 695
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcx()I

    move-result v0

    .line 696
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/vision/zzez;->zzan(I)I

    move-result v0

    .line 697
    iget-object v1, p2, Lcom/google/android/gms/internal/vision/zzgy;->zzyw:Ljava/lang/Object;

    .line 698
    iget-object v2, p2, Lcom/google/android/gms/internal/vision/zzgy;->zzgq:Ljava/lang/Object;

    .line 699
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfc;->zzcn()I

    move-result v3

    const v4, 0x7fffffff

    if-eq v3, v4, :cond_2

    .line 700
    iget-object v4, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/vision/zzez;->zzcm()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_2

    packed-switch v3, :pswitch_data_0

    .line 708
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfc;->zzco()Z

    move-result v3

    goto :goto_1

    .line 704
    :pswitch_0
    iget-object v3, p2, Lcom/google/android/gms/internal/vision/zzgy;->zzyx:Lcom/google/android/gms/internal/vision/zzjd;

    iget-object v4, p2, Lcom/google/android/gms/internal/vision/zzgy;->zzgq:Ljava/lang/Object;

    .line 705
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 706
    invoke-direct {p0, v3, v4, p3}, Lcom/google/android/gms/internal/vision/zzfc;->zza(Lcom/google/android/gms/internal/vision/zzjd;Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzfk;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 702
    :pswitch_1
    iget-object v3, p2, Lcom/google/android/gms/internal/vision/zzgy;->zzyv:Lcom/google/android/gms/internal/vision/zzjd;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, v4}, Lcom/google/android/gms/internal/vision/zzfc;->zza(Lcom/google/android/gms/internal/vision/zzjd;Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzfk;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    goto :goto_0

    :goto_1
    if-eqz v3, :cond_0

    goto :goto_0

    .line 709
    :cond_0
    new-instance v3, Lcom/google/android/gms/internal/vision/zzgf;

    const-string v4, "Unable to parse map entry."

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/vision/zzgf;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Lcom/google/android/gms/internal/vision/zzgg; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 712
    :catch_0
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfc;->zzco()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 713
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/vision/zzgf;

    const-string p2, "Unable to parse map entry."

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/vision/zzgf;-><init>(Ljava/lang/String;)V

    throw p1

    .line 715
    :cond_2
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 716
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzez;->zzao(I)V

    return-void

    :catchall_0
    move-exception p1

    .line 718
    iget-object p2, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/vision/zzez;->zzao(I)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzb(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzfk;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/android/gms/internal/vision/zzfk;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 51
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfc;->zzab(I)V

    .line 52
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhs;->zzgl()Lcom/google/android/gms/internal/vision/zzhs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzhs;->zzf(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzfc;->zzd(Lcom/google/android/gms/internal/vision/zzhw;Lcom/google/android/gms/internal/vision/zzfk;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzfv;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    .line 134
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/vision/zzfv;

    .line 135
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    .line 144
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->readFloat()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzfv;->zzh(F)V

    .line 145
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzcm()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 147
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzdq()I

    move-result p1

    .line 148
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    if-eq p1, v1, :cond_0

    .line 149
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsq:I

    return-void

    .line 152
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfm()Lcom/google/android/gms/internal/vision/zzgg;

    move-result-object p1

    throw p1

    .line 138
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzcx()I

    move-result p1

    .line 139
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzfc;->zzad(I)V

    .line 140
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzez;->zzds()I

    move-result v1

    add-int v3, v1, p1

    .line 141
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->readFloat()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzfv;->zzh(F)V

    .line 142
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzds()I

    move-result p1

    if-lt p1, v3, :cond_4

    return-void

    .line 153
    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    .line 162
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcm()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 165
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzdq()I

    move-result v0

    .line 166
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    if-eq v0, v1, :cond_6

    .line 167
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsq:I

    return-void

    .line 170
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfm()Lcom/google/android/gms/internal/vision/zzgg;

    move-result-object p1

    throw p1

    .line 156
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcx()I

    move-result v0

    .line 157
    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzfc;->zzad(I)V

    .line 158
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzez;->zzds()I

    move-result v1

    add-int/2addr v1, v0

    .line 159
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzds()I

    move-result v0

    if-lt v0, v1, :cond_a

    return-void
.end method

.method public final zzb(Ljava/util/List;Lcom/google/android/gms/internal/vision/zzhw;Lcom/google/android/gms/internal/vision/zzfk;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/android/gms/internal/vision/zzhw<",
            "TT;>;",
            "Lcom/google/android/gms/internal/vision/zzfk;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 438
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 442
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    .line 443
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/vision/zzfc;->zzd(Lcom/google/android/gms/internal/vision/zzhw;Lcom/google/android/gms/internal/vision/zzfk;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzez;->zzcm()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsq:I

    if-eqz v1, :cond_1

    goto :goto_0

    .line 446
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzez;->zzdq()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 448
    iput v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsq:I

    return-void

    :cond_2
    :goto_0
    return-void

    .line 441
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfm()Lcom/google/android/gms/internal/vision/zzgg;

    move-result-object p1

    throw p1
.end method

.method public final zzc(Lcom/google/android/gms/internal/vision/zzhw;Lcom/google/android/gms/internal/vision/zzfk;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/vision/zzhw<",
            "TT;>;",
            "Lcom/google/android/gms/internal/vision/zzfk;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 53
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfc;->zzab(I)V

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzfc;->zzd(Lcom/google/android/gms/internal/vision/zzhw;Lcom/google/android/gms/internal/vision/zzfk;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzgt;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 172
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/vision/zzgt;

    .line 173
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 176
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzcx()I

    move-result p1

    .line 177
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzez;->zzds()I

    move-result v1

    add-int/2addr v1, p1

    .line 178
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzcp()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/vision/zzgt;->zzp(J)V

    .line 179
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzds()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 180
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzfc;->zzae(I)V

    return-void

    .line 190
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfm()Lcom/google/android/gms/internal/vision/zzgg;

    move-result-object p1

    throw p1

    .line 182
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzcp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/vision/zzgt;->zzp(J)V

    .line 183
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzcm()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 185
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzdq()I

    move-result p1

    .line 186
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    if-eq p1, v1, :cond_2

    .line 187
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsq:I

    return-void

    .line 191
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 194
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcx()I

    move-result v0

    .line 195
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzez;->zzds()I

    move-result v1

    add-int/2addr v1, v0

    .line 196
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzds()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 198
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzfc;->zzae(I)V

    return-void

    .line 208
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfm()Lcom/google/android/gms/internal/vision/zzgg;

    move-result-object p1

    throw p1

    .line 200
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcm()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 203
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzdq()I

    move-result v0

    .line 204
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    if-eq v0, v1, :cond_7

    .line 205
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsq:I

    return-void
.end method

.method public final zzcn()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsq:I

    if-eqz v0, :cond_0

    .line 10
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsq:I

    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsq:I

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzdq()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    .line 13
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzru:I

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 15
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    ushr-int/lit8 v0, v0, 0x3

    return v0

    :cond_2
    :goto_1
    const v0, 0x7fffffff

    return v0
.end method

.method public final zzco()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcm()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzru:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/vision/zzez;->zzal(I)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzcp()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfc;->zzab(I)V

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcp()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzcq()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfc;->zzab(I)V

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcq()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzcr()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfc;->zzab(I)V

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcr()I

    move-result v0

    return v0
.end method

.method public final zzcs()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 37
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfc;->zzab(I)V

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcs()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzct()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 39
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfc;->zzab(I)V

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzct()I

    move-result v0

    return v0
.end method

.method public final zzcu()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfc;->zzab(I)V

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcu()Z

    move-result v0

    return v0
.end method

.method public final zzcv()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 45
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfc;->zzab(I)V

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcv()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzcw()Lcom/google/android/gms/internal/vision/zzeo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 81
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfc;->zzab(I)V

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcw()Lcom/google/android/gms/internal/vision/zzeo;

    move-result-object v0

    return-object v0
.end method

.method public final zzcx()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfc;->zzab(I)V

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcx()I

    move-result v0

    return v0
.end method

.method public final zzcy()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfc;->zzab(I)V

    .line 86
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcy()I

    move-result v0

    return v0
.end method

.method public final zzcz()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 87
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfc;->zzab(I)V

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcz()I

    move-result v0

    return v0
.end method

.method public final zzd(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzgt;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 210
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/vision/zzgt;

    .line 211
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 214
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzcx()I

    move-result p1

    .line 215
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzez;->zzds()I

    move-result v1

    add-int/2addr v1, p1

    .line 216
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzcq()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/vision/zzgt;->zzp(J)V

    .line 217
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzds()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 218
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzfc;->zzae(I)V

    return-void

    .line 228
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfm()Lcom/google/android/gms/internal/vision/zzgg;

    move-result-object p1

    throw p1

    .line 220
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzcq()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/vision/zzgt;->zzp(J)V

    .line 221
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzcm()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 223
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzdq()I

    move-result p1

    .line 224
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    if-eq p1, v1, :cond_2

    .line 225
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsq:I

    return-void

    .line 229
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 232
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcx()I

    move-result v0

    .line 233
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzez;->zzds()I

    move-result v1

    add-int/2addr v1, v0

    .line 234
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcq()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzds()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 236
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzfc;->zzae(I)V

    return-void

    .line 246
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfm()Lcom/google/android/gms/internal/vision/zzgg;

    move-result-object p1

    throw p1

    .line 238
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcq()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcm()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 241
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzdq()I

    move-result v0

    .line 242
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    if-eq v0, v1, :cond_7

    .line 243
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsq:I

    return-void
.end method

.method public final zzda()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 89
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfc;->zzab(I)V

    .line 90
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzda()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzdb()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfc;->zzab(I)V

    .line 92
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzdb()I

    move-result v0

    return v0
.end method

.method public final zzdc()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfc;->zzab(I)V

    .line 94
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzdc()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zze(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzfz;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 248
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/vision/zzfz;

    .line 249
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 252
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzcx()I

    move-result p1

    .line 253
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzez;->zzds()I

    move-result v1

    add-int/2addr v1, p1

    .line 254
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzcr()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzfz;->zzbg(I)V

    .line 255
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzds()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 256
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzfc;->zzae(I)V

    return-void

    .line 266
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfm()Lcom/google/android/gms/internal/vision/zzgg;

    move-result-object p1

    throw p1

    .line 258
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzcr()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzfz;->zzbg(I)V

    .line 259
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzcm()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 261
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzdq()I

    move-result p1

    .line 262
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    if-eq p1, v1, :cond_2

    .line 263
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsq:I

    return-void

    .line 267
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 270
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcx()I

    move-result v0

    .line 271
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzez;->zzds()I

    move-result v1

    add-int/2addr v1, v0

    .line 272
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcr()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzds()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 274
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzfc;->zzae(I)V

    return-void

    .line 284
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfm()Lcom/google/android/gms/internal/vision/zzgg;

    move-result-object p1

    throw p1

    .line 276
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcr()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcm()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 279
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzdq()I

    move-result v0

    .line 280
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    if-eq v0, v1, :cond_7

    .line 281
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsq:I

    return-void
.end method

.method public final zzf(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzgt;

    if-eqz v0, :cond_3

    .line 286
    check-cast p1, Lcom/google/android/gms/internal/vision/zzgt;

    .line 287
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_0

    .line 304
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfm()Lcom/google/android/gms/internal/vision/zzgg;

    move-result-object p1

    throw p1

    .line 290
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcx()I

    move-result v0

    .line 291
    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzfc;->zzac(I)V

    .line 292
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzez;->zzds()I

    move-result v1

    add-int/2addr v1, v0

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcs()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzgt;->zzp(J)V

    .line 294
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzds()I

    move-result v0

    if-lt v0, v1, :cond_0

    return-void

    .line 296
    :cond_1
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcs()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzgt;->zzp(J)V

    .line 297
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcm()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 299
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzdq()I

    move-result v0

    .line 300
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    if-eq v0, v1, :cond_1

    .line 301
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsq:I

    return-void

    .line 305
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_1

    .line 322
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfm()Lcom/google/android/gms/internal/vision/zzgg;

    move-result-object p1

    throw p1

    .line 308
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcx()I

    move-result v0

    .line 309
    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzfc;->zzac(I)V

    .line 310
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzez;->zzds()I

    move-result v1

    add-int/2addr v1, v0

    .line 311
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcs()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzds()I

    move-result v0

    if-lt v0, v1, :cond_4

    return-void

    .line 314
    :cond_5
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcs()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcm()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    .line 317
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzdq()I

    move-result v0

    .line 318
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    if-eq v0, v1, :cond_5

    .line 319
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsq:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final zzg(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzfz;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    .line 324
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/vision/zzfz;

    .line 325
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    .line 334
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzct()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzfz;->zzbg(I)V

    .line 335
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzcm()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 337
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzdq()I

    move-result p1

    .line 338
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    if-eq p1, v1, :cond_0

    .line 339
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsq:I

    return-void

    .line 342
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfm()Lcom/google/android/gms/internal/vision/zzgg;

    move-result-object p1

    throw p1

    .line 328
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzcx()I

    move-result p1

    .line 329
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzfc;->zzad(I)V

    .line 330
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzez;->zzds()I

    move-result v1

    add-int v3, v1, p1

    .line 331
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzct()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzfz;->zzbg(I)V

    .line 332
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzds()I

    move-result p1

    if-lt p1, v3, :cond_4

    return-void

    .line 343
    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    .line 352
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzct()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcm()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 355
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzdq()I

    move-result v0

    .line 356
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    if-eq v0, v1, :cond_6

    .line 357
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsq:I

    return-void

    .line 360
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfm()Lcom/google/android/gms/internal/vision/zzgg;

    move-result-object p1

    throw p1

    .line 346
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcx()I

    move-result v0

    .line 347
    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzfc;->zzad(I)V

    .line 348
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzez;->zzds()I

    move-result v1

    add-int/2addr v1, v0

    .line 349
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzct()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzds()I

    move-result v0

    if-lt v0, v1, :cond_a

    return-void
.end method

.method public final zzh(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 361
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzem;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 362
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/vision/zzem;

    .line 363
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 366
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzcx()I

    move-result p1

    .line 367
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzez;->zzds()I

    move-result v1

    add-int/2addr v1, p1

    .line 368
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzcu()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzem;->addBoolean(Z)V

    .line 369
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzds()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 370
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzfc;->zzae(I)V

    return-void

    .line 380
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfm()Lcom/google/android/gms/internal/vision/zzgg;

    move-result-object p1

    throw p1

    .line 372
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzcu()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzem;->addBoolean(Z)V

    .line 373
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzcm()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 375
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzdq()I

    move-result p1

    .line 376
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    if-eq p1, v1, :cond_2

    .line 377
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsq:I

    return-void

    .line 381
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 384
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcx()I

    move-result v0

    .line 385
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzez;->zzds()I

    move-result v1

    add-int/2addr v1, v0

    .line 386
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcu()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzds()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 388
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzfc;->zzae(I)V

    return-void

    .line 398
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfm()Lcom/google/android/gms/internal/vision/zzgg;

    move-result-object p1

    throw p1

    .line 390
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcu()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcm()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 393
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzdq()I

    move-result v0

    .line 394
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    if-eq v0, v1, :cond_7

    .line 395
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsq:I

    return-void
.end method

.method public final zzi(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 401
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzfc;->zza(Ljava/util/List;Z)V

    return-void
.end method

.method public final zzj(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/vision/zzeo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 451
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 455
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfc;->zzcw()Lcom/google/android/gms/internal/vision/zzeo;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcm()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 458
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzdq()I

    move-result v0

    .line 459
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    if-eq v0, v1, :cond_0

    .line 460
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsq:I

    return-void

    .line 454
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfm()Lcom/google/android/gms/internal/vision/zzgg;

    move-result-object p1

    throw p1
.end method

.method public final zzk(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 463
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzfz;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 464
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/vision/zzfz;

    .line 465
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 468
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzcx()I

    move-result p1

    .line 469
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzez;->zzds()I

    move-result v1

    add-int/2addr v1, p1

    .line 470
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzcx()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzfz;->zzbg(I)V

    .line 471
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzds()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 472
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzfc;->zzae(I)V

    return-void

    .line 482
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfm()Lcom/google/android/gms/internal/vision/zzgg;

    move-result-object p1

    throw p1

    .line 474
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzcx()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzfz;->zzbg(I)V

    .line 475
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzcm()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 477
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzdq()I

    move-result p1

    .line 478
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    if-eq p1, v1, :cond_2

    .line 479
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsq:I

    return-void

    .line 483
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 486
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcx()I

    move-result v0

    .line 487
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzez;->zzds()I

    move-result v1

    add-int/2addr v1, v0

    .line 488
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcx()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzds()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 490
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzfc;->zzae(I)V

    return-void

    .line 500
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfm()Lcom/google/android/gms/internal/vision/zzgg;

    move-result-object p1

    throw p1

    .line 492
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcx()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcm()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 495
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzdq()I

    move-result v0

    .line 496
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    if-eq v0, v1, :cond_7

    .line 497
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsq:I

    return-void
.end method

.method public final zzl(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 501
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzfz;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 502
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/vision/zzfz;

    .line 503
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 506
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzcx()I

    move-result p1

    .line 507
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzez;->zzds()I

    move-result v1

    add-int/2addr v1, p1

    .line 508
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzcy()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzfz;->zzbg(I)V

    .line 509
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzds()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 510
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzfc;->zzae(I)V

    return-void

    .line 520
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfm()Lcom/google/android/gms/internal/vision/zzgg;

    move-result-object p1

    throw p1

    .line 512
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzcy()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzfz;->zzbg(I)V

    .line 513
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzcm()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 515
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzdq()I

    move-result p1

    .line 516
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    if-eq p1, v1, :cond_2

    .line 517
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsq:I

    return-void

    .line 521
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 524
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcx()I

    move-result v0

    .line 525
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzez;->zzds()I

    move-result v1

    add-int/2addr v1, v0

    .line 526
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcy()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzds()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 528
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzfc;->zzae(I)V

    return-void

    .line 538
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfm()Lcom/google/android/gms/internal/vision/zzgg;

    move-result-object p1

    throw p1

    .line 530
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcy()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcm()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 533
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzdq()I

    move-result v0

    .line 534
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    if-eq v0, v1, :cond_7

    .line 535
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsq:I

    return-void
.end method

.method public final zzm(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 539
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzfz;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    .line 540
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/vision/zzfz;

    .line 541
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    .line 550
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzcz()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzfz;->zzbg(I)V

    .line 551
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzcm()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 553
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzdq()I

    move-result p1

    .line 554
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    if-eq p1, v1, :cond_0

    .line 555
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsq:I

    return-void

    .line 558
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfm()Lcom/google/android/gms/internal/vision/zzgg;

    move-result-object p1

    throw p1

    .line 544
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzcx()I

    move-result p1

    .line 545
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzfc;->zzad(I)V

    .line 546
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzez;->zzds()I

    move-result v1

    add-int v3, v1, p1

    .line 547
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzcz()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzfz;->zzbg(I)V

    .line 548
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzds()I

    move-result p1

    if-lt p1, v3, :cond_4

    return-void

    .line 559
    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    .line 568
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcz()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 569
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcm()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 571
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzdq()I

    move-result v0

    .line 572
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    if-eq v0, v1, :cond_6

    .line 573
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsq:I

    return-void

    .line 576
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfm()Lcom/google/android/gms/internal/vision/zzgg;

    move-result-object p1

    throw p1

    .line 562
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcx()I

    move-result v0

    .line 563
    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzfc;->zzad(I)V

    .line 564
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzez;->zzds()I

    move-result v1

    add-int/2addr v1, v0

    .line 565
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcz()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 566
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzds()I

    move-result v0

    if-lt v0, v1, :cond_a

    return-void
.end method

.method public final zzn(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 577
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzgt;

    if-eqz v0, :cond_3

    .line 578
    check-cast p1, Lcom/google/android/gms/internal/vision/zzgt;

    .line 579
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_0

    .line 596
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfm()Lcom/google/android/gms/internal/vision/zzgg;

    move-result-object p1

    throw p1

    .line 582
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcx()I

    move-result v0

    .line 583
    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzfc;->zzac(I)V

    .line 584
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzez;->zzds()I

    move-result v1

    add-int/2addr v1, v0

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzda()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzgt;->zzp(J)V

    .line 586
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzds()I

    move-result v0

    if-lt v0, v1, :cond_0

    return-void

    .line 588
    :cond_1
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzda()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzgt;->zzp(J)V

    .line 589
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcm()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 591
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzdq()I

    move-result v0

    .line 592
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    if-eq v0, v1, :cond_1

    .line 593
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsq:I

    return-void

    .line 597
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_1

    .line 614
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfm()Lcom/google/android/gms/internal/vision/zzgg;

    move-result-object p1

    throw p1

    .line 600
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcx()I

    move-result v0

    .line 601
    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzfc;->zzac(I)V

    .line 602
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzez;->zzds()I

    move-result v1

    add-int/2addr v1, v0

    .line 603
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzda()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 604
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzds()I

    move-result v0

    if-lt v0, v1, :cond_4

    return-void

    .line 606
    :cond_5
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzda()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 607
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcm()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    .line 609
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzdq()I

    move-result v0

    .line 610
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    if-eq v0, v1, :cond_5

    .line 611
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsq:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final zzo(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 615
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzfz;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 616
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/vision/zzfz;

    .line 617
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 620
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzcx()I

    move-result p1

    .line 621
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzez;->zzds()I

    move-result v1

    add-int/2addr v1, p1

    .line 622
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzdb()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzfz;->zzbg(I)V

    .line 623
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzds()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 624
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzfc;->zzae(I)V

    return-void

    .line 634
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfm()Lcom/google/android/gms/internal/vision/zzgg;

    move-result-object p1

    throw p1

    .line 626
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzdb()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzfz;->zzbg(I)V

    .line 627
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzcm()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 629
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzdq()I

    move-result p1

    .line 630
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    if-eq p1, v1, :cond_2

    .line 631
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsq:I

    return-void

    .line 635
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 638
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcx()I

    move-result v0

    .line 639
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzez;->zzds()I

    move-result v1

    add-int/2addr v1, v0

    .line 640
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzdb()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 641
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzds()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 642
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzfc;->zzae(I)V

    return-void

    .line 652
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfm()Lcom/google/android/gms/internal/vision/zzgg;

    move-result-object p1

    throw p1

    .line 644
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzdb()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcm()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 647
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzdq()I

    move-result v0

    .line 648
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    if-eq v0, v1, :cond_7

    .line 649
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsq:I

    return-void
.end method

.method public final zzp(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 653
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzgt;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 654
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/vision/zzgt;

    .line 655
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 658
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzcx()I

    move-result p1

    .line 659
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzez;->zzds()I

    move-result v1

    add-int/2addr v1, p1

    .line 660
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzdc()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/vision/zzgt;->zzp(J)V

    .line 661
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzds()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 662
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzfc;->zzae(I)V

    return-void

    .line 672
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfm()Lcom/google/android/gms/internal/vision/zzgg;

    move-result-object p1

    throw p1

    .line 664
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzdc()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/vision/zzgt;->zzp(J)V

    .line 665
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzcm()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 667
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzdq()I

    move-result p1

    .line 668
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    if-eq p1, v1, :cond_2

    .line 669
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsq:I

    return-void

    .line 673
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 676
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcx()I

    move-result v0

    .line 677
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzez;->zzds()I

    move-result v1

    add-int/2addr v1, v0

    .line 678
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzdc()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 679
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzds()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 680
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzfc;->zzae(I)V

    return-void

    .line 690
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfm()Lcom/google/android/gms/internal/vision/zzgg;

    move-result-object p1

    throw p1

    .line 682
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzdc()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 683
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzcm()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 685
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsp:Lcom/google/android/gms/internal/vision/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzez;->zzdq()I

    move-result v0

    .line 686
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfc;->tag:I

    if-eq v0, v1, :cond_7

    .line 687
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfc;->zzsq:I

    return-void
.end method
