.class public final Lcom/google/android/gms/internal/vision/zzcz$zzd;
.super Lcom/google/android/gms/internal/vision/zzfy;

# interfaces
.implements Lcom/google/android/gms/internal/vision/zzhh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/vision/zzcz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/vision/zzcz$zzd$zza;,
        Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/vision/zzfy<",
        "Lcom/google/android/gms/internal/vision/zzcz$zzd;",
        "Lcom/google/android/gms/internal/vision/zzcz$zzd$zza;",
        ">;",
        "Lcom/google/android/gms/internal/vision/zzhh;"
    }
.end annotation


# static fields
.field private static volatile zzbf:Lcom/google/android/gms/internal/vision/zzhq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/zzhq<",
            "Lcom/google/android/gms/internal/vision/zzcz$zzd;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzmy:Lcom/google/android/gms/internal/vision/zzcz$zzd;


# instance fields
.field private zzbg:I

.field private zzmq:Ljava/lang/String;

.field private zzmr:Ljava/lang/String;

.field private zzms:Lcom/google/android/gms/internal/vision/zzge;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/zzge<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzmt:I

.field private zzmu:Ljava/lang/String;

.field private zzmv:J

.field private zzmw:J

.field private zzmx:Lcom/google/android/gms/internal/vision/zzge;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/zzge<",
            "Lcom/google/android/gms/internal/vision/zzcz$zzi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/google/android/gms/internal/vision/zzcz$zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzcz$zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzcz$zzd;->zzmy:Lcom/google/android/gms/internal/vision/zzcz$zzd;

    .line 30
    const-class v0, Lcom/google/android/gms/internal/vision/zzcz$zzd;

    sget-object v1, Lcom/google/android/gms/internal/vision/zzcz$zzd;->zzmy:Lcom/google/android/gms/internal/vision/zzcz$zzd;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/vision/zzfy;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzfy;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfy;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzcz$zzd;->zzmq:Ljava/lang/String;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzcz$zzd;->zzmr:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzfy;->zzey()Lcom/google/android/gms/internal/vision/zzge;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzcz$zzd;->zzms:Lcom/google/android/gms/internal/vision/zzge;

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzcz$zzd;->zzmu:Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzcz$zzd;->zzey()Lcom/google/android/gms/internal/vision/zzge;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzcz$zzd;->zzmx:Lcom/google/android/gms/internal/vision/zzge;

    return-void
.end method

.method static synthetic zzbu()Lcom/google/android/gms/internal/vision/zzcz$zzd;
    .locals 1

    .line 28
    sget-object v0, Lcom/google/android/gms/internal/vision/zzcz$zzd;->zzmy:Lcom/google/android/gms/internal/vision/zzcz$zzd;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 8
    sget-object p2, Lcom/google/android/gms/internal/vision/zzda;->zzbc:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 27
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 25
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 16
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/vision/zzcz$zzd;->zzbf:Lcom/google/android/gms/internal/vision/zzhq;

    if-nez p1, :cond_1

    .line 18
    const-class p2, Lcom/google/android/gms/internal/vision/zzcz$zzd;

    monitor-enter p2

    .line 19
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/vision/zzcz$zzd;->zzbf:Lcom/google/android/gms/internal/vision/zzhq;

    if-nez p1, :cond_0

    .line 21
    new-instance p1, Lcom/google/android/gms/internal/vision/zzfy$zzb;

    sget-object p3, Lcom/google/android/gms/internal/vision/zzcz$zzd;->zzmy:Lcom/google/android/gms/internal/vision/zzcz$zzd;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/vision/zzfy$zzb;-><init>(Lcom/google/android/gms/internal/vision/zzfy;)V

    .line 22
    sput-object p1, Lcom/google/android/gms/internal/vision/zzcz$zzd;->zzbf:Lcom/google/android/gms/internal/vision/zzhq;

    .line 23
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

    .line 15
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/vision/zzcz$zzd;->zzmy:Lcom/google/android/gms/internal/vision/zzcz$zzd;

    return-object p1

    :pswitch_4
    const/16 p1, 0xb

    .line 11
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string/jumbo v0, "zzbg"

    aput-object v0, p1, p2

    const-string/jumbo p2, "zzmq"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string/jumbo p3, "zzmr"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string/jumbo p3, "zzms"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string/jumbo p3, "zzmt"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;->zzah()Lcom/google/android/gms/internal/vision/zzgd;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string/jumbo p3, "zzmu"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string/jumbo p3, "zzmv"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string/jumbo p3, "zzmw"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string/jumbo p3, "zzmx"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-class p3, Lcom/google/android/gms/internal/vision/zzcz$zzi;

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0002\u0000\u0001\u0008\u0000\u0002\u0008\u0001\u0003\u001a\u0004\u000c\u0002\u0005\u0008\u0003\u0006\u0002\u0004\u0007\u0002\u0005\u0008\u001b"

    .line 14
    sget-object p3, Lcom/google/android/gms/internal/vision/zzcz$zzd;->zzmy:Lcom/google/android/gms/internal/vision/zzcz$zzd;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/vision/zzcz$zzd;->zza(Lcom/google/android/gms/internal/vision/zzhf;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 10
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/vision/zzcz$zzd$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/vision/zzcz$zzd$zza;-><init>(Lcom/google/android/gms/internal/vision/zzda;)V

    return-object p1

    .line 9
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/vision/zzcz$zzd;

    invoke-direct {p1}, Lcom/google/android/gms/internal/vision/zzcz$zzd;-><init>()V

    return-object p1

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
