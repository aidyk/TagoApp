.class final Lcom/google/android/gms/internal/measurement/zzbd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzxd:Lcom/google/android/gms/internal/measurement/zzcl;

.field private final synthetic zzxe:Lcom/google/android/gms/internal/measurement/zzbc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzbc;Lcom/google/android/gms/internal/measurement/zzcl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzbd;->zzxe:Lcom/google/android/gms/internal/measurement/zzbc;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzbd;->zzxd:Lcom/google/android/gms/internal/measurement/zzcl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbd;->zzxe:Lcom/google/android/gms/internal/measurement/zzbc;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzbc;->zzxa:Lcom/google/android/gms/internal/measurement/zzba;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzba;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbd;->zzxe:Lcom/google/android/gms/internal/measurement/zzbc;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzbc;->zzxa:Lcom/google/android/gms/internal/measurement/zzba;

    const-string v1, "Connected to service after a timeout"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzat;->zzr(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbd;->zzxe:Lcom/google/android/gms/internal/measurement/zzbc;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzbc;->zzxa:Lcom/google/android/gms/internal/measurement/zzba;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzbd;->zzxd:Lcom/google/android/gms/internal/measurement/zzcl;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzba;->zza(Lcom/google/android/gms/internal/measurement/zzba;Lcom/google/android/gms/internal/measurement/zzcl;)V

    :cond_0
    return-void
.end method
