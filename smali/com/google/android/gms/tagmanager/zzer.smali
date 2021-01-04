.class final Lcom/google/android/gms/tagmanager/zzer;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzbaa:Ljava/lang/String;

.field private volatile zzbba:Ljava/lang/String;

.field private final zzbez:Lcom/google/android/gms/internal/measurement/zzsh;

.field private final zzbfa:Ljava/lang/String;

.field private zzbfb:Lcom/google/android/gms/tagmanager/zzdh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tagmanager/zzdh<",
            "Lcom/google/android/gms/internal/measurement/zzo;",
            ">;"
        }
    .end annotation
.end field

.field private volatile zzbfc:Lcom/google/android/gms/tagmanager/zzal;

.field private volatile zzbfd:Ljava/lang/String;

.field private final zzri:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzsh;Lcom/google/android/gms/tagmanager/zzal;)V
    .locals 0
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzer;->zzri:Landroid/content/Context;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/tagmanager/zzer;->zzbez:Lcom/google/android/gms/internal/measurement/zzsh;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzer;->zzbaa:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/google/android/gms/tagmanager/zzer;->zzbfc:Lcom/google/android/gms/tagmanager/zzal;

    const-string p1, "/r?id="

    .line 8
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzer;->zzbfa:Ljava/lang/String;

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzer;->zzbfa:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzer;->zzbba:Ljava/lang/String;

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzer;->zzbfd:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/zzal;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzsh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzsh;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/gms/tagmanager/zzer;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzsh;Lcom/google/android/gms/tagmanager/zzal;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzer;->zzbfb:Lcom/google/android/gms/tagmanager/zzdh;

    if-eqz v0, :cond_9

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzer;->zzbfb:Lcom/google/android/gms/tagmanager/zzdh;

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/zzdh;->zznx()V

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzer;->zzri:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 18
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 19
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 20
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "...no network connectivity"

    .line 21
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdi;->v(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzer;->zzbfb:Lcom/google/android/gms/tagmanager/zzdh;

    sget v1, Lcom/google/android/gms/tagmanager/zzcz;->zzbdp:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzdh;->zzt(I)V

    return-void

    :cond_2
    const-string v0, "Start loading resource from network ..."

    .line 27
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdi;->v(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzer;->zzbfc:Lcom/google/android/gms/tagmanager/zzal;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzal;->zzoe()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzer;->zzbba:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xc

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&v=a65833898"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzer;->zzbfd:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzer;->zzbfd:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 31
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzer;->zzbfd:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&pv="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    :cond_3
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzeh;->zzpm()Lcom/google/android/gms/tagmanager/zzeh;

    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/zzeh;->zzpn()Lcom/google/android/gms/tagmanager/zzeh$zza;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/tagmanager/zzeh$zza;->zzber:Lcom/google/android/gms/tagmanager/zzeh$zza;

    .line 34
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tagmanager/zzeh$zza;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 35
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&gtm_debug=x"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 38
    :cond_5
    :goto_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzsh;->zzth()Lcom/google/android/gms/internal/measurement/zzsg;

    move-result-object v1

    const/4 v2, 0x0

    .line 40
    :try_start_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/measurement/zzsg;->zzfb(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/gms/internal/measurement/zzsi; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    goto :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :catch_0
    move-exception v2

    .line 52
    :try_start_1
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x28

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Error when loading resources from url: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/android/gms/tagmanager/zzdi;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzer;->zzbfb:Lcom/google/android/gms/tagmanager/zzdh;

    sget v2, Lcom/google/android/gms/tagmanager/zzcz;->zzbdq:I

    invoke-interface {v0, v2}, Lcom/google/android/gms/tagmanager/zzdh;->zzt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzsg;->close()V

    return-void

    :catch_1
    :try_start_2
    const-string v3, "Error when loading resource for url: "

    .line 48
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_6
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    :goto_3
    invoke-static {v3}, Lcom/google/android/gms/tagmanager/zzdi;->zzab(Ljava/lang/String;)V

    .line 49
    iget-object v3, p0, Lcom/google/android/gms/tagmanager/zzer;->zzbfb:Lcom/google/android/gms/tagmanager/zzdh;

    sget v4, Lcom/google/android/gms/tagmanager/zzcz;->zzbds:I

    invoke-interface {v3, v4}, Lcom/google/android/gms/tagmanager/zzdh;->zzt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    :goto_4
    :try_start_3
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 57
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/zzrv;->zza(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 58
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 59
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzo;

    invoke-direct {v3}, Lcom/google/android/gms/internal/measurement/zzo;-><init>()V

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/measurement/zzzr;->zza(Lcom/google/android/gms/internal/measurement/zzzr;[B)Lcom/google/android/gms/internal/measurement/zzzr;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzo;

    .line 61
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Successfully loaded supplemented resource: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/tagmanager/zzdi;->v(Ljava/lang/String;)V

    .line 62
    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/zzo;->zzqg:Lcom/google/android/gms/internal/measurement/zzl;

    if-nez v3, :cond_8

    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/zzo;->zzqf:[Lcom/google/android/gms/internal/measurement/zzn;

    array-length v3, v3

    if-nez v3, :cond_8

    const-string v3, "No change for container: "

    .line 63
    iget-object v4, p0, Lcom/google/android/gms/tagmanager/zzer;->zzbaa:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_7
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    :goto_5
    invoke-static {v3}, Lcom/google/android/gms/tagmanager/zzdi;->v(Ljava/lang/String;)V

    .line 64
    :cond_8
    iget-object v3, p0, Lcom/google/android/gms/tagmanager/zzer;->zzbfb:Lcom/google/android/gms/tagmanager/zzdh;

    invoke-interface {v3, v2}, Lcom/google/android/gms/tagmanager/zzdh;->onSuccess(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 71
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzsg;->close()V

    const-string v0, "Load resource from network finished."

    .line 74
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdi;->v(Ljava/lang/String;)V

    return-void

    :catch_2
    move-exception v2

    .line 67
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x33

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Error when parsing downloaded resources from url: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/android/gms/tagmanager/zzdi;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzer;->zzbfb:Lcom/google/android/gms/tagmanager/zzdh;

    sget v2, Lcom/google/android/gms/tagmanager/zzcz;->zzbdr:I

    invoke-interface {v0, v2}, Lcom/google/android/gms/tagmanager/zzdh;->zzt(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 69
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzsg;->close()V

    return-void

    .line 43
    :catch_3
    :try_start_5
    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzer;->zzbaa:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x4f

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "No data is retrieved from the given url: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Make sure container_id: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is correct."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdi;->zzab(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzer;->zzbfb:Lcom/google/android/gms/tagmanager/zzdh;

    sget v2, Lcom/google/android/gms/tagmanager/zzcz;->zzbdr:I

    invoke-interface {v0, v2}, Lcom/google/android/gms/tagmanager/zzdh;->zzt(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 45
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzsg;->close()V

    return-void

    .line 73
    :goto_6
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzsg;->close()V

    throw v0

    .line 13
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "callback must be set before execute"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final zza(Lcom/google/android/gms/tagmanager/zzdh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/zzdh<",
            "Lcom/google/android/gms/internal/measurement/zzo;",
            ">;)V"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzer;->zzbfb:Lcom/google/android/gms/tagmanager/zzdh;

    return-void
.end method

.method final zzdi(Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    if-nez p1, :cond_0

    .line 79
    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzer;->zzbfa:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzer;->zzbba:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "Setting CTFE URL path: "

    .line 80
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdi;->zzdp(Ljava/lang/String;)V

    .line 81
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzer;->zzbba:Ljava/lang/String;

    return-void
.end method

.method final zzea(Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const-string v0, "Setting previous container version: "

    .line 83
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

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

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdi;->zzdp(Ljava/lang/String;)V

    .line 84
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzer;->zzbfd:Ljava/lang/String;

    return-void
.end method
