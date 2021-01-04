.class final synthetic Lcom/google/android/gms/internal/measurement/zzcz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzaca:Lcom/google/android/gms/internal/measurement/zzcx;

.field private final zzacd:Lcom/google/android/gms/internal/measurement/zzcp;

.field private final zzace:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzcx;Lcom/google/android/gms/internal/measurement/zzcp;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzcz;->zzaca:Lcom/google/android/gms/internal/measurement/zzcx;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzcz;->zzacd:Lcom/google/android/gms/internal/measurement/zzcp;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzcz;->zzace:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcz;->zzaca:Lcom/google/android/gms/internal/measurement/zzcx;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzcz;->zzacd:Lcom/google/android/gms/internal/measurement/zzcp;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzcz;->zzace:Landroid/app/job/JobParameters;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzcx;->zza(Lcom/google/android/gms/internal/measurement/zzcp;Landroid/app/job/JobParameters;)V

    return-void
.end method
