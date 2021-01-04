.class public enum Lcom/google/android/gms/internal/measurement/zzzb;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/measurement/zzzb;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzcel:Lcom/google/android/gms/internal/measurement/zzzb;

.field public static final enum zzcem:Lcom/google/android/gms/internal/measurement/zzzb;

.field public static final enum zzcen:Lcom/google/android/gms/internal/measurement/zzzb;

.field public static final enum zzceo:Lcom/google/android/gms/internal/measurement/zzzb;

.field public static final enum zzcep:Lcom/google/android/gms/internal/measurement/zzzb;

.field public static final enum zzceq:Lcom/google/android/gms/internal/measurement/zzzb;

.field public static final enum zzcer:Lcom/google/android/gms/internal/measurement/zzzb;

.field public static final enum zzces:Lcom/google/android/gms/internal/measurement/zzzb;

.field public static final enum zzcet:Lcom/google/android/gms/internal/measurement/zzzb;

.field public static final enum zzceu:Lcom/google/android/gms/internal/measurement/zzzb;

.field public static final enum zzcev:Lcom/google/android/gms/internal/measurement/zzzb;

.field public static final enum zzcew:Lcom/google/android/gms/internal/measurement/zzzb;

.field public static final enum zzcex:Lcom/google/android/gms/internal/measurement/zzzb;

.field public static final enum zzcey:Lcom/google/android/gms/internal/measurement/zzzb;

.field public static final enum zzcez:Lcom/google/android/gms/internal/measurement/zzzb;

.field public static final enum zzcfa:Lcom/google/android/gms/internal/measurement/zzzb;

.field public static final enum zzcfb:Lcom/google/android/gms/internal/measurement/zzzb;

.field public static final enum zzcfc:Lcom/google/android/gms/internal/measurement/zzzb;

.field private static final synthetic zzcff:[Lcom/google/android/gms/internal/measurement/zzzb;


# instance fields
.field private final zzcfd:Lcom/google/android/gms/internal/measurement/zzzg;

.field private final zzcfe:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzzb;

    const-string v1, "DOUBLE"

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzzg;->zzcfj:Lcom/google/android/gms/internal/measurement/zzzg;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/google/android/gms/internal/measurement/zzzb;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzzg;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzzb;->zzcel:Lcom/google/android/gms/internal/measurement/zzzb;

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzzb;

    const-string v1, "FLOAT"

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzzg;->zzcfi:Lcom/google/android/gms/internal/measurement/zzzg;

    const/4 v5, 0x5

    invoke-direct {v0, v1, v3, v2, v5}, Lcom/google/android/gms/internal/measurement/zzzb;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzzg;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzzb;->zzcem:Lcom/google/android/gms/internal/measurement/zzzb;

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzzb;

    const-string v1, "INT64"

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzzg;->zzcfh:Lcom/google/android/gms/internal/measurement/zzzg;

    const/4 v6, 0x2

    invoke-direct {v0, v1, v6, v2, v4}, Lcom/google/android/gms/internal/measurement/zzzb;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzzg;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzzb;->zzcen:Lcom/google/android/gms/internal/measurement/zzzb;

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzzb;

    const-string v1, "UINT64"

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzzg;->zzcfh:Lcom/google/android/gms/internal/measurement/zzzg;

    const/4 v7, 0x3

    invoke-direct {v0, v1, v7, v2, v4}, Lcom/google/android/gms/internal/measurement/zzzb;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzzg;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzzb;->zzceo:Lcom/google/android/gms/internal/measurement/zzzb;

    .line 13
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzzb;

    const-string v1, "INT32"

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzzg;->zzcfg:Lcom/google/android/gms/internal/measurement/zzzg;

    const/4 v8, 0x4

    invoke-direct {v0, v1, v8, v2, v4}, Lcom/google/android/gms/internal/measurement/zzzb;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzzg;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzzb;->zzcep:Lcom/google/android/gms/internal/measurement/zzzb;

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzzb;

    const-string v1, "FIXED64"

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzzg;->zzcfh:Lcom/google/android/gms/internal/measurement/zzzg;

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/google/android/gms/internal/measurement/zzzb;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzzg;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzzb;->zzceq:Lcom/google/android/gms/internal/measurement/zzzb;

    .line 15
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzzb;

    const-string v1, "FIXED32"

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzzg;->zzcfg:Lcom/google/android/gms/internal/measurement/zzzg;

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2, v5}, Lcom/google/android/gms/internal/measurement/zzzb;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzzg;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzzb;->zzcer:Lcom/google/android/gms/internal/measurement/zzzb;

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzzb;

    const-string v1, "BOOL"

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzzg;->zzcfk:Lcom/google/android/gms/internal/measurement/zzzg;

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2, v4}, Lcom/google/android/gms/internal/measurement/zzzb;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzzg;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzzb;->zzces:Lcom/google/android/gms/internal/measurement/zzzb;

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzzc;

    const-string v1, "STRING"

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzzg;->zzcfl:Lcom/google/android/gms/internal/measurement/zzzg;

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v2, v6}, Lcom/google/android/gms/internal/measurement/zzzc;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzzg;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzzb;->zzcet:Lcom/google/android/gms/internal/measurement/zzzb;

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzzd;

    const-string v1, "GROUP"

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzzg;->zzcfo:Lcom/google/android/gms/internal/measurement/zzzg;

    const/16 v12, 0x9

    invoke-direct {v0, v1, v12, v2, v7}, Lcom/google/android/gms/internal/measurement/zzzd;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzzg;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzzb;->zzceu:Lcom/google/android/gms/internal/measurement/zzzb;

    .line 19
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzze;

    const-string v1, "MESSAGE"

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzzg;->zzcfo:Lcom/google/android/gms/internal/measurement/zzzg;

    const/16 v13, 0xa

    invoke-direct {v0, v1, v13, v2, v6}, Lcom/google/android/gms/internal/measurement/zzze;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzzg;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzzb;->zzcev:Lcom/google/android/gms/internal/measurement/zzzb;

    .line 20
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzzf;

    const-string v1, "BYTES"

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzzg;->zzcfm:Lcom/google/android/gms/internal/measurement/zzzg;

    const/16 v14, 0xb

    invoke-direct {v0, v1, v14, v2, v6}, Lcom/google/android/gms/internal/measurement/zzzf;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzzg;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzzb;->zzcew:Lcom/google/android/gms/internal/measurement/zzzb;

    .line 21
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzzb;

    const-string v1, "UINT32"

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzzg;->zzcfg:Lcom/google/android/gms/internal/measurement/zzzg;

    const/16 v15, 0xc

    invoke-direct {v0, v1, v15, v2, v4}, Lcom/google/android/gms/internal/measurement/zzzb;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzzg;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzzb;->zzcex:Lcom/google/android/gms/internal/measurement/zzzb;

    .line 22
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzzb;

    const-string v1, "ENUM"

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzzg;->zzcfn:Lcom/google/android/gms/internal/measurement/zzzg;

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v2, v4}, Lcom/google/android/gms/internal/measurement/zzzb;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzzg;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzzb;->zzcey:Lcom/google/android/gms/internal/measurement/zzzb;

    .line 23
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzzb;

    const-string v1, "SFIXED32"

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzzg;->zzcfg:Lcom/google/android/gms/internal/measurement/zzzg;

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v2, v5}, Lcom/google/android/gms/internal/measurement/zzzb;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzzg;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzzb;->zzcez:Lcom/google/android/gms/internal/measurement/zzzb;

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzzb;

    const-string v1, "SFIXED64"

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzzg;->zzcfh:Lcom/google/android/gms/internal/measurement/zzzg;

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/google/android/gms/internal/measurement/zzzb;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzzg;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzzb;->zzcfa:Lcom/google/android/gms/internal/measurement/zzzb;

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzzb;

    const-string v1, "SINT32"

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzzg;->zzcfg:Lcom/google/android/gms/internal/measurement/zzzg;

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15, v2, v4}, Lcom/google/android/gms/internal/measurement/zzzb;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzzg;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzzb;->zzcfb:Lcom/google/android/gms/internal/measurement/zzzb;

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzzb;

    const-string v1, "SINT64"

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzzg;->zzcfh:Lcom/google/android/gms/internal/measurement/zzzg;

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15, v2, v4}, Lcom/google/android/gms/internal/measurement/zzzb;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzzg;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzzb;->zzcfc:Lcom/google/android/gms/internal/measurement/zzzb;

    const/16 v0, 0x12

    .line 27
    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/zzzb;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzzb;->zzcel:Lcom/google/android/gms/internal/measurement/zzzb;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzzb;->zzcem:Lcom/google/android/gms/internal/measurement/zzzb;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzzb;->zzcen:Lcom/google/android/gms/internal/measurement/zzzb;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzzb;->zzceo:Lcom/google/android/gms/internal/measurement/zzzb;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzzb;->zzcep:Lcom/google/android/gms/internal/measurement/zzzb;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzzb;->zzceq:Lcom/google/android/gms/internal/measurement/zzzb;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzzb;->zzcer:Lcom/google/android/gms/internal/measurement/zzzb;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzzb;->zzces:Lcom/google/android/gms/internal/measurement/zzzb;

    aput-object v1, v0, v10

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzzb;->zzcet:Lcom/google/android/gms/internal/measurement/zzzb;

    aput-object v1, v0, v11

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzzb;->zzceu:Lcom/google/android/gms/internal/measurement/zzzb;

    aput-object v1, v0, v12

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzzb;->zzcev:Lcom/google/android/gms/internal/measurement/zzzb;

    aput-object v1, v0, v13

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzzb;->zzcew:Lcom/google/android/gms/internal/measurement/zzzb;

    aput-object v1, v0, v14

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzzb;->zzcex:Lcom/google/android/gms/internal/measurement/zzzb;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzzb;->zzcey:Lcom/google/android/gms/internal/measurement/zzzb;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzzb;->zzcez:Lcom/google/android/gms/internal/measurement/zzzb;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzzb;->zzcfa:Lcom/google/android/gms/internal/measurement/zzzb;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzzb;->zzcfb:Lcom/google/android/gms/internal/measurement/zzzb;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzzb;->zzcfc:Lcom/google/android/gms/internal/measurement/zzzb;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzzb;->zzcff:[Lcom/google/android/gms/internal/measurement/zzzb;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzzg;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzzg;",
            "I)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzzb;->zzcfd:Lcom/google/android/gms/internal/measurement/zzzg;

    .line 4
    iput p4, p0, Lcom/google/android/gms/internal/measurement/zzzb;->zzcfe:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzzg;ILcom/google/android/gms/internal/measurement/zzza;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zzzb;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzzg;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/measurement/zzzb;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzzb;->zzcff:[Lcom/google/android/gms/internal/measurement/zzzb;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/measurement/zzzb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/measurement/zzzb;

    return-object v0
.end method


# virtual methods
.method public final zzzc()Lcom/google/android/gms/internal/measurement/zzzg;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzb;->zzcfd:Lcom/google/android/gms/internal/measurement/zzzg;

    return-object v0
.end method

.method public final zzzd()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzzb;->zzcfe:I

    return v0
.end method
