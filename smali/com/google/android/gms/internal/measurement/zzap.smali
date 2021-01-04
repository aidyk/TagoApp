.class final Lcom/google/android/gms/internal/measurement/zzap;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzvs:Lcom/google/android/gms/internal/measurement/zzal;

.field private final synthetic zzvw:Lcom/google/android/gms/internal/measurement/zzck;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzal;Lcom/google/android/gms/internal/measurement/zzck;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzap;->zzvs:Lcom/google/android/gms/internal/measurement/zzal;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzap;->zzvw:Lcom/google/android/gms/internal/measurement/zzck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzap;->zzvs:Lcom/google/android/gms/internal/measurement/zzal;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzal;->zza(Lcom/google/android/gms/internal/measurement/zzal;)Lcom/google/android/gms/internal/measurement/zzbi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzap;->zzvw:Lcom/google/android/gms/internal/measurement/zzck;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzbi;->zza(Lcom/google/android/gms/internal/measurement/zzck;)V

    return-void
.end method
