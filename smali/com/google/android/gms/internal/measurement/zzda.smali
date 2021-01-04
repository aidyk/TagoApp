.class final Lcom/google/android/gms/internal/measurement/zzda;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzcd;


# instance fields
.field private final synthetic zzacf:Ljava/lang/Runnable;

.field private final synthetic zzacg:Lcom/google/android/gms/internal/measurement/zzcx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzcx;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzda;->zzacg:Lcom/google/android/gms/internal/measurement/zzcx;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzda;->zzacf:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzda;->zzacg:Lcom/google/android/gms/internal/measurement/zzcx;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzcx;->zza(Lcom/google/android/gms/internal/measurement/zzcx;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzda;->zzacf:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
