.class final Lcom/google/android/gms/internal/measurement/zzax;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private final synthetic zzwp:Lcom/google/android/gms/internal/measurement/zzaw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzaw;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzax;->zzwp:Lcom/google/android/gms/internal/measurement/zzaw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzax;->zzwp:Lcom/google/android/gms/internal/measurement/zzaw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzaw;->zzcn()Lcom/google/android/gms/internal/measurement/zzcp;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "Job execution failed"

    .line 4
    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/measurement/zzat;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
