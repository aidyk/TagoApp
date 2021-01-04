.class public abstract Lcom/google/android/gms/flags/Flag;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/flags/Flag$StringFlag;,
        Lcom/google/android/gms/flags/Flag$LongFlag;,
        Lcom/google/android/gms/flags/Flag$IntegerFlag;,
        Lcom/google/android/gms/flags/Flag$BooleanFlag;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mKey:Ljava/lang/String;

.field private final zze:I

.field private final zzf:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/flags/Flag;->zze:I

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/flags/Flag;->mKey:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/flags/Flag;->zzf:Ljava/lang/Object;

    .line 5
    invoke-static {}, Lcom/google/android/gms/flags/Singletons;->flagRegistry()Lcom/google/android/gms/flags/FlagRegistry;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/flags/FlagRegistry;->zza(Lcom/google/android/gms/flags/Flag;)V

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/flags/zza;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/flags/Flag;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static define(ILjava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/flags/Flag$BooleanFlag;
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10
    new-instance v0, Lcom/google/android/gms/flags/Flag$BooleanFlag;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/flags/Flag$BooleanFlag;-><init>(ILjava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public static define(ILjava/lang/String;I)Lcom/google/android/gms/flags/Flag$IntegerFlag;
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11
    new-instance v0, Lcom/google/android/gms/flags/Flag$IntegerFlag;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/flags/Flag$IntegerFlag;-><init>(ILjava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static define(ILjava/lang/String;J)Lcom/google/android/gms/flags/Flag$LongFlag;
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12
    new-instance v0, Lcom/google/android/gms/flags/Flag$LongFlag;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/flags/Flag$LongFlag;-><init>(ILjava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method public static define(ILjava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/flags/Flag$StringFlag;
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13
    new-instance v0, Lcom/google/android/gms/flags/Flag$StringFlag;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/flags/Flag$StringFlag;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 9
    invoke-static {}, Lcom/google/android/gms/flags/Singletons;->zzd()Lcom/google/android/gms/flags/zzb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/flags/zzb;->zzb(Lcom/google/android/gms/flags/Flag;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/flags/Flag;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getSource()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 14
    iget v0, p0, Lcom/google/android/gms/flags/Flag;->zze:I

    return v0
.end method

.method protected abstract zza(Lcom/google/android/gms/flags/zzc;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/flags/zzc;",
            ")TT;"
        }
    .end annotation
.end method

.method public final zzb()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/flags/Flag;->zzf:Ljava/lang/Object;

    return-object v0
.end method
