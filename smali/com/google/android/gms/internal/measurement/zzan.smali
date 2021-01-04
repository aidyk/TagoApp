.class final Lcom/google/android/gms/internal/measurement/zzan;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzvs:Lcom/google/android/gms/internal/measurement/zzal;

.field private final synthetic zzvt:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzal;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzan;->zzvs:Lcom/google/android/gms/internal/measurement/zzal;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/measurement/zzan;->zzvt:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzan;->zzvs:Lcom/google/android/gms/internal/measurement/zzal;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzal;->zza(Lcom/google/android/gms/internal/measurement/zzal;)Lcom/google/android/gms/internal/measurement/zzbi;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbi;->zzdm()V

    return-void
.end method
