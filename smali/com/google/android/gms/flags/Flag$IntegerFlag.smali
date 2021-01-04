.class public Lcom/google/android/gms/flags/Flag$IntegerFlag;
.super Lcom/google/android/gms/flags/Flag;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/flags/Flag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntegerFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/flags/Flag<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/flags/Flag;-><init>(ILjava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/flags/zza;)V

    return-void
.end method

.method private final zzc(Lcom/google/android/gms/flags/zzc;)Ljava/lang/Integer;
    .locals 3

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/flags/Flag;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/flags/Flag;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/flags/Flag;->getSource()I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/flags/zzc;->getIntFlagValue(Ljava/lang/String;II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 5
    :catch_0
    invoke-virtual {p0}, Lcom/google/android/gms/flags/Flag;->zzb()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/flags/zzc;)Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/gms/flags/Flag$IntegerFlag;->zzc(Lcom/google/android/gms/flags/zzc;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
