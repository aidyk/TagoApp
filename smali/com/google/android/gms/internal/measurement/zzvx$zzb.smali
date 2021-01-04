.class public final Lcom/google/android/gms/internal/measurement/zzvx$zzb;
.super Lcom/google/android/gms/internal/measurement/zzui;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzvx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/gms/internal/measurement/zzvx<",
        "TT;*>;>",
        "Lcom/google/android/gms/internal/measurement/zzui<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final zzbzk:Lcom/google/android/gms/internal/measurement/zzvx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzvx;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzui;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvx$zzb;->zzbzk:Lcom/google/android/gms/internal/measurement/zzvx;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/measurement/zzuz;Lcom/google/android/gms/internal/measurement/zzvk;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzwe;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvx$zzb;->zzbzk:Lcom/google/android/gms/internal/measurement/zzvx;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzvx;->zza(Lcom/google/android/gms/internal/measurement/zzvx;Lcom/google/android/gms/internal/measurement/zzuz;Lcom/google/android/gms/internal/measurement/zzvk;)Lcom/google/android/gms/internal/measurement/zzvx;

    move-result-object p1

    return-object p1
.end method
