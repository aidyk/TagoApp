.class final Lcom/google/android/gms/tagmanager/zzfe;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzfg;


# instance fields
.field private final synthetic zzbfw:Ljava/util/Map;

.field private final synthetic zzbfx:Ljava/util/Map;

.field private final synthetic zzbfy:Ljava/util/Map;

.field private final synthetic zzbfz:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzfb;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzfe;->zzbfw:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/zzfe;->zzbfx:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/gms/tagmanager/zzfe;->zzbfy:Ljava/util/Map;

    iput-object p5, p0, Lcom/google/android/gms/tagmanager/zzfe;->zzbfz:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/measurement/zzsb;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzeq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzsb;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/measurement/zzrx;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/measurement/zzrx;",
            ">;",
            "Lcom/google/android/gms/tagmanager/zzeq;",
            ")V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfe;->zzbfw:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzfe;->zzbfx:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 7
    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/zzeq;->zzpc()Lcom/google/android/gms/tagmanager/zzeo;

    .line 8
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/tagmanager/zzfe;->zzbfy:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfe;->zzbfz:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    .line 11
    invoke-interface {p3, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 13
    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/zzeq;->zzpd()Lcom/google/android/gms/tagmanager/zzeo;

    :cond_1
    return-void
.end method
