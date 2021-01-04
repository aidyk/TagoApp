.class final Lcom/google/android/gms/tagmanager/zzex;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzah;


# instance fields
.field private final zzaea:Ljava/util/concurrent/ExecutorService;

.field private final zzbaa:Ljava/lang/String;

.field private zzbfb:Lcom/google/android/gms/tagmanager/zzdh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tagmanager/zzdh<",
            "Lcom/google/android/gms/internal/measurement/zzrt;",
            ">;"
        }
    .end annotation
.end field

.field private final zzri:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzex;->zzri:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzex;->zzbaa:Ljava/lang/String;

    .line 4
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzex;->zzaea:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private static zza(Ljava/io/ByteArrayOutputStream;)Lcom/google/android/gms/internal/measurement/zzrz;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "UTF-8"

    .line 85
    invoke-virtual {p0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 86
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzda;->zzdx(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzrz;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "Failed to extract the container from the resource file. Resource is a UTF-8 encoded string but doesn\'t contain a JSON container"

    .line 91
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdi;->zzab(Ljava/lang/String;)V

    return-object v0

    :catch_1
    const-string p0, "Failed to convert binary resource to string for JSON parsing; the file format is not UTF-8 format."

    .line 88
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdi;->zzdp(Ljava/lang/String;)V

    return-object v0
.end method

.method private static zze([B)Lcom/google/android/gms/internal/measurement/zzrz;
    .locals 2

    const/4 v0, 0x0

    .line 94
    :try_start_0
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzl;

    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/zzl;-><init>()V

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/measurement/zzzr;->zza(Lcom/google/android/gms/internal/measurement/zzzr;[B)Lcom/google/android/gms/internal/measurement/zzzr;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzl;

    .line 95
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzrv;->zza(Lcom/google/android/gms/internal/measurement/zzl;)Lcom/google/android/gms/internal/measurement/zzrz;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v1, "The container was successfully loaded from the resource (using binary file)"

    .line 97
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzdi;->v(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzzq; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/internal/measurement/zzsd; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :catch_0
    const-string p0, "The resource file is invalid. The container from the binary file is invalid"

    .line 103
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdi;->zzab(Ljava/lang/String;)V

    return-object v0

    :catch_1
    const-string p0, "The resource file is corrupted. The container cannot be extracted from the binary file"

    .line 100
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdi;->e(Ljava/lang/String;)V

    return-object v0
.end method

.method private final zzps()Ljava/io/File;
    .locals 4
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const-string v0, "resource_"

    .line 138
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzex;->zzbaa:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 139
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzex;->zzri:Landroid/content/Context;

    const-string v2, "google_tagmanager"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 140
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public final declared-synchronized release()V
    .locals 1

    monitor-enter p0

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzex;->zzaea:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 104
    monitor-exit p0

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzrt;)V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzex;->zzaea:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/tagmanager/zzez;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/tagmanager/zzez;-><init>(Lcom/google/android/gms/tagmanager/zzex;Lcom/google/android/gms/internal/measurement/zzrt;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/tagmanager/zzdh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/zzdh<",
            "Lcom/google/android/gms/internal/measurement/zzrt;",
            ">;)V"
        }
    .end annotation

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzex;->zzbfb:Lcom/google/android/gms/tagmanager/zzdh;

    return-void
.end method

.method final zzb(Lcom/google/android/gms/internal/measurement/zzrt;)Z
    .locals 5
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 107
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzex;->zzps()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    .line 108
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    .line 114
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzr;->zzwe()I

    move-result v3

    new-array v3, v3, [B

    .line 115
    array-length v4, v3

    invoke-static {p1, v3, v1, v4}, Lcom/google/android/gms/internal/measurement/zzzr;->zza(Lcom/google/android/gms/internal/measurement/zzzr;[BII)V

    .line 117
    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "error closing stream for writing resource to disk"

    .line 121
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdi;->zzab(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    :try_start_3
    const-string p1, "Error writing resource to disk. Removing resource from disk."

    .line 124
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdi;->zzab(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 126
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    const-string p1, "error closing stream for writing resource to disk"

    .line 129
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdi;->zzab(Ljava/lang/String;)V

    :goto_1
    return v1

    .line 132
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    const-string v0, "error closing stream for writing resource to disk"

    .line 135
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdi;->zzab(Ljava/lang/String;)V

    .line 136
    :goto_3
    throw p1

    :catch_4
    const-string p1, "Error opening resource file for writing"

    .line 111
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdi;->e(Ljava/lang/String;)V

    return v1
.end method

.method public final zzny()V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzex;->zzaea:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/tagmanager/zzey;

    invoke-direct {v1, p0}, Lcom/google/android/gms/tagmanager/zzey;-><init>(Lcom/google/android/gms/tagmanager/zzex;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final zzpr()V
    .locals 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzex;->zzbfb:Lcom/google/android/gms/tagmanager/zzdh;

    if-eqz v0, :cond_4

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzex;->zzbfb:Lcom/google/android/gms/tagmanager/zzdh;

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/zzdh;->zznx()V

    const-string v0, "Attempting to load resource from disk"

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdi;->v(Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzeh;->zzpm()Lcom/google/android/gms/tagmanager/zzeh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzeh;->zzpn()Lcom/google/android/gms/tagmanager/zzeh$zza;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/tagmanager/zzeh$zza;->zzbeq:Lcom/google/android/gms/tagmanager/zzeh$zza;

    if-eq v0, v1, :cond_0

    .line 15
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzeh;->zzpm()Lcom/google/android/gms/tagmanager/zzeh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzeh;->zzpn()Lcom/google/android/gms/tagmanager/zzeh$zza;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/tagmanager/zzeh$zza;->zzber:Lcom/google/android/gms/tagmanager/zzeh$zza;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzex;->zzbaa:Ljava/lang/String;

    .line 16
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzeh;->zzpm()Lcom/google/android/gms/tagmanager/zzeh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/zzeh;->getContainerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzex;->zzbfb:Lcom/google/android/gms/tagmanager/zzdh;

    sget v1, Lcom/google/android/gms/tagmanager/zzcz;->zzbdp:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzdh;->zzt(I)V

    return-void

    .line 19
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzex;->zzps()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6

    .line 25
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 26
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzrv;->zza(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 27
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 28
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzrt;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzrt;-><init>()V

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/zzzr;->zza(Lcom/google/android/gms/internal/measurement/zzzr;[B)Lcom/google/android/gms/internal/measurement/zzzr;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzrt;

    .line 31
    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/zzrt;->zzqg:Lcom/google/android/gms/internal/measurement/zzl;

    if-nez v2, :cond_3

    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/zzrt;->zzbqo:Lcom/google/android/gms/internal/measurement/zzo;

    if-eqz v2, :cond_2

    goto :goto_0

    .line 32
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Resource and SupplementedResource are NULL."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 33
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzex;->zzbfb:Lcom/google/android/gms/tagmanager/zzdh;

    invoke-interface {v2, v1}, Lcom/google/android/gms/tagmanager/zzdh;->onSuccess(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "Error closing stream for reading resource from disk"

    .line 37
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdi;->zzab(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    .line 48
    :catch_1
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzex;->zzbfb:Lcom/google/android/gms/tagmanager/zzdh;

    sget v2, Lcom/google/android/gms/tagmanager/zzcz;->zzbdq:I

    invoke-interface {v1, v2}, Lcom/google/android/gms/tagmanager/zzdh;->zzt(I)V

    const-string v1, "Failed to read the resource from disk. The resource is inconsistent"

    .line 49
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzdi;->zzab(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 50
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    const-string v0, "Error closing stream for reading resource from disk"

    .line 53
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdi;->zzab(Ljava/lang/String;)V

    goto :goto_1

    .line 40
    :catch_3
    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzex;->zzbfb:Lcom/google/android/gms/tagmanager/zzdh;

    sget v2, Lcom/google/android/gms/tagmanager/zzcz;->zzbdq:I

    invoke-interface {v1, v2}, Lcom/google/android/gms/tagmanager/zzdh;->zzt(I)V

    const-string v1, "Failed to read the resource from disk"

    .line 41
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzdi;->zzab(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 42
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    :catch_4
    const-string v0, "Error closing stream for reading resource from disk"

    .line 45
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdi;->zzab(Ljava/lang/String;)V

    :goto_1
    const-string v0, "The Disk resource was successfully read."

    .line 61
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdi;->v(Ljava/lang/String;)V

    return-void

    .line 56
    :goto_2
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_3

    :catch_5
    const-string v0, "Error closing stream for reading resource from disk"

    .line 59
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdi;->zzab(Ljava/lang/String;)V

    .line 60
    :goto_3
    throw v1

    :catch_6
    const-string v0, "Failed to find the resource in the disk"

    .line 22
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdi;->zzdp(Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzex;->zzbfb:Lcom/google/android/gms/tagmanager/zzdh;

    sget v1, Lcom/google/android/gms/tagmanager/zzcz;->zzbdp:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzdh;->zzt(I)V

    return-void

    .line 11
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Callback must be set before execute"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzu(I)Lcom/google/android/gms/internal/measurement/zzrz;
    .locals 5

    const/4 v0, 0x0

    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzex;->zzri:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 70
    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzex;->zzri:Landroid/content/Context;

    .line 71
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x42

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Attempting to load a container from the resource ID "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzdi;->v(Ljava/lang/String;)V

    .line 73
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 74
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzrv;->zza(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 75
    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzex;->zza(Ljava/io/ByteArrayOutputStream;)Lcom/google/android/gms/internal/measurement/zzrz;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "The container was successfully loaded from the resource (using JSON file format)"

    .line 77
    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzdi;->v(Ljava/lang/String;)V

    return-object v1

    .line 79
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzex;->zze([B)Lcom/google/android/gms/internal/measurement/zzrz;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    .line 81
    :catch_0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzex;->zzri:Landroid/content/Context;

    .line 82
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x43

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Error reading the default container with resource ID "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 83
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdi;->zzab(Ljava/lang/String;)V

    return-object v0

    :catch_1
    const/16 v1, 0x62

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Failed to load the container. No default container resource found with the resource ID "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdi;->zzab(Ljava/lang/String;)V

    return-object v0
.end method
