.class final Lcom/google/android/gms/internal/measurement/zzam;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzvr:I

.field private final synthetic zzvs:Lcom/google/android/gms/internal/measurement/zzal;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzal;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzam;->zzvs:Lcom/google/android/gms/internal/measurement/zzal;

    iput p2, p0, Lcom/google/android/gms/internal/measurement/zzam;->zzvr:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzam;->zzvs:Lcom/google/android/gms/internal/measurement/zzal;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzal;->zza(Lcom/google/android/gms/internal/measurement/zzal;)Lcom/google/android/gms/internal/measurement/zzbi;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzam;->zzvr:I

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzbi;->zzg(J)V

    return-void
.end method
