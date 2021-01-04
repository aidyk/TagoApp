.class public final Lcom/google/android/gms/internal/measurement/zzse;
.super Ljava/lang/Object;


# static fields
.field private static final zzbqw:Ljava/lang/Integer;

.field private static final zzbqx:Ljava/lang/Integer;


# instance fields
.field private final zzaea:Ljava/util/concurrent/ExecutorService;

.field private final zzri:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzse;->zzbqw:Ljava/lang/Integer;

    const/4 v0, 0x1

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzse;->zzbqx:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzse;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzse;->zzri:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzse;->zzaea:Ljava/util/concurrent/ExecutorService;

    return-void
.end method
