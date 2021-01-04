.class public final Lcom/google/android/gms/tagmanager/zzdd;
.super Lcom/google/android/gms/tagmanager/zzbq;


# annotations
.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation

.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation


# static fields
.field private static final ID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/measurement/zza;->zzv:Lcom/google/android/gms/internal/measurement/zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zza;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzdd;->ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/tagmanager/zzdd;->ID:Ljava/lang/String;

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
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    if-nez p1, :cond_0

    .line 6
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzgj;->zzqq()Lcom/google/android/gms/internal/measurement/zzp;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 9
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzgj;->zzqq()Lcom/google/android/gms/internal/measurement/zzp;

    move-result-object p1

    return-object p1

    .line 10
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzgj;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzp;

    move-result-object p1

    return-object p1
.end method

.method public final zznk()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic zzot()Ljava/lang/String;
    .locals 1

    .line 12
    invoke-super {p0}, Lcom/google/android/gms/tagmanager/zzbq;->zzot()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzou()Ljava/util/Set;
    .locals 1

    .line 11
    invoke-super {p0}, Lcom/google/android/gms/tagmanager/zzbq;->zzou()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
