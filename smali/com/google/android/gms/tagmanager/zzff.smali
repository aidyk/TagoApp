.class final Lcom/google/android/gms/tagmanager/zzff;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzfg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzfb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/measurement/zzsb;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzeq;)V
    .locals 1
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
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzsb;->zzsm()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzsb;->zzsn()Ljava/util/List;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 5
    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/zzeq;->zzpe()Lcom/google/android/gms/tagmanager/zzeo;

    .line 7
    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/zzeq;->zzpf()Lcom/google/android/gms/tagmanager/zzeo;

    return-void
.end method
