.class public final enum Lcom/google/android/gms/internal/measurement/zzbn;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/measurement/zzbn;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzxw:Lcom/google/android/gms/internal/measurement/zzbn;

.field private static final enum zzxx:Lcom/google/android/gms/internal/measurement/zzbn;

.field private static final enum zzxy:Lcom/google/android/gms/internal/measurement/zzbn;

.field private static final enum zzxz:Lcom/google/android/gms/internal/measurement/zzbn;

.field public static final enum zzya:Lcom/google/android/gms/internal/measurement/zzbn;

.field private static final enum zzyb:Lcom/google/android/gms/internal/measurement/zzbn;

.field private static final synthetic zzyc:[Lcom/google/android/gms/internal/measurement/zzbn;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbn;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzbn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbn;->zzxw:Lcom/google/android/gms/internal/measurement/zzbn;

    .line 15
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbn;

    const-string v1, "BATCH_BY_SESSION"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/measurement/zzbn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbn;->zzxx:Lcom/google/android/gms/internal/measurement/zzbn;

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbn;

    const-string v1, "BATCH_BY_TIME"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/measurement/zzbn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbn;->zzxy:Lcom/google/android/gms/internal/measurement/zzbn;

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbn;

    const-string v1, "BATCH_BY_BRUTE_FORCE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/internal/measurement/zzbn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbn;->zzxz:Lcom/google/android/gms/internal/measurement/zzbn;

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbn;

    const-string v1, "BATCH_BY_COUNT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/internal/measurement/zzbn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbn;->zzya:Lcom/google/android/gms/internal/measurement/zzbn;

    .line 19
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbn;

    const-string v1, "BATCH_BY_SIZE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/google/android/gms/internal/measurement/zzbn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbn;->zzyb:Lcom/google/android/gms/internal/measurement/zzbn;

    const/4 v0, 0x6

    .line 20
    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/zzbn;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbn;->zzxw:Lcom/google/android/gms/internal/measurement/zzbn;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbn;->zzxx:Lcom/google/android/gms/internal/measurement/zzbn;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbn;->zzxy:Lcom/google/android/gms/internal/measurement/zzbn;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbn;->zzxz:Lcom/google/android/gms/internal/measurement/zzbn;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbn;->zzya:Lcom/google/android/gms/internal/measurement/zzbn;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbn;->zzyb:Lcom/google/android/gms/internal/measurement/zzbn;

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbn;->zzyc:[Lcom/google/android/gms/internal/measurement/zzbn;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/measurement/zzbn;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzbn;->zzyc:[Lcom/google/android/gms/internal/measurement/zzbn;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/measurement/zzbn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/measurement/zzbn;

    return-object v0
.end method

.method public static zzz(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbn;
    .locals 1

    const-string v0, "BATCH_BY_SESSION"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbn;->zzxx:Lcom/google/android/gms/internal/measurement/zzbn;

    return-object p0

    :cond_0
    const-string v0, "BATCH_BY_TIME"

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbn;->zzxy:Lcom/google/android/gms/internal/measurement/zzbn;

    return-object p0

    :cond_1
    const-string v0, "BATCH_BY_BRUTE_FORCE"

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbn;->zzxz:Lcom/google/android/gms/internal/measurement/zzbn;

    return-object p0

    :cond_2
    const-string v0, "BATCH_BY_COUNT"

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbn;->zzya:Lcom/google/android/gms/internal/measurement/zzbn;

    return-object p0

    :cond_3
    const-string v0, "BATCH_BY_SIZE"

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 12
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbn;->zzyb:Lcom/google/android/gms/internal/measurement/zzbn;

    return-object p0

    .line 13
    :cond_4
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbn;->zzxw:Lcom/google/android/gms/internal/measurement/zzbn;

    return-object p0
.end method
