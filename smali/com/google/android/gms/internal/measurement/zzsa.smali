.class public final Lcom/google/android/gms/internal/measurement/zzsa;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation


# instance fields
.field private version:Ljava/lang/String;

.field private final zzbpg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzsb;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbph:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzrx;",
            ">;>;"
        }
    .end annotation
.end field

.field private zzph:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzsa;->zzbpg:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzsa;->zzbph:Ljava/util/Map;

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzsa;->version:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzsa;->zzph:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzrw;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzsa;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzag(I)Lcom/google/android/gms/internal/measurement/zzsa;
    .locals 0

    .line 18
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzsa;->zzph:I

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/measurement/zzsb;)Lcom/google/android/gms/internal/measurement/zzsa;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzsa;->zzbpg:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/measurement/zzrx;)Lcom/google/android/gms/internal/measurement/zzsa;
    .locals 3

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzrx;->zzsi()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzb;->zzil:Lcom/google/android/gms/internal/measurement/zzb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzb;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzp;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzgj;->zzc(Lcom/google/android/gms/internal/measurement/zzp;)Ljava/lang/String;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzsa;->zzbph:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzsa;->zzbph:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final zzfk(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzsa;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzsa;->version:Ljava/lang/String;

    return-object p0
.end method

.method public final zztd()Lcom/google/android/gms/internal/measurement/zzrz;
    .locals 7

    .line 20
    new-instance v6, Lcom/google/android/gms/internal/measurement/zzrz;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzsa;->zzbpg:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzsa;->zzbph:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzsa;->version:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/internal/measurement/zzsa;->zzph:I

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzrz;-><init>(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzrw;)V

    return-object v6
.end method
