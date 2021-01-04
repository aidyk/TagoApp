.class public abstract Lcom/google/android/gms/internal/measurement/zzzr;
.super Ljava/lang/Object;


# instance fields
.field protected volatile zzcgh:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzzr;->zzcgh:I

    return-void
.end method

.method public static final zza(Lcom/google/android/gms/internal/measurement/zzzr;[B)Lcom/google/android/gms/internal/measurement/zzzr;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/measurement/zzzr;",
            ">(TT;[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzzq;
        }
    .end annotation

    .line 18
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/google/android/gms/internal/measurement/zzzr;->zzb(Lcom/google/android/gms/internal/measurement/zzzr;[BII)Lcom/google/android/gms/internal/measurement/zzzr;

    move-result-object p0

    return-object p0
.end method

.method public static final zza(Lcom/google/android/gms/internal/measurement/zzzr;[BII)V
    .locals 0

    const/4 p2, 0x0

    .line 12
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzzj;->zzk([BII)Lcom/google/android/gms/internal/measurement/zzzj;

    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzzr;->zza(Lcom/google/android/gms/internal/measurement/zzzj;)V

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzzh()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 17
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static final zzb(Lcom/google/android/gms/internal/measurement/zzzr;[BII)Lcom/google/android/gms/internal/measurement/zzzr;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/measurement/zzzr;",
            ">(TT;[BII)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzzq;
        }
    .end annotation

    const/4 p2, 0x0

    .line 19
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzzi;->zzj([BII)Lcom/google/android/gms/internal/measurement/zzzi;

    move-result-object p1

    .line 20
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzzr;->zza(Lcom/google/android/gms/internal/measurement/zzzi;)Lcom/google/android/gms/internal/measurement/zzzr;

    .line 21
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzzi;->zzao(I)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzzq; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 25
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 23
    throw p0
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzzr;->zzzi()Lcom/google/android/gms/internal/measurement/zzzr;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 26
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzzs;->zzc(Lcom/google/android/gms/internal/measurement/zzzr;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract zza(Lcom/google/android/gms/internal/measurement/zzzi;)Lcom/google/android/gms/internal/measurement/zzzr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public zza(Lcom/google/android/gms/internal/measurement/zzzj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected zzf()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzwe()I
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzzr;->zzf()I

    move-result v0

    .line 7
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzzr;->zzcgh:I

    return v0
.end method

.method public zzzi()Lcom/google/android/gms/internal/measurement/zzzr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 27
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzzr;

    return-object v0
.end method

.method public final zzzo()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzzr;->zzcgh:I

    if-gez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzzr;->zzwe()I

    .line 5
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzzr;->zzcgh:I

    return v0
.end method
