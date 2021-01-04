.class final Lcom/google/android/gms/internal/measurement/zzar;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzvs:Lcom/google/android/gms/internal/measurement/zzal;

.field private final synthetic zzvx:Lcom/google/android/gms/internal/measurement/zzcd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzal;Lcom/google/android/gms/internal/measurement/zzcd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzar;->zzvs:Lcom/google/android/gms/internal/measurement/zzal;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzar;->zzvx:Lcom/google/android/gms/internal/measurement/zzcd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzar;->zzvs:Lcom/google/android/gms/internal/measurement/zzal;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzal;->zza(Lcom/google/android/gms/internal/measurement/zzal;)Lcom/google/android/gms/internal/measurement/zzbi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzar;->zzvx:Lcom/google/android/gms/internal/measurement/zzcd;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzbi;->zzb(Lcom/google/android/gms/internal/measurement/zzcd;)V

    return-void
.end method
