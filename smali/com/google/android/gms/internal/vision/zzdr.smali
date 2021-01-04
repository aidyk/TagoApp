.class public final Lcom/google/android/gms/internal/vision/zzdr;
.super Lcom/google/android/gms/internal/vision/zzjn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/vision/zzjn<",
        "Lcom/google/android/gms/internal/vision/zzdr;",
        ">;"
    }
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public zzon:Ljava/lang/String;

.field public zzpq:Ljava/lang/Long;

.field public zzpr:Lcom/google/android/gms/internal/vision/zzdh;

.field public zzps:Lcom/google/android/gms/internal/vision/zzdn;

.field private zzpt:Lcom/google/android/gms/internal/vision/zzdi;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzjn;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdr;->name:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdr;->zzpq:Ljava/lang/Long;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdr;->zzpr:Lcom/google/android/gms/internal/vision/zzdh;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdr;->zzon:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdr;->zzps:Lcom/google/android/gms/internal/vision/zzdn;

    .line 7
    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdr;->zzpt:Lcom/google/android/gms/internal/vision/zzdi;

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzdr;->zzadp:I

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/vision/zzjk;)Lcom/google/android/gms/internal/vision/zzjt;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjk;->zzdq()I

    move-result v0

    if-eqz v0, :cond_a

    const/16 v1, 0xa

    if-eq v0, v1, :cond_9

    const/16 v1, 0x10

    if-eq v0, v1, :cond_8

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_6

    const/16 v1, 0x32

    if-eq v0, v1, :cond_5

    const/16 v1, 0x82

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8a

    if-eq v0, v1, :cond_1

    .line 48
    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzjn;->zza(Lcom/google/android/gms/internal/vision/zzjk;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdr;->zzpt:Lcom/google/android/gms/internal/vision/zzdi;

    if-nez v0, :cond_2

    .line 67
    new-instance v0, Lcom/google/android/gms/internal/vision/zzdi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzdi;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdr;->zzpt:Lcom/google/android/gms/internal/vision/zzdi;

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdr;->zzpt:Lcom/google/android/gms/internal/vision/zzdi;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzjk;->zza(Lcom/google/android/gms/internal/vision/zzjt;)V

    goto :goto_0

    .line 62
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdr;->zzps:Lcom/google/android/gms/internal/vision/zzdn;

    if-nez v0, :cond_4

    .line 63
    new-instance v0, Lcom/google/android/gms/internal/vision/zzdn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzdn;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdr;->zzps:Lcom/google/android/gms/internal/vision/zzdn;

    .line 64
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdr;->zzps:Lcom/google/android/gms/internal/vision/zzdn;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzjk;->zza(Lcom/google/android/gms/internal/vision/zzjt;)V

    goto :goto_0

    .line 60
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjk;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdr;->zzon:Ljava/lang/String;

    goto :goto_0

    .line 56
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdr;->zzpr:Lcom/google/android/gms/internal/vision/zzdh;

    if-nez v0, :cond_7

    .line 57
    new-instance v0, Lcom/google/android/gms/internal/vision/zzdh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzdh;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdr;->zzpr:Lcom/google/android/gms/internal/vision/zzdh;

    .line 58
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdr;->zzpr:Lcom/google/android/gms/internal/vision/zzdh;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzjk;->zza(Lcom/google/android/gms/internal/vision/zzjt;)V

    goto :goto_0

    .line 53
    :cond_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjk;->zzdu()J

    move-result-wide v0

    .line 54
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdr;->zzpq:Ljava/lang/Long;

    goto :goto_0

    .line 50
    :cond_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjk;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdr;->name:Ljava/lang/String;

    goto :goto_0

    :cond_a
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/vision/zzjl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdr;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdr;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzjl;->zza(ILjava/lang/String;)V

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdr;->zzpq:Ljava/lang/Long;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdr;->zzpq:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/vision/zzjl;->zzi(IJ)V

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdr;->zzpr:Lcom/google/android/gms/internal/vision/zzdh;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdr;->zzpr:Lcom/google/android/gms/internal/vision/zzdh;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzjl;->zza(ILcom/google/android/gms/internal/vision/zzjt;)V

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdr;->zzon:Ljava/lang/String;

    if-eqz v0, :cond_3

    const/4 v0, 0x6

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdr;->zzon:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzjl;->zza(ILjava/lang/String;)V

    .line 18
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdr;->zzps:Lcom/google/android/gms/internal/vision/zzdn;

    if-eqz v0, :cond_4

    const/16 v0, 0x10

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdr;->zzps:Lcom/google/android/gms/internal/vision/zzdn;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzjl;->zza(ILcom/google/android/gms/internal/vision/zzjt;)V

    .line 20
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdr;->zzpt:Lcom/google/android/gms/internal/vision/zzdi;

    if-eqz v0, :cond_5

    const/16 v0, 0x11

    .line 21
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdr;->zzpt:Lcom/google/android/gms/internal/vision/zzdi;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzjl;->zza(ILcom/google/android/gms/internal/vision/zzjt;)V

    .line 22
    :cond_5
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/vision/zzjn;->zza(Lcom/google/android/gms/internal/vision/zzjl;)V

    return-void
.end method

.method protected final zzt()I
    .locals 4

    .line 24
    invoke-super {p0}, Lcom/google/android/gms/internal/vision/zzjn;->zzt()I

    move-result v0

    .line 25
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdr;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 26
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzdr;->name:Ljava/lang/String;

    .line 27
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vision/zzjl;->zzb(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 28
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdr;->zzpq:Ljava/lang/Long;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 29
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzdr;->zzpq:Ljava/lang/Long;

    .line 30
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/vision/zzjl;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 31
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdr;->zzpr:Lcom/google/android/gms/internal/vision/zzdh;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 32
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzdr;->zzpr:Lcom/google/android/gms/internal/vision/zzdh;

    .line 33
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vision/zzjl;->zzb(ILcom/google/android/gms/internal/vision/zzjt;)I

    move-result v1

    add-int/2addr v0, v1

    .line 34
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdr;->zzon:Ljava/lang/String;

    if-eqz v1, :cond_3

    const/4 v1, 0x6

    .line 35
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzdr;->zzon:Ljava/lang/String;

    .line 36
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vision/zzjl;->zzb(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 37
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdr;->zzps:Lcom/google/android/gms/internal/vision/zzdn;

    if-eqz v1, :cond_4

    const/16 v1, 0x10

    .line 38
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzdr;->zzps:Lcom/google/android/gms/internal/vision/zzdn;

    .line 39
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vision/zzjl;->zzb(ILcom/google/android/gms/internal/vision/zzjt;)I

    move-result v1

    add-int/2addr v0, v1

    .line 40
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdr;->zzpt:Lcom/google/android/gms/internal/vision/zzdi;

    if-eqz v1, :cond_5

    const/16 v1, 0x11

    .line 41
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzdr;->zzpt:Lcom/google/android/gms/internal/vision/zzdi;

    .line 42
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vision/zzjl;->zzb(ILcom/google/android/gms/internal/vision/zzjt;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    return v0
.end method
