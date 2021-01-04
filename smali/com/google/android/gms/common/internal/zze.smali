.class final Lcom/google/android/gms/common/internal/zze;
.super Lcom/google/android/gms/common/internal/GmsClientSupervisor;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final zzdu:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;",
            "Lcom/google/android/gms/common/internal/zzf;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mConnectionStatus"
    .end annotation
.end field

.field private final zzdv:Landroid/content/Context;

.field private final zzdw:Lcom/google/android/gms/common/stats/ConnectionTracker;

.field private final zzdx:J

.field private final zzdy:J


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/GmsClientSupervisor;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zze;->zzdu:Ljava/util/HashMap;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zze;->zzdv:Landroid/content/Context;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/common/zze;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/internal/common/zze;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zze;->mHandler:Landroid/os/Handler;

    .line 5
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zze;->zzdw:Lcom/google/android/gms/common/stats/ConnectionTracker;

    const-wide/16 v0, 0x1388

    .line 6
    iput-wide v0, p0, Lcom/google/android/gms/common/internal/zze;->zzdx:J

    const-wide/32 v0, 0x493e0

    .line 7
    iput-wide v0, p0, Lcom/google/android/gms/common/internal/zze;->zzdy:J

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/zze;)Ljava/util/HashMap;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/google/android/gms/common/internal/zze;->zzdu:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/common/internal/zze;)Landroid/os/Handler;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/google/android/gms/common/internal/zze;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/common/internal/zze;)Landroid/content/Context;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/google/android/gms/common/internal/zze;->zzdv:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/common/internal/zze;)Lcom/google/android/gms/common/stats/ConnectionTracker;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/google/android/gms/common/internal/zze;->zzdw:Lcom/google/android/gms/common/stats/ConnectionTracker;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/common/internal/zze;)J
    .locals 2

    .line 75
    iget-wide v0, p0, Lcom/google/android/gms/common/internal/zze;->zzdy:J

    return-wide v0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 7

    .line 47
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 57
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->zzdu:Ljava/util/HashMap;

    monitor-enter v0

    .line 58
    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;

    .line 59
    iget-object v2, p0, Lcom/google/android/gms/common/internal/zze;->zzdu:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/internal/zzf;

    if-eqz v2, :cond_2

    .line 60
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/zzf;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    const-string v3, "GmsClientSupervisor"

    .line 61
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Timeout waiting for ServiceConnection callback "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/zzf;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_0

    .line 64
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    :cond_0
    if-nez v3, :cond_1

    .line 66
    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->getPackage()Ljava/lang/String;

    move-result-object p1

    const-string v4, "unknown"

    invoke-direct {v3, p1, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_1
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/internal/zzf;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 68
    :cond_2
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 48
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->zzdu:Ljava/util/HashMap;

    monitor-enter v0

    .line 49
    :try_start_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;

    .line 50
    iget-object v2, p0, Lcom/google/android/gms/common/internal/zze;->zzdu:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/internal/zzf;

    if-eqz v2, :cond_4

    .line 51
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/zzf;->zzr()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 52
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/zzf;->isBound()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "GmsClientSupervisor"

    .line 53
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/internal/zzf;->zzf(Ljava/lang/String;)V

    .line 54
    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/common/internal/zze;->zzdu:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_4
    monitor-exit v0

    return v1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final zza(Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;Landroid/content/ServiceConnection;Ljava/lang/String;)Z
    .locals 5

    const-string v0, "ServiceConnection must not be null"

    .line 9
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->zzdu:Ljava/util/HashMap;

    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zze;->zzdu:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/internal/zzf;

    if-nez v1, :cond_0

    .line 13
    new-instance v1, Lcom/google/android/gms/common/internal/zzf;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/internal/zzf;-><init>(Lcom/google/android/gms/common/internal/zze;Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;)V

    .line 14
    invoke-virtual {v1, p2, p3}, Lcom/google/android/gms/common/internal/zzf;->zza(Landroid/content/ServiceConnection;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1, p3}, Lcom/google/android/gms/common/internal/zzf;->zze(Ljava/lang/String;)V

    .line 16
    iget-object p2, p0, Lcom/google/android/gms/common/internal/zze;->zzdu:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object p2, p0, Lcom/google/android/gms/common/internal/zze;->zzdu:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p2

    const/16 p3, 0xc8

    if-le p2, p3, :cond_1

    const-string p2, "GmsClientSupervisor"

    .line 18
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zze;->zzdu:Ljava/util/HashMap;

    .line 19
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x33

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Adding "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", and there are now "

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " connections."

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    .line 20
    invoke-static {p2, p3, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 21
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/common/internal/zze;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 22
    invoke-virtual {v1, p2}, Lcom/google/android/gms/common/internal/zzf;->zza(Landroid/content/ServiceConnection;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 24
    invoke-virtual {v1, p2, p3}, Lcom/google/android/gms/common/internal/zzf;->zza(Landroid/content/ServiceConnection;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzf;->getState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 28
    :pswitch_0
    invoke-virtual {v1, p3}, Lcom/google/android/gms/common/internal/zzf;->zze(Ljava/lang/String;)V

    goto :goto_0

    .line 26
    :pswitch_1
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzf;->getComponentName()Landroid/content/ComponentName;

    move-result-object p3

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzf;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p2, p3, v2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 29
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzf;->zzs()I

    move-result p2

    const/16 p3, 0x64

    if-le p2, p3, :cond_2

    const-string p2, "GmsClientSupervisor"

    .line 31
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzf;->zzs()I

    move-result p3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x29

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "There are"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " clients for service "

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/Exception;

    invoke-direct {p3}, Ljava/lang/Exception;-><init>()V

    .line 32
    invoke-static {p2, p1, p3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzf;->isBound()Z

    move-result p1

    monitor-exit v0

    return p1

    .line 23
    :cond_3
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x51

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Trying to bind a GmsServiceConnection that was already connected before.  config="

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p1

    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final zzb(Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 3

    const-string v0, "ServiceConnection must not be null"

    .line 35
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->zzdu:Ljava/util/HashMap;

    monitor-enter v0

    .line 37
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zze;->zzdu:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/internal/zzf;

    if-eqz v1, :cond_2

    .line 40
    invoke-virtual {v1, p2}, Lcom/google/android/gms/common/internal/zzf;->zza(Landroid/content/ServiceConnection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 42
    invoke-virtual {v1, p2, p3}, Lcom/google/android/gms/common/internal/zzf;->zzb(Landroid/content/ServiceConnection;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzf;->zzr()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 44
    iget-object p2, p0, Lcom/google/android/gms/common/internal/zze;->mHandler:Landroid/os/Handler;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 45
    iget-object p2, p0, Lcom/google/android/gms/common/internal/zze;->mHandler:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/google/android/gms/common/internal/zze;->zzdx:J

    invoke-virtual {p2, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 46
    :cond_0
    monitor-exit v0

    return-void

    .line 41
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x4c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Trying to unbind a GmsServiceConnection  that was not bound before.  config="

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 39
    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x32

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Nonexistent connection status for service config: "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p1

    .line 46
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
