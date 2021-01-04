.class public final Lcom/google/android/gms/common/util/CrashUtils;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field private static final zzgf:[Ljava/lang/String;

.field private static zzgg:Landroid/os/DropBoxManager;

.field private static zzgh:Z

.field private static zzgi:I

.field private static zzgj:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "CrashUtils.class"
    .end annotation
.end field

.field private static zzgk:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "CrashUtils.class"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x5

    .line 9
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android."

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "com.android."

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "dalvik."

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "java."

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string v1, "javax."

    const/4 v3, 0x4

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gms/common/util/CrashUtils;->zzgf:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 10
    sput-object v0, Lcom/google/android/gms/common/util/CrashUtils;->zzgg:Landroid/os/DropBoxManager;

    .line 11
    sput-boolean v2, Lcom/google/android/gms/common/util/CrashUtils;->zzgh:Z

    const/4 v0, -0x1

    .line 12
    sput v0, Lcom/google/android/gms/common/util/CrashUtils;->zzgi:I

    .line 13
    sput v2, Lcom/google/android/gms/common/util/CrashUtils;->zzgj:I

    .line 14
    sput v2, Lcom/google/android/gms/common/util/CrashUtils;->zzgk:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDynamiteErrorToDropBox(Landroid/content/Context;Ljava/lang/Throwable;)Z
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    const/high16 v0, 0x20000000

    .line 2
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/util/CrashUtils;->zza(Landroid/content/Context;Ljava/lang/Throwable;I)Z

    move-result p0

    return p0
.end method

.method private static zza(Landroid/content/Context;Ljava/lang/Throwable;I)Z
    .locals 1

    const/4 p2, 0x0

    .line 3
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    :catch_0
    move-exception p0

    const-string p1, "CrashUtils"

    const-string v0, "Error adding exception to DropBox!"

    .line 7
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p2
.end method
