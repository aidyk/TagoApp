.class final Lcom/google/android/gms/tagmanager/zzgl;
.super Lcom/google/android/gms/tagmanager/zzbq;


# static fields
.field private static final ID:Ljava/lang/String;

.field private static final zzbco:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/measurement/zza;->zzas:Lcom/google/android/gms/internal/measurement/zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zza;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzgl;->ID:Ljava/lang/String;

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzb;->zzef:Lcom/google/android/gms/internal/measurement/zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzb;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzgl;->zzbco:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/tagmanager/zzgl;->ID:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/tagmanager/zzgl;->zzbco:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/zzbq;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zze(Ljava/util/Map;)Lcom/google/android/gms/internal/measurement/zzp;
    .locals 1
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
    sget-object v0, Lcom/google/android/gms/tagmanager/zzgl;->zzbco:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzp;

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzgj;->zzc(Lcom/google/android/gms/internal/measurement/zzp;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzgj;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzp;

    move-result-object p1

    return-object p1
.end method

.method public final zznk()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
