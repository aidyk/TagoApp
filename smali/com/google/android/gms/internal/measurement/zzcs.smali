.class final Lcom/google/android/gms/internal/measurement/zzcs;
.super Ljava/lang/Object;


# instance fields
.field private zzabo:I

.field private zzabp:Ljava/io/ByteArrayOutputStream;

.field private final synthetic zzabq:Lcom/google/android/gms/internal/measurement/zzcr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzcr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzcs;->zzabq:Lcom/google/android/gms/internal/measurement/zzcr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzcs;->zzabp:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method public final getPayload()[B
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcs;->zzabp:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public final zze(Lcom/google/android/gms/internal/measurement/zzck;)Z
    .locals 5

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcs;->zzabo:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbx;->zzec()I

    move-result v2

    const/4 v3, 0x0

    if-le v0, v2, :cond_0

    return v3

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcs;->zzabq:Lcom/google/android/gms/internal/measurement/zzcr;

    invoke-virtual {v0, p1, v3}, Lcom/google/android/gms/internal/measurement/zzcr;->zza(Lcom/google/android/gms/internal/measurement/zzck;Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcs;->zzabq:Lcom/google/android/gms/internal/measurement/zzcr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzat;->zzby()Lcom/google/android/gms/internal/measurement/zzcp;

    move-result-object v0

    const-string v2, "Error formatting hit"

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzcp;->zza(Lcom/google/android/gms/internal/measurement/zzck;Ljava/lang/String;)V

    return v1

    .line 11
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 12
    array-length v2, v0

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbx;->zzdy()I

    move-result v4

    if-le v2, v4, :cond_2

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcs;->zzabq:Lcom/google/android/gms/internal/measurement/zzcr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzat;->zzby()Lcom/google/android/gms/internal/measurement/zzcp;

    move-result-object v0

    const-string v2, "Hit size exceeds the maximum size limit"

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzcp;->zza(Lcom/google/android/gms/internal/measurement/zzck;Ljava/lang/String;)V

    return v1

    .line 16
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzcs;->zzabp:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    if-lez p1, :cond_3

    add-int/lit8 v2, v2, 0x1

    .line 18
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzcs;->zzabp:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    add-int/2addr p1, v2

    .line 19
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzcf;->zzzv:Lcom/google/android/gms/internal/measurement/zzcg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcg;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le p1, v2, :cond_4

    return v3

    .line 22
    :cond_4
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzcs;->zzabp:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 23
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzcs;->zzabp:Ljava/io/ByteArrayOutputStream;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcr;->zzfd()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 24
    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzcs;->zzabp:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzcs;->zzabo:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzcs;->zzabo:I

    return v1

    :catch_0
    move-exception p1

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcs;->zzabq:Lcom/google/android/gms/internal/measurement/zzcr;

    const-string v2, "Failed to write payload when batching hits"

    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/internal/measurement/zzat;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    return v1
.end method

.method public final zzfe()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcs;->zzabo:I

    return v0
.end method
