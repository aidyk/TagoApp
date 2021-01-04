.class final synthetic Lcom/google/android/gms/internal/measurement/zzcy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzaca:Lcom/google/android/gms/internal/measurement/zzcx;

.field private final zzacb:I

.field private final zzacc:Lcom/google/android/gms/internal/measurement/zzcp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzcx;ILcom/google/android/gms/internal/measurement/zzcp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzcy;->zzaca:Lcom/google/android/gms/internal/measurement/zzcx;

    iput p2, p0, Lcom/google/android/gms/internal/measurement/zzcy;->zzacb:I

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzcy;->zzacc:Lcom/google/android/gms/internal/measurement/zzcp;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcy;->zzaca:Lcom/google/android/gms/internal/measurement/zzcx;

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzcy;->zzacb:I

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzcy;->zzacc:Lcom/google/android/gms/internal/measurement/zzcp;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzcx;->zza(ILcom/google/android/gms/internal/measurement/zzcp;)V

    return-void
.end method
