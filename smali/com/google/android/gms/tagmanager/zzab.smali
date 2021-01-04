.class final Lcom/google/android/gms/tagmanager/zzab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzac;


# instance fields
.field private final synthetic zzbbd:Lcom/google/android/gms/tagmanager/zzy;

.field private zzbbe:Ljava/lang/Long;

.field private final synthetic zzbbf:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzy;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzab;->zzbbd:Lcom/google/android/gms/tagmanager/zzy;

    iput-boolean p2, p0, Lcom/google/android/gms/tagmanager/zzab;->zzbbf:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/tagmanager/Container;)Z
    .locals 7

    .line 2
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzab;->zzbbf:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/Container;->getLastRefreshTime()J

    move-result-wide v3

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzab;->zzbbe:Ljava/lang/Long;

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzab;->zzbbd:Lcom/google/android/gms/tagmanager/zzy;

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzy;->zzc(Lcom/google/android/gms/tagmanager/zzy;)Lcom/google/android/gms/tagmanager/zzai;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzai;->zznz()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzab;->zzbbe:Ljava/lang/Long;

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzab;->zzbbe:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzab;->zzbbd:Lcom/google/android/gms/tagmanager/zzy;

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzy;->zzd(Lcom/google/android/gms/tagmanager/zzy;)Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-ltz p1, :cond_1

    return v2

    :cond_1
    return v1

    .line 9
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/Container;->isDefault()Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v1
.end method
