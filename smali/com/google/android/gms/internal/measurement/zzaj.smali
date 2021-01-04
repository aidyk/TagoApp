.class public final Lcom/google/android/gms/internal/measurement/zzaj;
.super Lcom/google/android/gms/analytics/zzi;


# annotations
.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/zzi<",
        "Lcom/google/android/gms/internal/measurement/zzaj;",
        ">;"
    }
.end annotation


# instance fields
.field public mCategory:Ljava/lang/String;

.field public zzvg:Ljava/lang/String;

.field public zzvh:J

.field public zzvi:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/analytics/zzi;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "variableName"

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzaj;->zzvg:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "timeInMillis"

    .line 4
    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzaj;->zzvh:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "category"

    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzaj;->mCategory:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "label"

    .line 6
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzaj;->zzvi:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzaj;->zza(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb(Lcom/google/android/gms/analytics/zzi;)V
    .locals 5

    .line 8
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzaj;

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzaj;->zzvg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzaj;->zzvg:Ljava/lang/String;

    .line 10
    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/zzaj;->zzvg:Ljava/lang/String;

    .line 11
    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzaj;->zzvh:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzaj;->zzvh:J

    .line 12
    iput-wide v0, p1, Lcom/google/android/gms/internal/measurement/zzaj;->zzvh:J

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzaj;->mCategory:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzaj;->mCategory:Ljava/lang/String;

    .line 14
    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/zzaj;->mCategory:Ljava/lang/String;

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzaj;->zzvi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzaj;->zzvi:Ljava/lang/String;

    .line 16
    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/zzaj;->zzvi:Ljava/lang/String;

    :cond_3
    return-void
.end method
