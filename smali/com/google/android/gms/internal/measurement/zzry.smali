.class public final Lcom/google/android/gms/internal/measurement/zzry;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation


# instance fields
.field private zzbgb:Lcom/google/android/gms/internal/measurement/zzp;

.field private final zzbpi:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/measurement/zzp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzry;->zzbpi:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzrw;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzry;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzp;)Lcom/google/android/gms/internal/measurement/zzry;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzry;->zzbpi:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final zzm(Lcom/google/android/gms/internal/measurement/zzp;)Lcom/google/android/gms/internal/measurement/zzry;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzry;->zzbgb:Lcom/google/android/gms/internal/measurement/zzp;

    return-object p0
.end method

.method public final zzta()Lcom/google/android/gms/internal/measurement/zzrx;
    .locals 4

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzrx;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzry;->zzbpi:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzry;->zzbgb:Lcom/google/android/gms/internal/measurement/zzp;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzrx;-><init>(Ljava/util/Map;Lcom/google/android/gms/internal/measurement/zzp;Lcom/google/android/gms/internal/measurement/zzrw;)V

    return-object v0
.end method
