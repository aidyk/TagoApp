.class public Lcom/google/android/gms/internal/measurement/zzvk;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzvk$zza;
    }
.end annotation


# static fields
.field private static volatile zzbwe:Z = false

.field private static final zzbwf:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static volatile zzbwg:Lcom/google/android/gms/internal/measurement/zzvk;

.field static final zzbwh:Lcom/google/android/gms/internal/measurement/zzvk;


# instance fields
.field private final zzbwi:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/measurement/zzvk$zza;",
            "Lcom/google/android/gms/internal/measurement/zzvx$zzd<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvk;->zzvx()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzvk;->zzbwf:Ljava/lang/Class;

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzvk;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzvk;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzvk;->zzbwh:Lcom/google/android/gms/internal/measurement/zzvk;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvk;->zzbwi:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvk;->zzbwi:Ljava/util/Map;

    return-void
.end method

.method static zzvw()Lcom/google/android/gms/internal/measurement/zzvk;
    .locals 1

    .line 13
    const-class v0, Lcom/google/android/gms/internal/measurement/zzvk;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzvv;->zzd(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzvk;

    move-result-object v0

    return-object v0
.end method

.method private static zzvx()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.google.protobuf.Extension"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static zzvy()Lcom/google/android/gms/internal/measurement/zzvk;
    .locals 1

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvj;->zzvv()Lcom/google/android/gms/internal/measurement/zzvk;

    move-result-object v0

    return-object v0
.end method

.method public static zzvz()Lcom/google/android/gms/internal/measurement/zzvk;
    .locals 2

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzvk;->zzbwg:Lcom/google/android/gms/internal/measurement/zzvk;

    if-nez v0, :cond_1

    .line 7
    const-class v1, Lcom/google/android/gms/internal/measurement/zzvk;

    monitor-enter v1

    .line 8
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzvk;->zzbwg:Lcom/google/android/gms/internal/measurement/zzvk;

    if-nez v0, :cond_0

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvj;->zzvw()Lcom/google/android/gms/internal/measurement/zzvk;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzvk;->zzbwg:Lcom/google/android/gms/internal/measurement/zzvk;

    .line 11
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/measurement/zzxe;I)Lcom/google/android/gms/internal/measurement/zzvx$zzd;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/android/gms/internal/measurement/zzxe;",
            ">(TContainingType;I)",
            "Lcom/google/android/gms/internal/measurement/zzvx$zzd<",
            "TContainingType;*>;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvk;->zzbwi:Ljava/util/Map;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzvk$zza;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/measurement/zzvk$zza;-><init>(Ljava/lang/Object;I)V

    .line 15
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzvx$zzd;

    return-object p1
.end method
