.class public final Lcom/google/android/gms/internal/vision/zzdu;
.super Lcom/google/android/gms/internal/vision/zzjn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/vision/zzjn<",
        "Lcom/google/android/gms/internal/vision/zzdu;",
        ">;"
    }
.end annotation


# instance fields
.field private zzqc:Lcom/google/android/gms/internal/vision/zzdl;

.field public zzqd:Lcom/google/android/gms/internal/vision/zzdr;

.field public zzqe:Lcom/google/android/gms/internal/vision/zzdp;

.field private zzqf:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzjn;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdu;->zzqc:Lcom/google/android/gms/internal/vision/zzdl;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdu;->zzqd:Lcom/google/android/gms/internal/vision/zzdr;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdu;->zzqe:Lcom/google/android/gms/internal/vision/zzdp;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdu;->zzqf:Ljava/lang/Integer;

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzdu;->zzadp:I

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

    .line 33
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjk;->zzdq()I

    move-result v0

    if-eqz v0, :cond_8

    const/16 v1, 0xa

    if-eq v0, v1, :cond_6

    const/16 v1, 0x12

    if-eq v0, v1, :cond_4

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    .line 36
    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzjn;->zza(Lcom/google/android/gms/internal/vision/zzjk;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 51
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjk;->zzdt()I

    move-result v0

    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdu;->zzqf:Ljava/lang/Integer;

    goto :goto_0

    .line 46
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdu;->zzqe:Lcom/google/android/gms/internal/vision/zzdp;

    if-nez v0, :cond_3

    .line 47
    new-instance v0, Lcom/google/android/gms/internal/vision/zzdp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzdp;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdu;->zzqe:Lcom/google/android/gms/internal/vision/zzdp;

    .line 48
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdu;->zzqe:Lcom/google/android/gms/internal/vision/zzdp;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzjk;->zza(Lcom/google/android/gms/internal/vision/zzjt;)V

    goto :goto_0

    .line 42
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdu;->zzqd:Lcom/google/android/gms/internal/vision/zzdr;

    if-nez v0, :cond_5

    .line 43
    new-instance v0, Lcom/google/android/gms/internal/vision/zzdr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzdr;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdu;->zzqd:Lcom/google/android/gms/internal/vision/zzdr;

    .line 44
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdu;->zzqd:Lcom/google/android/gms/internal/vision/zzdr;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzjk;->zza(Lcom/google/android/gms/internal/vision/zzjt;)V

    goto :goto_0

    .line 38
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdu;->zzqc:Lcom/google/android/gms/internal/vision/zzdl;

    if-nez v0, :cond_7

    .line 39
    new-instance v0, Lcom/google/android/gms/internal/vision/zzdl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzdl;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdu;->zzqc:Lcom/google/android/gms/internal/vision/zzdl;

    .line 40
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdu;->zzqc:Lcom/google/android/gms/internal/vision/zzdl;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzjk;->zza(Lcom/google/android/gms/internal/vision/zzjt;)V

    goto :goto_0

    :cond_8
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/vision/zzjl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdu;->zzqc:Lcom/google/android/gms/internal/vision/zzdl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdu;->zzqc:Lcom/google/android/gms/internal/vision/zzdl;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzjl;->zza(ILcom/google/android/gms/internal/vision/zzjt;)V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdu;->zzqd:Lcom/google/android/gms/internal/vision/zzdr;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdu;->zzqd:Lcom/google/android/gms/internal/vision/zzdr;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzjl;->zza(ILcom/google/android/gms/internal/vision/zzjt;)V

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdu;->zzqe:Lcom/google/android/gms/internal/vision/zzdp;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdu;->zzqe:Lcom/google/android/gms/internal/vision/zzdp;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzjl;->zza(ILcom/google/android/gms/internal/vision/zzjt;)V

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdu;->zzqf:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdu;->zzqf:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzjl;->zze(II)V

    .line 16
    :cond_3
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/vision/zzjn;->zza(Lcom/google/android/gms/internal/vision/zzjl;)V

    return-void
.end method

.method protected final zzt()I
    .locals 3

    .line 18
    invoke-super {p0}, Lcom/google/android/gms/internal/vision/zzjn;->zzt()I

    move-result v0

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdu;->zzqc:Lcom/google/android/gms/internal/vision/zzdl;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 20
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzdu;->zzqc:Lcom/google/android/gms/internal/vision/zzdl;

    .line 21
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vision/zzjl;->zzb(ILcom/google/android/gms/internal/vision/zzjt;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdu;->zzqd:Lcom/google/android/gms/internal/vision/zzdr;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 23
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzdu;->zzqd:Lcom/google/android/gms/internal/vision/zzdr;

    .line 24
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vision/zzjl;->zzb(ILcom/google/android/gms/internal/vision/zzjt;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdu;->zzqe:Lcom/google/android/gms/internal/vision/zzdp;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 26
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzdu;->zzqe:Lcom/google/android/gms/internal/vision/zzdp;

    .line 27
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vision/zzjl;->zzb(ILcom/google/android/gms/internal/vision/zzjt;)I

    move-result v1

    add-int/2addr v0, v1

    .line 28
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdu;->zzqf:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    .line 29
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzdu;->zzqf:Ljava/lang/Integer;

    .line 30
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vision/zzjl;->zzi(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    return v0
.end method
