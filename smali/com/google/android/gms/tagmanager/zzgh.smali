.class abstract Lcom/google/android/gms/tagmanager/zzgh;
.super Lcom/google/android/gms/tagmanager/zzbq;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/tagmanager/zzbq;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public zze(Ljava/util/Map;)Lcom/google/android/gms/internal/measurement/zzp;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/measurement/zzp;",
            ">;)",
            "Lcom/google/android/gms/internal/measurement/zzp;"
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/zzgh;->zzg(Ljava/util/Map;)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzgj;->zzqq()Lcom/google/android/gms/internal/measurement/zzp;

    move-result-object p1

    return-object p1
.end method

.method public abstract zzg(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/measurement/zzp;",
            ">;)V"
        }
    .end annotation
.end method

.method public zznk()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
