.class final Lcom/google/android/gms/internal/measurement/zzuv;
.super Ljava/lang/Object;


# instance fields
.field private final buffer:[B

.field private final zzbva:Lcom/google/android/gms/internal/measurement/zzve;


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzuv;->buffer:[B

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzuv;->buffer:[B

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzve;->zzj([B)Lcom/google/android/gms/internal/measurement/zzve;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzuv;->zzbva:Lcom/google/android/gms/internal/measurement/zzve;

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/android/gms/internal/measurement/zzuo;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzuv;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final zzuo()Lcom/google/android/gms/internal/measurement/zzun;
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzuv;->zzbva:Lcom/google/android/gms/internal/measurement/zzve;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzve;->zzvq()I

    move-result v0

    if-nez v0, :cond_0

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzux;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzuv;->buffer:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzux;-><init>([B)V

    return-object v0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzup()Lcom/google/android/gms/internal/measurement/zzve;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzuv;->zzbva:Lcom/google/android/gms/internal/measurement/zzve;

    return-object v0
.end method
