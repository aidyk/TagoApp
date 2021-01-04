.class public final enum Lcom/google/android/gms/internal/vision/zzdy;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/vision/zzgb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/vision/zzdy;",
        ">;",
        "Lcom/google/android/gms/internal/vision/zzgb;"
    }
.end annotation


# static fields
.field private static final zzdv:Lcom/google/android/gms/internal/vision/zzgc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/zzgc<",
            "Lcom/google/android/gms/internal/vision/zzdy;",
            ">;"
        }
    .end annotation
.end field

.field private static final enum zzqv:Lcom/google/android/gms/internal/vision/zzdy;

.field private static final enum zzqw:Lcom/google/android/gms/internal/vision/zzdy;

.field private static final enum zzqx:Lcom/google/android/gms/internal/vision/zzdy;

.field private static final enum zzqy:Lcom/google/android/gms/internal/vision/zzdy;

.field private static final enum zzqz:Lcom/google/android/gms/internal/vision/zzdy;

.field private static final enum zzra:Lcom/google/android/gms/internal/vision/zzdy;

.field private static final enum zzrb:Lcom/google/android/gms/internal/vision/zzdy;

.field private static final enum zzrc:Lcom/google/android/gms/internal/vision/zzdy;

.field private static final enum zzrd:Lcom/google/android/gms/internal/vision/zzdy;

.field private static final enum zzre:Lcom/google/android/gms/internal/vision/zzdy;

.field private static final enum zzrf:Lcom/google/android/gms/internal/vision/zzdy;

.field private static final enum zzrg:Lcom/google/android/gms/internal/vision/zzdy;

.field private static final synthetic zzrh:[Lcom/google/android/gms/internal/vision/zzdy;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 21
    new-instance v0, Lcom/google/android/gms/internal/vision/zzdy;

    const-string v1, "CONTACT_INFO"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/vision/zzdy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzdy;->zzqv:Lcom/google/android/gms/internal/vision/zzdy;

    .line 22
    new-instance v0, Lcom/google/android/gms/internal/vision/zzdy;

    const-string v1, "EMAIL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/google/android/gms/internal/vision/zzdy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzdy;->zzqw:Lcom/google/android/gms/internal/vision/zzdy;

    .line 23
    new-instance v0, Lcom/google/android/gms/internal/vision/zzdy;

    const-string v1, "ISBN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/gms/internal/vision/zzdy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzdy;->zzqx:Lcom/google/android/gms/internal/vision/zzdy;

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/vision/zzdy;

    const-string v1, "PHONE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzdy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzdy;->zzqy:Lcom/google/android/gms/internal/vision/zzdy;

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/vision/zzdy;

    const-string v1, "PRODUCT"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v6, v7}, Lcom/google/android/gms/internal/vision/zzdy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzdy;->zzqz:Lcom/google/android/gms/internal/vision/zzdy;

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/vision/zzdy;

    const-string v1, "SMS"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v7, v8}, Lcom/google/android/gms/internal/vision/zzdy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzdy;->zzra:Lcom/google/android/gms/internal/vision/zzdy;

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/vision/zzdy;

    const-string v1, "TEXT"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v8, v9}, Lcom/google/android/gms/internal/vision/zzdy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzdy;->zzrb:Lcom/google/android/gms/internal/vision/zzdy;

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/vision/zzdy;

    const-string v1, "URL"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v9, v10}, Lcom/google/android/gms/internal/vision/zzdy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzdy;->zzrc:Lcom/google/android/gms/internal/vision/zzdy;

    .line 29
    new-instance v0, Lcom/google/android/gms/internal/vision/zzdy;

    const-string v1, "WIFI"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v10, v11}, Lcom/google/android/gms/internal/vision/zzdy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzdy;->zzrd:Lcom/google/android/gms/internal/vision/zzdy;

    .line 30
    new-instance v0, Lcom/google/android/gms/internal/vision/zzdy;

    const-string v1, "GEO"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v11, v12}, Lcom/google/android/gms/internal/vision/zzdy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzdy;->zzre:Lcom/google/android/gms/internal/vision/zzdy;

    .line 31
    new-instance v0, Lcom/google/android/gms/internal/vision/zzdy;

    const-string v1, "CALENDAR_EVENT"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v12, v13}, Lcom/google/android/gms/internal/vision/zzdy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzdy;->zzrf:Lcom/google/android/gms/internal/vision/zzdy;

    .line 32
    new-instance v0, Lcom/google/android/gms/internal/vision/zzdy;

    const-string v1, "DRIVER_LICENSE"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v13, v14}, Lcom/google/android/gms/internal/vision/zzdy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzdy;->zzrg:Lcom/google/android/gms/internal/vision/zzdy;

    .line 33
    new-array v0, v14, [Lcom/google/android/gms/internal/vision/zzdy;

    sget-object v1, Lcom/google/android/gms/internal/vision/zzdy;->zzqv:Lcom/google/android/gms/internal/vision/zzdy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/vision/zzdy;->zzqw:Lcom/google/android/gms/internal/vision/zzdy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/vision/zzdy;->zzqx:Lcom/google/android/gms/internal/vision/zzdy;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/vision/zzdy;->zzqy:Lcom/google/android/gms/internal/vision/zzdy;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/internal/vision/zzdy;->zzqz:Lcom/google/android/gms/internal/vision/zzdy;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gms/internal/vision/zzdy;->zzra:Lcom/google/android/gms/internal/vision/zzdy;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/gms/internal/vision/zzdy;->zzrb:Lcom/google/android/gms/internal/vision/zzdy;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/android/gms/internal/vision/zzdy;->zzrc:Lcom/google/android/gms/internal/vision/zzdy;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/android/gms/internal/vision/zzdy;->zzrd:Lcom/google/android/gms/internal/vision/zzdy;

    aput-object v1, v0, v10

    sget-object v1, Lcom/google/android/gms/internal/vision/zzdy;->zzre:Lcom/google/android/gms/internal/vision/zzdy;

    aput-object v1, v0, v11

    sget-object v1, Lcom/google/android/gms/internal/vision/zzdy;->zzrf:Lcom/google/android/gms/internal/vision/zzdy;

    aput-object v1, v0, v12

    sget-object v1, Lcom/google/android/gms/internal/vision/zzdy;->zzrg:Lcom/google/android/gms/internal/vision/zzdy;

    aput-object v1, v0, v13

    sput-object v0, Lcom/google/android/gms/internal/vision/zzdy;->zzrh:[Lcom/google/android/gms/internal/vision/zzdy;

    .line 34
    new-instance v0, Lcom/google/android/gms/internal/vision/zzdz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzdz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzdy;->zzdv:Lcom/google/android/gms/internal/vision/zzgc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput p3, p0, Lcom/google/android/gms/internal/vision/zzdy;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/vision/zzdy;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/vision/zzdy;->zzrh:[Lcom/google/android/gms/internal/vision/zzdy;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/vision/zzdy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/vision/zzdy;

    return-object v0
.end method

.method public static zzah()Lcom/google/android/gms/internal/vision/zzgd;
    .locals 1

    .line 17
    sget-object v0, Lcom/google/android/gms/internal/vision/zzea;->zzhl:Lcom/google/android/gms/internal/vision/zzgd;

    return-object v0
.end method

.method public static zzw(I)Lcom/google/android/gms/internal/vision/zzdy;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 15
    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/vision/zzdy;->zzrg:Lcom/google/android/gms/internal/vision/zzdy;

    return-object p0

    .line 14
    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/vision/zzdy;->zzrf:Lcom/google/android/gms/internal/vision/zzdy;

    return-object p0

    .line 13
    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/vision/zzdy;->zzre:Lcom/google/android/gms/internal/vision/zzdy;

    return-object p0

    .line 12
    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/vision/zzdy;->zzrd:Lcom/google/android/gms/internal/vision/zzdy;

    return-object p0

    .line 11
    :pswitch_4
    sget-object p0, Lcom/google/android/gms/internal/vision/zzdy;->zzrc:Lcom/google/android/gms/internal/vision/zzdy;

    return-object p0

    .line 10
    :pswitch_5
    sget-object p0, Lcom/google/android/gms/internal/vision/zzdy;->zzrb:Lcom/google/android/gms/internal/vision/zzdy;

    return-object p0

    .line 9
    :pswitch_6
    sget-object p0, Lcom/google/android/gms/internal/vision/zzdy;->zzra:Lcom/google/android/gms/internal/vision/zzdy;

    return-object p0

    .line 8
    :pswitch_7
    sget-object p0, Lcom/google/android/gms/internal/vision/zzdy;->zzqz:Lcom/google/android/gms/internal/vision/zzdy;

    return-object p0

    .line 7
    :pswitch_8
    sget-object p0, Lcom/google/android/gms/internal/vision/zzdy;->zzqy:Lcom/google/android/gms/internal/vision/zzdy;

    return-object p0

    .line 6
    :pswitch_9
    sget-object p0, Lcom/google/android/gms/internal/vision/zzdy;->zzqx:Lcom/google/android/gms/internal/vision/zzdy;

    return-object p0

    .line 5
    :pswitch_a
    sget-object p0, Lcom/google/android/gms/internal/vision/zzdy;->zzqw:Lcom/google/android/gms/internal/vision/zzdy;

    return-object p0

    .line 4
    :pswitch_b
    sget-object p0, Lcom/google/android/gms/internal/vision/zzdy;->zzqv:Lcom/google/android/gms/internal/vision/zzdy;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final zzr()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzdy;->value:I

    return v0
.end method
