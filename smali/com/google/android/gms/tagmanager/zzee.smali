.class final Lcom/google/android/gms/tagmanager/zzee;
.super Lcom/google/android/gms/tagmanager/zzbq;


# static fields
.field private static final ID:Ljava/lang/String;

.field private static final zzbej:Lcom/google/android/gms/internal/measurement/zzp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/measurement/zza;->zzy:Lcom/google/android/gms/internal/measurement/zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zza;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzee;->ID:Ljava/lang/String;

    const-string v0, "Android"

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzgj;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzp;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzee;->zzbej:Lcom/google/android/gms/internal/measurement/zzp;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/tagmanager/zzee;->ID:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/zzbq;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zze(Ljava/util/Map;)Lcom/google/android/gms/internal/measurement/zzp;
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
    sget-object p1, Lcom/google/android/gms/tagmanager/zzee;->zzbej:Lcom/google/android/gms/internal/measurement/zzp;

    return-object p1
.end method

.method public final zznk()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
