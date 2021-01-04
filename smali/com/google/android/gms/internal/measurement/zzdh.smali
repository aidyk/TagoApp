.class public final Lcom/google/android/gms/internal/measurement/zzdh;
.super Lcom/google/android/gms/internal/measurement/zzau;


# instance fields
.field private zzaaq:Ljava/lang/String;

.field private zzaar:Ljava/lang/String;

.field protected zzaat:I

.field private zzacq:I

.field protected zzacr:Z

.field private zzacs:Z

.field private zzact:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzaw;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzau;-><init>(Lcom/google/android/gms/internal/measurement/zzaw;)V

    return-void
.end method


# virtual methods
.method protected final zzag()V
    .locals 6

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzat;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 7
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PackageManager doesn\'t know about the app package"

    .line 11
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/zzat;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    const-string v0, "Couldn\'t get ApplicationInfo to load global config"

    .line 13
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzat;->zzt(Ljava/lang/String;)V

    return-void

    .line 15
    :cond_0
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_e

    const-string v1, "com.google.android.gms.analytics.globalConfigResource"

    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_e

    .line 19
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzch;

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzat;->zzbw()Lcom/google/android/gms/internal/measurement/zzaw;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/measurement/zzch;-><init>(Lcom/google/android/gms/internal/measurement/zzaw;)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzbv;->zzq(I)Lcom/google/android/gms/internal/measurement/zzbu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcj;

    if-eqz v0, :cond_e

    const-string v1, "Loading global XML config values"

    .line 23
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzat;->zzq(Ljava/lang/String;)V

    .line 25
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzcj;->zzaaq:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    .line 28
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzcj;->zzaaq:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzdh;->zzaaq:Ljava/lang/String;

    const-string v4, "XML config - app name"

    .line 31
    invoke-virtual {p0, v4, v1}, Lcom/google/android/gms/internal/measurement/zzat;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    :cond_2
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzcj;->zzaar:Ljava/lang/String;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_4

    .line 36
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzcj;->zzaar:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzdh;->zzaar:Ljava/lang/String;

    const-string v4, "XML config - app version"

    .line 39
    invoke-virtual {p0, v4, v1}, Lcom/google/android/gms/internal/measurement/zzat;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    :cond_4
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzcj;->zzaas:Ljava/lang/String;

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    const/4 v4, -0x1

    if-eqz v1, :cond_a

    .line 44
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzcj;->zzaas:Ljava/lang/String;

    .line 45
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "verbose"

    .line 46
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v1, 0x0

    goto :goto_4

    :cond_6
    const-string v5, "info"

    .line 48
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v1, 0x1

    goto :goto_4

    :cond_7
    const-string/jumbo v5, "warning"

    .line 50
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v1, 0x2

    goto :goto_4

    :cond_8
    const-string v5, "error"

    .line 52
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x3

    goto :goto_4

    :cond_9
    const/4 v1, -0x1

    :goto_4
    if-ltz v1, :cond_a

    .line 57
    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzdh;->zzacq:I

    const-string v5, "XML config - log level"

    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v5, v1}, Lcom/google/android/gms/internal/measurement/zzat;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    :cond_a
    iget v1, v0, Lcom/google/android/gms/internal/measurement/zzcj;->zzaat:I

    if-ltz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_5

    :cond_b
    const/4 v1, 0x0

    :goto_5
    if-eqz v1, :cond_c

    .line 63
    iget v1, v0, Lcom/google/android/gms/internal/measurement/zzcj;->zzaat:I

    .line 65
    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzdh;->zzaat:I

    .line 66
    iput-boolean v3, p0, Lcom/google/android/gms/internal/measurement/zzdh;->zzacr:Z

    const-string v5, "XML config - dispatch period (sec)"

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v5, v1}, Lcom/google/android/gms/internal/measurement/zzat;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    :cond_c
    iget v1, v0, Lcom/google/android/gms/internal/measurement/zzcj;->zzaau:I

    if-eq v1, v4, :cond_e

    .line 71
    iget v0, v0, Lcom/google/android/gms/internal/measurement/zzcj;->zzaau:I

    if-ne v0, v3, :cond_d

    const/4 v2, 0x1

    .line 73
    :cond_d
    iput-boolean v2, p0, Lcom/google/android/gms/internal/measurement/zzdh;->zzact:Z

    .line 74
    iput-boolean v3, p0, Lcom/google/android/gms/internal/measurement/zzdh;->zzacs:Z

    const-string v0, "XML config - dry run"

    .line 75
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzat;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_e
    return-void
.end method

.method public final zzaj()Ljava/lang/String;
    .locals 1

    .line 79
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzau;->zzcl()V

    .line 80
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdh;->zzaaq:Ljava/lang/String;

    return-object v0
.end method

.method public final zzak()Ljava/lang/String;
    .locals 1

    .line 77
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzau;->zzcl()V

    .line 78
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdh;->zzaar:Ljava/lang/String;

    return-object v0
.end method

.method public final zzfr()Z
    .locals 1

    .line 81
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzau;->zzcl()V

    const/4 v0, 0x0

    return v0
.end method

.method public final zzfs()Z
    .locals 1

    .line 83
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzau;->zzcl()V

    .line 84
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzdh;->zzacs:Z

    return v0
.end method

.method public final zzft()Z
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzau;->zzcl()V

    .line 86
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzdh;->zzact:Z

    return v0
.end method
