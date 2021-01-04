.class public final Lcom/google/android/gms/internal/vision/zzdo;
.super Lcom/google/android/gms/internal/vision/zzjn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/vision/zzjn<",
        "Lcom/google/android/gms/internal/vision/zzdo;",
        ">;"
    }
.end annotation


# instance fields
.field public zzpc:Ljava/lang/Float;

.field public zzpd:Ljava/lang/Float;

.field public zzpe:Ljava/lang/Float;

.field public zzpf:Ljava/lang/Float;

.field public zzpg:Ljava/lang/Float;

.field public zzph:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzjn;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdo;->zzpc:Ljava/lang/Float;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdo;->zzpd:Ljava/lang/Float;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdo;->zzpe:Ljava/lang/Float;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdo;->zzpf:Ljava/lang/Float;

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdo;->zzpg:Ljava/lang/Float;

    .line 7
    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdo;->zzph:Ljava/lang/Float;

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzdo;->zzadp:I

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

    .line 57
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjk;->zzdq()I

    move-result v0

    if-eqz v0, :cond_7

    const/16 v1, 0xd

    if-eq v0, v1, :cond_6

    const/16 v1, 0x15

    if-eq v0, v1, :cond_5

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_4

    const/16 v1, 0x25

    if-eq v0, v1, :cond_3

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_2

    const/16 v1, 0x35

    if-eq v0, v1, :cond_1

    .line 60
    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzjn;->zza(Lcom/google/android/gms/internal/vision/zzjk;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 83
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjk;->zzdv()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 84
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdo;->zzph:Ljava/lang/Float;

    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjk;->zzdv()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 80
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdo;->zzpg:Ljava/lang/Float;

    goto :goto_0

    .line 75
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjk;->zzdv()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 76
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdo;->zzpf:Ljava/lang/Float;

    goto :goto_0

    .line 71
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjk;->zzdv()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 72
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdo;->zzpe:Ljava/lang/Float;

    goto :goto_0

    .line 67
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjk;->zzdv()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 68
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdo;->zzpd:Ljava/lang/Float;

    goto :goto_0

    .line 63
    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjk;->zzdv()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 64
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzdo;->zzpc:Ljava/lang/Float;

    goto :goto_0

    :cond_7
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/vision/zzjl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdo;->zzpc:Ljava/lang/Float;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdo;->zzpc:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzjl;->zza(IF)V

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdo;->zzpd:Ljava/lang/Float;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdo;->zzpd:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzjl;->zza(IF)V

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdo;->zzpe:Ljava/lang/Float;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdo;->zzpe:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzjl;->zza(IF)V

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdo;->zzpf:Ljava/lang/Float;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdo;->zzpf:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzjl;->zza(IF)V

    .line 18
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdo;->zzpg:Ljava/lang/Float;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdo;->zzpg:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzjl;->zza(IF)V

    .line 20
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdo;->zzph:Ljava/lang/Float;

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    .line 21
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdo;->zzph:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzjl;->zza(IF)V

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
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdo;->zzpc:Ljava/lang/Float;

    const/4 v2, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 26
    iget-object v3, p0, Lcom/google/android/gms/internal/vision/zzdo;->zzpc:Ljava/lang/Float;

    .line 27
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 28
    invoke-static {v1}, Lcom/google/android/gms/internal/vision/zzjl;->zzav(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 30
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdo;->zzpd:Ljava/lang/Float;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 31
    iget-object v3, p0, Lcom/google/android/gms/internal/vision/zzdo;->zzpd:Ljava/lang/Float;

    .line 32
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 33
    invoke-static {v1}, Lcom/google/android/gms/internal/vision/zzjl;->zzav(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 35
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdo;->zzpe:Ljava/lang/Float;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 36
    iget-object v3, p0, Lcom/google/android/gms/internal/vision/zzdo;->zzpe:Ljava/lang/Float;

    .line 37
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 38
    invoke-static {v1}, Lcom/google/android/gms/internal/vision/zzjl;->zzav(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 40
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdo;->zzpf:Ljava/lang/Float;

    if-eqz v1, :cond_3

    .line 41
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdo;->zzpf:Ljava/lang/Float;

    .line 42
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 43
    invoke-static {v2}, Lcom/google/android/gms/internal/vision/zzjl;->zzav(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 45
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdo;->zzpg:Ljava/lang/Float;

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    .line 46
    iget-object v3, p0, Lcom/google/android/gms/internal/vision/zzdo;->zzpg:Ljava/lang/Float;

    .line 47
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 48
    invoke-static {v1}, Lcom/google/android/gms/internal/vision/zzjl;->zzav(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 50
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzdo;->zzph:Ljava/lang/Float;

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    .line 51
    iget-object v3, p0, Lcom/google/android/gms/internal/vision/zzdo;->zzph:Ljava/lang/Float;

    .line 52
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 53
    invoke-static {v1}, Lcom/google/android/gms/internal/vision/zzjl;->zzav(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_5
    return v0
.end method
