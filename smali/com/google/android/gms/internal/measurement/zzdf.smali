.class public final Lcom/google/android/gms/internal/measurement/zzdf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzbu;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation


# instance fields
.field public zzaci:Ljava/lang/String;

.field public zzacj:D

.field public zzack:I

.field public zzacl:I

.field public zzacm:I

.field public zzacn:I

.field public zzaco:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 2
    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzdf;->zzacj:D

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzdf;->zzack:I

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzdf;->zzacl:I

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzdf;->zzacm:I

    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzdf;->zzacn:I

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdf;->zzaco:Ljava/util/Map;

    return-void
.end method
