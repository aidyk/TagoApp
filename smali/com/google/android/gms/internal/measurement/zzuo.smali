.class final Lcom/google/android/gms/internal/measurement/zzuo;
.super Lcom/google/android/gms/internal/measurement/zzuq;


# instance fields
.field private final limit:I

.field private position:I

.field private final synthetic zzbux:Lcom/google/android/gms/internal/measurement/zzun;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzun;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzuo;->zzbux:Lcom/google/android/gms/internal/measurement/zzun;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzuq;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzuo;->position:I

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzuo;->zzbux:Lcom/google/android/gms/internal/measurement/zzun;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzun;->size()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzuo;->limit:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzuo;->position:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzuo;->limit:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final nextByte()B
    .locals 2

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzuo;->position:I

    .line 6
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzuo;->limit:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 8
    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzuo;->position:I

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzuo;->zzbux:Lcom/google/android/gms/internal/measurement/zzun;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzun;->zzam(I)B

    move-result v0

    return v0

    .line 7
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
