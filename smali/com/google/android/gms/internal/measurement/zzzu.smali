.class public final Lcom/google/android/gms/internal/measurement/zzzu;
.super Ljava/lang/Object;


# static fields
.field public static final zzcbs:[I

.field private static final zzcgi:I = 0xb

.field private static final zzcgj:I = 0xc

.field private static final zzcgk:I = 0x10

.field private static final zzcgl:I = 0x1a

.field public static final zzcgm:[J

.field private static final zzcgn:[F

.field private static final zzcgo:[D

.field private static final zzcgp:[Z

.field public static final zzcgq:[Ljava/lang/String;

.field private static final zzcgr:[[B

.field public static final zzcgs:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 17
    new-array v1, v0, [I

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzzu;->zzcbs:[I

    .line 18
    new-array v1, v0, [J

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzzu;->zzcgm:[J

    .line 19
    new-array v1, v0, [F

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzzu;->zzcgn:[F

    .line 20
    new-array v1, v0, [D

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzzu;->zzcgo:[D

    .line 21
    new-array v1, v0, [Z

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzzu;->zzcgp:[Z

    .line 22
    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzzu;->zzcgq:[Ljava/lang/String;

    .line 23
    new-array v1, v0, [[B

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzzu;->zzcgr:[[B

    .line 24
    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzzu;->zzcgs:[B

    return-void
.end method

.method public static final zzb(Lcom/google/android/gms/internal/measurement/zzzi;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzzi;->getPosition()I

    move-result v0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzap(I)Z

    const/4 v1, 0x1

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuq()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzap(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzt(II)V

    return v1
.end method
