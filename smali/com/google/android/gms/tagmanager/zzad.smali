.class final Lcom/google/android/gms/tagmanager/zzad;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzdh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tagmanager/zzdh<",
        "Lcom/google/android/gms/internal/measurement/zzrt;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzbbd:Lcom/google/android/gms/tagmanager/zzy;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/tagmanager/zzy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzad;->zzbbd:Lcom/google/android/gms/tagmanager/zzy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/tagmanager/zzy;Lcom/google/android/gms/tagmanager/zzz;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/zzad;-><init>(Lcom/google/android/gms/tagmanager/zzy;)V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzrt;

    .line 7
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzrt;->zzbqo:Lcom/google/android/gms/internal/measurement/zzo;

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzrt;->zzbqo:Lcom/google/android/gms/internal/measurement/zzo;

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzrt;->zzqg:Lcom/google/android/gms/internal/measurement/zzl;

    .line 10
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzo;

    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/zzo;-><init>()V

    .line 11
    iput-object v0, v1, Lcom/google/android/gms/internal/measurement/zzo;->zzqg:Lcom/google/android/gms/internal/measurement/zzl;

    const/4 v2, 0x0

    .line 12
    iput-object v2, v1, Lcom/google/android/gms/internal/measurement/zzo;->zzqf:[Lcom/google/android/gms/internal/measurement/zzn;

    .line 13
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzl;->version:Ljava/lang/String;

    iput-object v0, v1, Lcom/google/android/gms/internal/measurement/zzo;->zzqh:Ljava/lang/String;

    move-object v0, v1

    .line 14
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzad;->zzbbd:Lcom/google/android/gms/tagmanager/zzy;

    iget-wide v2, p1, Lcom/google/android/gms/internal/measurement/zzrt;->zzbqn:J

    const/4 p1, 0x1

    invoke-static {v1, v0, v2, v3, p1}, Lcom/google/android/gms/tagmanager/zzy;->zza(Lcom/google/android/gms/tagmanager/zzy;Lcom/google/android/gms/internal/measurement/zzo;JZ)V

    return-void
.end method

.method public final zznx()V
    .locals 0

    return-void
.end method

.method public final zzt(I)V
    .locals 2

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzad;->zzbbd:Lcom/google/android/gms/tagmanager/zzy;

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzy;->zze(Lcom/google/android/gms/tagmanager/zzy;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzad;->zzbbd:Lcom/google/android/gms/tagmanager/zzy;

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/tagmanager/zzy;->zza(Lcom/google/android/gms/tagmanager/zzy;J)V

    :cond_0
    return-void
.end method
