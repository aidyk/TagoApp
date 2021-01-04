.class public final Lcom/google/android/gms/internal/measurement/zzru;
.super Ljava/lang/Object;


# instance fields
.field private zzbbh:Ljava/lang/String;

.field private zzbof:Ljava/util/Map;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbog:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbqp:Lcom/google/android/gms/internal/measurement/zzse;

.field private final zzri:Landroid/content/Context;

.field private final zzrz:Lcom/google/android/gms/common/util/Clock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzse;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/measurement/zzse;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    .line 3
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzru;-><init>(Landroid/content/Context;Ljava/util/Map;Lcom/google/android/gms/internal/measurement/zzse;Lcom/google/android/gms/common/util/Clock;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/Map;Lcom/google/android/gms/internal/measurement/zzse;Lcom/google/android/gms/common/util/Clock;)V
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/measurement/zzse;",
            "Lcom/google/android/gms/common/util/Clock;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzru;->zzbbh:Ljava/lang/String;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzru;->zzbof:Ljava/util/Map;

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzru;->zzri:Landroid/content/Context;

    .line 9
    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/zzru;->zzrz:Lcom/google/android/gms/common/util/Clock;

    .line 10
    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzru;->zzbqp:Lcom/google/android/gms/internal/measurement/zzse;

    .line 11
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzru;->zzbog:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final zzfj(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzru;->zzbbh:Ljava/lang/String;

    return-void
.end method
