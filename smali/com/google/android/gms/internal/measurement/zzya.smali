.class final Lcom/google/android/gms/internal/measurement/zzya;
.super Lcom/google/android/gms/internal/measurement/zzyg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzyg;"
    }
.end annotation


# instance fields
.field private final synthetic zzcdc:Lcom/google/android/gms/internal/measurement/zzxx;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzxx;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzya;->zzcdc:Lcom/google/android/gms/internal/measurement/zzxx;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzyg;-><init>(Lcom/google/android/gms/internal/measurement/zzxx;Lcom/google/android/gms/internal/measurement/zzxy;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzxx;Lcom/google/android/gms/internal/measurement/zzxy;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzya;-><init>(Lcom/google/android/gms/internal/measurement/zzxx;)V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzxz;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzya;->zzcdc:Lcom/google/android/gms/internal/measurement/zzxx;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzxz;-><init>(Lcom/google/android/gms/internal/measurement/zzxx;Lcom/google/android/gms/internal/measurement/zzxy;)V

    return-object v0
.end method
