.class public abstract Lcom/google/android/gms/internal/vision/zzfy;
.super Lcom/google/android/gms/internal/vision/zzec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/vision/zzfy$zzb;,
        Lcom/google/android/gms/internal/vision/zzfy$zzf;,
        Lcom/google/android/gms/internal/vision/zzfy$zze;,
        Lcom/google/android/gms/internal/vision/zzfy$zzc;,
        Lcom/google/android/gms/internal/vision/zzfy$zzd;,
        Lcom/google/android/gms/internal/vision/zzfy$zza;,
        Lcom/google/android/gms/internal/vision/zzfy$zzg;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/vision/zzfy<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/vision/zzfy$zza<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/vision/zzec<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static zzwl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/vision/zzfy<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected zzwj:Lcom/google/android/gms/internal/vision/zzip;

.field private zzwk:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 203
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzfy;->zzwl:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzec;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzip;->zzhe()Lcom/google/android/gms/internal/vision/zzip;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzwj:Lcom/google/android/gms/internal/vision/zzip;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzwk:I

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/vision/zzfi;)Lcom/google/android/gms/internal/vision/zzfy$zzf;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/google/android/gms/internal/vision/zzfy$zzd<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lcom/google/android/gms/internal/vision/zzfy$zzc<",
            "TMessageType;TBuilderType;>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/vision/zzfi<",
            "TMessageType;TT;>;)",
            "Lcom/google/android/gms/internal/vision/zzfy$zzf<",
            "TMessageType;TT;>;"
        }
    .end annotation

    .line 80
    check-cast p0, Lcom/google/android/gms/internal/vision/zzfy$zzf;

    return-object p0
.end method

.method public static zza(Lcom/google/android/gms/internal/vision/zzhf;Lcom/google/android/gms/internal/vision/zzhf;Lcom/google/android/gms/internal/vision/zzgc;ILcom/google/android/gms/internal/vision/zzjd;ZLjava/lang/Class;)Lcom/google/android/gms/internal/vision/zzfy$zzf;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/android/gms/internal/vision/zzhf;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;",
            "Lcom/google/android/gms/internal/vision/zzhf;",
            "Lcom/google/android/gms/internal/vision/zzgc<",
            "*>;I",
            "Lcom/google/android/gms/internal/vision/zzjd;",
            "Z",
            "Ljava/lang/Class;",
            ")",
            "Lcom/google/android/gms/internal/vision/zzfy$zzf<",
            "TContainingType;TType;>;"
        }
    .end annotation

    .line 69
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 70
    new-instance p2, Lcom/google/android/gms/internal/vision/zzfy$zzf;

    new-instance p3, Lcom/google/android/gms/internal/vision/zzfy$zze;

    const/4 v4, 0x0

    const v5, 0xc0b2142

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/vision/zzfy$zze;-><init>(Lcom/google/android/gms/internal/vision/zzgc;ILcom/google/android/gms/internal/vision/zzjd;ZZ)V

    move-object v0, p2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/vision/zzfy$zzf;-><init>(Lcom/google/android/gms/internal/vision/zzhf;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzhf;Lcom/google/android/gms/internal/vision/zzfy$zze;Ljava/lang/Class;)V

    return-object p2
.end method

.method static zza(Lcom/google/android/gms/internal/vision/zzfy;Lcom/google/android/gms/internal/vision/zzez;Lcom/google/android/gms/internal/vision/zzfk;)Lcom/google/android/gms/internal/vision/zzfy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/vision/zzfy<",
            "TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/vision/zzez;",
            "Lcom/google/android/gms/internal/vision/zzfk;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/vision/zzgf;
        }
    .end annotation

    .line 92
    sget v0, Lcom/google/android/gms/internal/vision/zzfy$zzg;->zzxa:I

    const/4 v1, 0x0

    .line 93
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/vision/zzfy;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 94
    check-cast p0, Lcom/google/android/gms/internal/vision/zzfy;

    .line 95
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhs;->zzgl()Lcom/google/android/gms/internal/vision/zzhs;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/vision/zzhs;->zzs(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v0

    .line 96
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzfc;->zza(Lcom/google/android/gms/internal/vision/zzez;)Lcom/google/android/gms/internal/vision/zzfc;

    move-result-object p1

    .line 97
    invoke-interface {v0, p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzhw;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzhv;Lcom/google/android/gms/internal/vision/zzfk;)V

    .line 99
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhs;->zzgl()Lcom/google/android/gms/internal/vision/zzhs;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/vision/zzhs;->zzs(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/vision/zzhw;->zze(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 106
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/gms/internal/vision/zzgf;

    if-eqz p1, :cond_0

    .line 107
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/vision/zzgf;

    throw p0

    .line 108
    :cond_0
    throw p0

    :catch_1
    move-exception p1

    .line 102
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/gms/internal/vision/zzgf;

    if-eqz p2, :cond_1

    .line 103
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/vision/zzgf;

    throw p0

    .line 104
    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/vision/zzgf;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/vision/zzgf;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/vision/zzgf;->zzg(Lcom/google/android/gms/internal/vision/zzhf;)Lcom/google/android/gms/internal/vision/zzgf;

    move-result-object p0

    throw p0
.end method

.method private static zza(Lcom/google/android/gms/internal/vision/zzfy;[B)Lcom/google/android/gms/internal/vision/zzfy;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/vision/zzfy<",
            "TT;*>;>(TT;[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/vision/zzgf;
        }
    .end annotation

    .line 110
    sget v0, Lcom/google/android/gms/internal/vision/zzfy$zzg;->zzxa:I

    const/4 v1, 0x0

    .line 111
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/vision/zzfy;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 112
    check-cast p0, Lcom/google/android/gms/internal/vision/zzfy;

    .line 113
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhs;->zzgl()Lcom/google/android/gms/internal/vision/zzhs;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/vision/zzhs;->zzs(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v0

    const/4 v3, 0x0

    array-length v4, p1

    new-instance v5, Lcom/google/android/gms/internal/vision/zzei;

    invoke-direct {v5}, Lcom/google/android/gms/internal/vision/zzei;-><init>()V

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/vision/zzhw;->zza(Ljava/lang/Object;[BIILcom/google/android/gms/internal/vision/zzei;)V

    .line 115
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhs;->zzgl()Lcom/google/android/gms/internal/vision/zzhs;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/vision/zzhs;->zzs(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/vision/zzhw;->zze(Ljava/lang/Object;)V

    .line 116
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzri:I

    if-nez p1, :cond_0

    return-object p0

    .line 117
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :catch_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgf;->zzfh()Lcom/google/android/gms/internal/vision/zzgf;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/vision/zzgf;->zzg(Lcom/google/android/gms/internal/vision/zzhf;)Lcom/google/android/gms/internal/vision/zzgf;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p1

    .line 120
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/internal/vision/zzgf;

    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/vision/zzgf;

    throw p0

    .line 122
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/vision/zzgf;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/vision/zzgf;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/vision/zzgf;->zzg(Lcom/google/android/gms/internal/vision/zzhf;)Lcom/google/android/gms/internal/vision/zzgf;

    move-result-object p0

    throw p0
.end method

.method private static zza(Lcom/google/android/gms/internal/vision/zzfy;[BLcom/google/android/gms/internal/vision/zzfk;)Lcom/google/android/gms/internal/vision/zzfy;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/vision/zzfy<",
            "TT;*>;>(TT;[B",
            "Lcom/google/android/gms/internal/vision/zzfk;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/vision/zzgf;
        }
    .end annotation

    .line 126
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzez;->zzf([B)Lcom/google/android/gms/internal/vision/zzez;

    move-result-object p1

    .line 127
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzfy;->zza(Lcom/google/android/gms/internal/vision/zzfy;Lcom/google/android/gms/internal/vision/zzez;Lcom/google/android/gms/internal/vision/zzfk;)Lcom/google/android/gms/internal/vision/zzfy;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/vision/zzgf; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p2, 0x0

    .line 128
    :try_start_1
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/vision/zzez;->zzak(I)V
    :try_end_1
    .catch Lcom/google/android/gms/internal/vision/zzgf; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 130
    :try_start_2
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/vision/zzgf;->zzg(Lcom/google/android/gms/internal/vision/zzhf;)Lcom/google/android/gms/internal/vision/zzgf;

    move-result-object p0

    throw p0
    :try_end_2
    .catch Lcom/google/android/gms/internal/vision/zzgf; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    .line 132
    throw p0
.end method

.method protected static zza(Lcom/google/android/gms/internal/vision/zzhf;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 68
    new-instance v0, Lcom/google/android/gms/internal/vision/zzhu;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzhu;-><init>(Lcom/google/android/gms/internal/vision/zzhf;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method static varargs zza(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 71
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 74
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 75
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    .line 77
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    .line 78
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 79
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 76
    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    .line 73
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static zza(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzfy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/vision/zzfy<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 66
    sget-object v0, Lcom/google/android/gms/internal/vision/zzfy;->zzwl:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected static final zza(Lcom/google/android/gms/internal/vision/zzfy;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/vision/zzfy<",
            "TT;*>;>(TT;Z)Z"
        }
    .end annotation

    .line 81
    sget p1, Lcom/google/android/gms/internal/vision/zzfy$zzg;->zzwx:I

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0, p1, v0, v0}, Lcom/google/android/gms/internal/vision/zzfy;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 84
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x0

    return p0

    .line 89
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhs;->zzgl()Lcom/google/android/gms/internal/vision/zzhs;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/vision/zzhs;->zzs(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/vision/zzhw;->zzr(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/vision/zzfi;)Lcom/google/android/gms/internal/vision/zzfy$zzf;
    .locals 0

    .line 202
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzfy;->zza(Lcom/google/android/gms/internal/vision/zzfi;)Lcom/google/android/gms/internal/vision/zzfy$zzf;

    move-result-object p0

    return-object p0
.end method

.method protected static zzb(Lcom/google/android/gms/internal/vision/zzfy;[B)Lcom/google/android/gms/internal/vision/zzfy;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/vision/zzfy<",
            "TT;*>;>(TT;[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/vision/zzgf;
        }
    .end annotation

    .line 133
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/vision/zzfy;->zza(Lcom/google/android/gms/internal/vision/zzfy;[B)Lcom/google/android/gms/internal/vision/zzfy;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 135
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 136
    sget v0, Lcom/google/android/gms/internal/vision/zzfy$zzg;->zzwx:I

    const/4 v1, 0x0

    .line 138
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/vision/zzfy;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 139
    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    .line 144
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhs;->zzgl()Lcom/google/android/gms/internal/vision/zzhs;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/vision/zzhs;->zzs(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/vision/zzhw;->zzr(Ljava/lang/Object;)Z

    move-result v2

    if-eqz p1, :cond_3

    .line 146
    sget p1, Lcom/google/android/gms/internal/vision/zzfy$zzg;->zzwy:I

    if-eqz v2, :cond_2

    move-object v0, p0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 149
    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzfy;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    goto :goto_2

    .line 154
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/vision/zzin;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/vision/zzin;-><init>(Lcom/google/android/gms/internal/vision/zzhf;)V

    .line 155
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzin;->zzhc()Lcom/google/android/gms/internal/vision/zzgf;

    move-result-object p1

    .line 156
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/vision/zzgf;->zzg(Lcom/google/android/gms/internal/vision/zzhf;)Lcom/google/android/gms/internal/vision/zzgf;

    move-result-object p0

    throw p0

    :cond_5
    :goto_2
    return-object p0
.end method

.method protected static zzb(Lcom/google/android/gms/internal/vision/zzfy;[BLcom/google/android/gms/internal/vision/zzfk;)Lcom/google/android/gms/internal/vision/zzfy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/vision/zzfy<",
            "TT;*>;>(TT;[B",
            "Lcom/google/android/gms/internal/vision/zzfk;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/vision/zzgf;
        }
    .end annotation

    .line 159
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzfy;->zza(Lcom/google/android/gms/internal/vision/zzfy;[BLcom/google/android/gms/internal/vision/zzfk;)Lcom/google/android/gms/internal/vision/zzfy;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 161
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 162
    sget p2, Lcom/google/android/gms/internal/vision/zzfy$zzg;->zzwx:I

    const/4 v0, 0x0

    .line 164
    invoke-virtual {p0, p2, v0, v0}, Lcom/google/android/gms/internal/vision/zzfy;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 165
    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 170
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhs;->zzgl()Lcom/google/android/gms/internal/vision/zzhs;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/vision/zzhs;->zzs(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object p2

    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/vision/zzhw;->zzr(Ljava/lang/Object;)Z

    move-result v1

    if-eqz p1, :cond_3

    .line 172
    sget p1, Lcom/google/android/gms/internal/vision/zzfy$zzg;->zzwy:I

    if-eqz v1, :cond_2

    move-object p2, p0

    goto :goto_0

    :cond_2
    move-object p2, v0

    .line 175
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/vision/zzfy;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    goto :goto_2

    .line 180
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/vision/zzin;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/vision/zzin;-><init>(Lcom/google/android/gms/internal/vision/zzhf;)V

    .line 181
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzin;->zzhc()Lcom/google/android/gms/internal/vision/zzgf;

    move-result-object p1

    .line 182
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/vision/zzgf;->zzg(Lcom/google/android/gms/internal/vision/zzhf;)Lcom/google/android/gms/internal/vision/zzgf;

    move-result-object p0

    throw p0

    :cond_5
    :goto_2
    return-object p0
.end method

.method static zzd(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/zzfy;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/vision/zzfy<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 49
    sget-object v0, Lcom/google/android/gms/internal/vision/zzfy;->zzwl:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/zzfy;

    if-nez v0, :cond_0

    .line 51
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    sget-object v0, Lcom/google/android/gms/internal/vision/zzfy;->zzwl:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/zzfy;

    goto :goto_0

    :catch_0
    move-exception p0

    .line 54
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 57
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zziu;->zzh(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/zzfy;

    .line 58
    sget v1, Lcom/google/android/gms/internal/vision/zzfy$zzg;->zzxc:I

    const/4 v2, 0x0

    .line 59
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/vision/zzfy;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 60
    check-cast v0, Lcom/google/android/gms/internal/vision/zzfy;

    if-eqz v0, :cond_1

    .line 64
    sget-object v1, Lcom/google/android/gms/internal/vision/zzfy;->zzwl:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 63
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    :goto_1
    return-object v0
.end method

.method protected static zzey()Lcom/google/android/gms/internal/vision/zzge;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/vision/zzge<",
            "TE;>;"
        }
    .end annotation

    .line 91
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzht;->zzgm()Lcom/google/android/gms/internal/vision/zzht;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 12
    :cond_0
    sget v0, Lcom/google/android/gms/internal/vision/zzfy$zzg;->zzxc:I

    const/4 v1, 0x0

    .line 13
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/vision/zzfy;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 14
    check-cast v0, Lcom/google/android/gms/internal/vision/zzfy;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 17
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhs;->zzgl()Lcom/google/android/gms/internal/vision/zzhs;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/vision/zzhs;->zzs(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/vision/zzfy;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/vision/zzhw;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzri:I

    if-eqz v0, :cond_0

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzri:I

    return v0

    .line 7
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhs;->zzgl()Lcom/google/android/gms/internal/vision/zzhs;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/vision/zzhs;->zzs(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/vision/zzhw;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzri:I

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzri:I

    return v0
.end method

.method public final isInitialized()Z
    .locals 4

    .line 18
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 19
    sget v1, Lcom/google/android/gms/internal/vision/zzfy$zzg;->zzwx:I

    const/4 v2, 0x0

    .line 21
    invoke-virtual {p0, v1, v2, v2}, Lcom/google/android/gms/internal/vision/zzfy;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 22
    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    return v3

    :cond_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    return v0

    .line 27
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhs;->zzgl()Lcom/google/android/gms/internal/vision/zzhs;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/vision/zzhs;->zzs(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/google/android/gms/internal/vision/zzhw;->zzr(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v0, :cond_3

    .line 29
    sget v0, Lcom/google/android/gms/internal/vision/zzfy$zzg;->zzwy:I

    if-eqz v1, :cond_2

    move-object v3, p0

    goto :goto_0

    :cond_2
    move-object v3, v2

    .line 32
    :goto_0
    invoke-virtual {p0, v0, v3, v2}, Lcom/google/android/gms/internal/vision/zzfy;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 4
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/vision/zzhi;->zza(Lcom/google/android/gms/internal/vision/zzhf;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final zzb(Lcom/google/android/gms/internal/vision/zzfe;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhs;->zzgl()Lcom/google/android/gms/internal/vision/zzhs;

    move-result-object v0

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/vision/zzhs;->zzf(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v0

    .line 42
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzfg;->zza(Lcom/google/android/gms/internal/vision/zzfe;)Lcom/google/android/gms/internal/vision/zzfg;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/vision/zzhw;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzjj;)V

    return-void
.end method

.method final zzcf()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzwk:I

    return v0
.end method

.method public final zzeq()I
    .locals 2

    .line 44
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzwk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 46
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhs;->zzgl()Lcom/google/android/gms/internal/vision/zzhs;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/vision/zzhs;->zzs(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzhw;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/vision/zzhw;->zzp(Ljava/lang/Object;)I

    move-result v0

    .line 47
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzwk:I

    .line 48
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzwk:I

    return v0
.end method

.method public final synthetic zzez()Lcom/google/android/gms/internal/vision/zzhg;
    .locals 2

    .line 186
    sget v0, Lcom/google/android/gms/internal/vision/zzfy$zzg;->zzxb:I

    const/4 v1, 0x0

    .line 187
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/vision/zzfy;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 188
    check-cast v0, Lcom/google/android/gms/internal/vision/zzfy$zza;

    .line 189
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/vision/zzfy$zza;->zza(Lcom/google/android/gms/internal/vision/zzfy;)Lcom/google/android/gms/internal/vision/zzfy$zza;

    return-object v0
.end method

.method public final synthetic zzfa()Lcom/google/android/gms/internal/vision/zzhg;
    .locals 2

    .line 193
    sget v0, Lcom/google/android/gms/internal/vision/zzfy$zzg;->zzxb:I

    const/4 v1, 0x0

    .line 194
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/vision/zzfy;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 195
    check-cast v0, Lcom/google/android/gms/internal/vision/zzfy$zza;

    return-object v0
.end method

.method public final synthetic zzfb()Lcom/google/android/gms/internal/vision/zzhf;
    .locals 2

    .line 198
    sget v0, Lcom/google/android/gms/internal/vision/zzfy$zzg;->zzxc:I

    const/4 v1, 0x0

    .line 199
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/vision/zzfy;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 200
    check-cast v0, Lcom/google/android/gms/internal/vision/zzfy;

    return-object v0
.end method

.method final zzy(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzwk:I

    return-void
.end method
