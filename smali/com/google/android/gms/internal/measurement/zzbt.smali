.class public final enum Lcom/google/android/gms/internal/measurement/zzbt;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/measurement/zzbt;",
        ">;"
    }
.end annotation


# static fields
.field private static final enum zzyg:Lcom/google/android/gms/internal/measurement/zzbt;

.field public static final enum zzyh:Lcom/google/android/gms/internal/measurement/zzbt;

.field private static final synthetic zzyi:[Lcom/google/android/gms/internal/measurement/zzbt;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbt;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzbt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbt;->zzyg:Lcom/google/android/gms/internal/measurement/zzbt;

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbt;

    const-string v1, "GZIP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/measurement/zzbt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbt;->zzyh:Lcom/google/android/gms/internal/measurement/zzbt;

    const/4 v0, 0x2

    .line 8
    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/zzbt;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbt;->zzyg:Lcom/google/android/gms/internal/measurement/zzbt;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbt;->zzyh:Lcom/google/android/gms/internal/measurement/zzbt;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbt;->zzyi:[Lcom/google/android/gms/internal/measurement/zzbt;

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

.method public static values()[Lcom/google/android/gms/internal/measurement/zzbt;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzbt;->zzyi:[Lcom/google/android/gms/internal/measurement/zzbt;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/measurement/zzbt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/measurement/zzbt;

    return-object v0
.end method

.method public static zzaa(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbt;
    .locals 1

    const-string v0, "GZIP"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbt;->zzyh:Lcom/google/android/gms/internal/measurement/zzbt;

    return-object p0

    .line 5
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbt;->zzyg:Lcom/google/android/gms/internal/measurement/zzbt;

    return-object p0
.end method
