.class final Lcom/google/android/gms/internal/measurement/zzbe;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic val$name:Landroid/content/ComponentName;

.field private final synthetic zzxe:Lcom/google/android/gms/internal/measurement/zzbc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzbc;Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzbe;->zzxe:Lcom/google/android/gms/internal/measurement/zzbc;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzbe;->val$name:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbe;->zzxe:Lcom/google/android/gms/internal/measurement/zzbc;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzbc;->zzxa:Lcom/google/android/gms/internal/measurement/zzba;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzbe;->val$name:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzba;->zza(Lcom/google/android/gms/internal/measurement/zzba;Landroid/content/ComponentName;)V

    return-void
.end method
