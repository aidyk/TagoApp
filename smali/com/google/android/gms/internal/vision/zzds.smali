.class public final Lcom/google/android/gms/internal/vision/zzds;
.super Lcom/google/android/gms/internal/vision/zzjn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/vision/zzjn<",
        "Lcom/google/android/gms/internal/vision/zzds;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzpu:[Lcom/google/android/gms/internal/vision/zzds;


# instance fields
.field public zzpv:Ljava/lang/Integer;

.field public zzpw:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzjn;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzds;->zzpv:Ljava/lang/Integer;

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzds;->zzpw:Ljava/lang/Integer;

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzds;->zzadp:I

    return-void
.end method

.method public static zzcc()[Lcom/google/android/gms/internal/vision/zzds;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/vision/zzds;->zzpu:[Lcom/google/android/gms/internal/vision/zzds;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/vision/zzjr;->zzado:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/vision/zzds;->zzpu:[Lcom/google/android/gms/internal/vision/zzds;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Lcom/google/android/gms/internal/vision/zzds;

    sput-object v1, Lcom/google/android/gms/internal/vision/zzds;->zzpu:[Lcom/google/android/gms/internal/vision/zzds;

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
    sget-object v0, Lcom/google/android/gms/internal/vision/zzds;->zzpu:[Lcom/google/android/gms/internal/vision/zzds;

    return-object v0
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/vision/zzjk;)Lcom/google/android/gms/internal/vision/zzjt;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjk;->zzdq()I

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    .line 30
    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzjn;->zza(Lcom/google/android/gms/internal/vision/zzjk;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 37
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjk;->zzdt()I

    move-result v0

    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzds;->zzpw:Ljava/lang/Integer;

    goto :goto_0

    .line 33
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjk;->zzdt()I

    move-result v0

    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzds;->zzpv:Ljava/lang/Integer;

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/vision/zzjl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzds;->zzpv:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzds;->zzpv:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzjl;->zze(II)V

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzds;->zzpw:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzds;->zzpw:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzjl;->zze(II)V

    .line 16
    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/vision/zzjn;->zza(Lcom/google/android/gms/internal/vision/zzjl;)V

    return-void
.end method

.method protected final zzt()I
    .locals 3

    .line 18
    invoke-super {p0}, Lcom/google/android/gms/internal/vision/zzjn;->zzt()I

    move-result v0

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzds;->zzpv:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 20
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzds;->zzpv:Ljava/lang/Integer;

    .line 21
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vision/zzjl;->zzi(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 22
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzds;->zzpw:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 23
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzds;->zzpw:Ljava/lang/Integer;

    .line 24
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vision/zzjl;->zzi(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method
