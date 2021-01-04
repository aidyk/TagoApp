.class final Lcom/google/android/gms/internal/measurement/zzaq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzvs:Lcom/google/android/gms/internal/measurement/zzal;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzal;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzaq;->zzvs:Lcom/google/android/gms/internal/measurement/zzal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzaq;->zzvs:Lcom/google/android/gms/internal/measurement/zzal;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzal;->zza(Lcom/google/android/gms/internal/measurement/zzal;)Lcom/google/android/gms/internal/measurement/zzbi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbi;->zzbr()V

    return-void
.end method
