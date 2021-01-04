.class public final enum Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/vision/zzgb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/vision/zzcz$zzd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/vision/zzgb;"
    }
.end annotation


# static fields
.field private static final zzdv:Lcom/google/android/gms/internal/vision/zzgc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/zzgc<",
            "Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private static final enum zzmz:Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;

.field private static final enum zzna:Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;

.field private static final enum zznb:Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;

.field private static final enum zznc:Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;

.field private static final synthetic zznd:[Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 13
    new-instance v0, Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;

    const-string v1, "RESULT_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;->zzmz:Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;

    const-string v1, "RESULT_SUCCESS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;->zzna:Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;

    .line 15
    new-instance v0, Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;

    const-string v1, "RESULT_FAIL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;->zznb:Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;

    const-string v1, "RESULT_SKIPPED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;->zznc:Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;

    const/4 v0, 0x4

    .line 17
    new-array v0, v0, [Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;

    sget-object v1, Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;->zzmz:Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;->zzna:Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;->zznb:Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;->zznc:Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;->zznd:[Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/vision/zzdd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzdd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;->zzdv:Lcom/google/android/gms/internal/vision/zzgc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput p3, p0, Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;->zznd:[Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;

    return-object v0
.end method

.method public static zzah()Lcom/google/android/gms/internal/vision/zzgd;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/vision/zzde;->zzhl:Lcom/google/android/gms/internal/vision/zzgd;

    return-object v0
.end method

.method public static zzt(I)Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 7
    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;->zznc:Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;

    return-object p0

    .line 6
    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;->zznb:Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;

    return-object p0

    .line 5
    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;->zzna:Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;

    return-object p0

    .line 4
    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;->zzmz:Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzcz$zzd$zzb;->value:I

    return v0
.end method
