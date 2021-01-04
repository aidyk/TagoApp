.class final Lcom/google/android/gms/tagmanager/zzfh;
.super Ljava/lang/Object;


# instance fields
.field private zzbga:Lcom/google/android/gms/tagmanager/zzdz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tagmanager/zzdz<",
            "Lcom/google/android/gms/internal/measurement/zzp;",
            ">;"
        }
    .end annotation
.end field

.field private zzbgb:Lcom/google/android/gms/internal/measurement/zzp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tagmanager/zzdz;Lcom/google/android/gms/internal/measurement/zzp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/zzdz<",
            "Lcom/google/android/gms/internal/measurement/zzp;",
            ">;",
            "Lcom/google/android/gms/internal/measurement/zzp;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzfh;->zzbga:Lcom/google/android/gms/tagmanager/zzdz;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzfh;->zzbgb:Lcom/google/android/gms/internal/measurement/zzp;

    return-void
.end method


# virtual methods
.method public final getSize()I
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfh;->zzbga:Lcom/google/android/gms/tagmanager/zzdz;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzdz;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzzr;->zzzo()I

    move-result v0

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzfh;->zzbgb:Lcom/google/android/gms/internal/measurement/zzp;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzfh;->zzbgb:Lcom/google/android/gms/internal/measurement/zzp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzr;->zzzo()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final zzpv()Lcom/google/android/gms/tagmanager/zzdz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tagmanager/zzdz<",
            "Lcom/google/android/gms/internal/measurement/zzp;",
            ">;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfh;->zzbga:Lcom/google/android/gms/tagmanager/zzdz;

    return-object v0
.end method

.method public final zzpw()Lcom/google/android/gms/internal/measurement/zzp;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfh;->zzbgb:Lcom/google/android/gms/internal/measurement/zzp;

    return-object v0
.end method
