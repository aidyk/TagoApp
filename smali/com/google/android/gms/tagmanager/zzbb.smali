.class public final Lcom/google/android/gms/tagmanager/zzbb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzbx;


# static fields
.field private static final zzazo:Ljava/lang/Object;

.field private static zzbcf:Lcom/google/android/gms/tagmanager/zzbb;


# instance fields
.field private zzbas:Lcom/google/android/gms/tagmanager/zzej;

.field private zzbcg:Lcom/google/android/gms/tagmanager/zzby;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzbb;->zzazo:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzbz;->zzv(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/zzbz;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/tagmanager/zzfl;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzfl;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/tagmanager/zzbb;-><init>(Lcom/google/android/gms/tagmanager/zzby;Lcom/google/android/gms/tagmanager/zzej;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/tagmanager/zzby;Lcom/google/android/gms/tagmanager/zzej;)V
    .locals 0
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzbb;->zzbcg:Lcom/google/android/gms/tagmanager/zzby;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzbb;->zzbas:Lcom/google/android/gms/tagmanager/zzej;

    return-void
.end method

.method public static zzp(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/zzbx;
    .locals 2

    .line 7
    sget-object v0, Lcom/google/android/gms/tagmanager/zzbb;->zzazo:Ljava/lang/Object;

    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/google/android/gms/tagmanager/zzbb;->zzbcf:Lcom/google/android/gms/tagmanager/zzbb;

    if-nez v1, :cond_0

    .line 9
    new-instance v1, Lcom/google/android/gms/tagmanager/zzbb;

    invoke-direct {v1, p0}, Lcom/google/android/gms/tagmanager/zzbb;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/gms/tagmanager/zzbb;->zzbcf:Lcom/google/android/gms/tagmanager/zzbb;

    .line 10
    :cond_0
    sget-object p0, Lcom/google/android/gms/tagmanager/zzbb;->zzbcf:Lcom/google/android/gms/tagmanager/zzbb;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final zzdq(Ljava/lang/String;)Z
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzbb;->zzbas:Lcom/google/android/gms/tagmanager/zzej;

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/zzej;->zzew()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "Too many urls sent too quickly with the TagManagerSender, rate limiting invoked."

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdi;->zzab(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzbb;->zzbcg:Lcom/google/android/gms/tagmanager/zzby;

    invoke-interface {v0, p1}, Lcom/google/android/gms/tagmanager/zzby;->zzdv(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
