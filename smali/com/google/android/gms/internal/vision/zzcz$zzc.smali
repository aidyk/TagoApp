.class public final Lcom/google/android/gms/internal/vision/zzcz$zzc;
.super Lcom/google/android/gms/internal/vision/zzfy;

# interfaces
.implements Lcom/google/android/gms/internal/vision/zzhh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/vision/zzcz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/vision/zzcz$zzc$zza;,
        Lcom/google/android/gms/internal/vision/zzcz$zzc$zzb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/vision/zzfy<",
        "Lcom/google/android/gms/internal/vision/zzcz$zzc;",
        "Lcom/google/android/gms/internal/vision/zzcz$zzc$zza;",
        ">;",
        "Lcom/google/android/gms/internal/vision/zzhh;"
    }
.end annotation


# static fields
.field private static volatile zzbf:Lcom/google/android/gms/internal/vision/zzhq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/zzhq<",
            "Lcom/google/android/gms/internal/vision/zzcz$zzc;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzmk:Lcom/google/android/gms/internal/vision/zzcz$zzc;


# instance fields
.field private zzbg:I

.field private zzmd:Ljava/lang/String;

.field private zzme:Z

.field private zzmf:I

.field private zzmg:J

.field private zzmh:J

.field private zzmi:J

.field private zzmj:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/vision/zzcz$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzcz$zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzcz$zzc;->zzmk:Lcom/google/android/gms/internal/vision/zzcz$zzc;

    .line 27
    const-class v0, Lcom/google/android/gms/internal/vision/zzcz$zzc;

    sget-object v1, Lcom/google/android/gms/internal/vision/zzcz$zzc;->zzmk:Lcom/google/android/gms/internal/vision/zzcz$zzc;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/vision/zzfy;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzfy;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfy;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzcz$zzc;->zzmd:Ljava/lang/String;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzcz$zzc;->zzmj:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzbt()Lcom/google/android/gms/internal/vision/zzcz$zzc;
    .locals 1

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/vision/zzcz$zzc;->zzmk:Lcom/google/android/gms/internal/vision/zzcz$zzc;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 5
    sget-object p2, Lcom/google/android/gms/internal/vision/zzda;->zzbc:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 24
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 22
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/vision/zzcz$zzc;->zzbf:Lcom/google/android/gms/internal/vision/zzhq;

    if-nez p1, :cond_1

    .line 15
    const-class p2, Lcom/google/android/gms/internal/vision/zzcz$zzc;

    monitor-enter p2

    .line 16
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/vision/zzcz$zzc;->zzbf:Lcom/google/android/gms/internal/vision/zzhq;

    if-nez p1, :cond_0

    .line 18
    new-instance p1, Lcom/google/android/gms/internal/vision/zzfy$zzb;

    sget-object p3, Lcom/google/android/gms/internal/vision/zzcz$zzc;->zzmk:Lcom/google/android/gms/internal/vision/zzcz$zzc;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/vision/zzfy$zzb;-><init>(Lcom/google/android/gms/internal/vision/zzfy;)V

    .line 19
    sput-object p1, Lcom/google/android/gms/internal/vision/zzcz$zzc;->zzbf:Lcom/google/android/gms/internal/vision/zzhq;

    .line 20
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 12
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/vision/zzcz$zzc;->zzmk:Lcom/google/android/gms/internal/vision/zzcz$zzc;

    return-object p1

    :pswitch_4
    const/16 p1, 0x9

    .line 8
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string/jumbo v0, "zzbg"

    aput-object v0, p1, p2

    const-string/jumbo p2, "zzmd"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string/jumbo p3, "zzme"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string/jumbo p3, "zzmf"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzcz$zzc$zzb;->zzah()Lcom/google/android/gms/internal/vision/zzgd;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string/jumbo p3, "zzmg"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string/jumbo p3, "zzmh"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string/jumbo p3, "zzmi"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string/jumbo p3, "zzmj"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u0008\u0000\u0002\u0007\u0001\u0003\u000c\u0002\u0004\u0002\u0003\u0005\u0002\u0004\u0006\u0002\u0005\u0007\u0008\u0006"

    .line 11
    sget-object p3, Lcom/google/android/gms/internal/vision/zzcz$zzc;->zzmk:Lcom/google/android/gms/internal/vision/zzcz$zzc;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/vision/zzcz$zzc;->zza(Lcom/google/android/gms/internal/vision/zzhf;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/vision/zzcz$zzc$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/vision/zzcz$zzc$zza;-><init>(Lcom/google/android/gms/internal/vision/zzda;)V

    return-object p1

    .line 6
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/vision/zzcz$zzc;

    invoke-direct {p1}, Lcom/google/android/gms/internal/vision/zzcz$zzc;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
