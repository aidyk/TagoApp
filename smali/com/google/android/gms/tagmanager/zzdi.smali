.class public final Lcom/google/android/gms/tagmanager/zzdi;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation


# static fields
.field private static zzbdx:Lcom/google/android/gms/tagmanager/zzdj;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field static zzyn:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/google/android/gms/tagmanager/zzba;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzba;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzdi;->zzbdx:Lcom/google/android/gms/tagmanager/zzdj;

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/gms/tagmanager/zzdi;->zzbdx:Lcom/google/android/gms/tagmanager/zzdj;

    invoke-interface {v0, p0}, Lcom/google/android/gms/tagmanager/zzdj;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static setLogLevel(I)V
    .locals 1

    .line 1
    sput p0, Lcom/google/android/gms/tagmanager/zzdi;->zzyn:I

    .line 2
    sget-object v0, Lcom/google/android/gms/tagmanager/zzdi;->zzbdx:Lcom/google/android/gms/tagmanager/zzdj;

    invoke-interface {v0, p0}, Lcom/google/android/gms/tagmanager/zzdj;->setLogLevel(I)V

    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1

    .line 16
    sget-object v0, Lcom/google/android/gms/tagmanager/zzdi;->zzbdx:Lcom/google/android/gms/tagmanager/zzdj;

    invoke-interface {v0, p0}, Lcom/google/android/gms/tagmanager/zzdj;->v(Ljava/lang/String;)V

    return-void
.end method

.method public static zza(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 6
    sget-object v0, Lcom/google/android/gms/tagmanager/zzdi;->zzbdx:Lcom/google/android/gms/tagmanager/zzdj;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/tagmanager/zzdj;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static zzab(Ljava/lang/String;)V
    .locals 1

    .line 8
    sget-object v0, Lcom/google/android/gms/tagmanager/zzdi;->zzbdx:Lcom/google/android/gms/tagmanager/zzdj;

    invoke-interface {v0, p0}, Lcom/google/android/gms/tagmanager/zzdj;->zzab(Ljava/lang/String;)V

    return-void
.end method

.method public static zzb(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 10
    sget-object v0, Lcom/google/android/gms/tagmanager/zzdi;->zzbdx:Lcom/google/android/gms/tagmanager/zzdj;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/tagmanager/zzdj;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static zzdo(Ljava/lang/String;)V
    .locals 1

    .line 12
    sget-object v0, Lcom/google/android/gms/tagmanager/zzdi;->zzbdx:Lcom/google/android/gms/tagmanager/zzdj;

    invoke-interface {v0, p0}, Lcom/google/android/gms/tagmanager/zzdj;->zzdo(Ljava/lang/String;)V

    return-void
.end method

.method public static zzdp(Ljava/lang/String;)V
    .locals 1

    .line 14
    sget-object v0, Lcom/google/android/gms/tagmanager/zzdi;->zzbdx:Lcom/google/android/gms/tagmanager/zzdj;

    invoke-interface {v0, p0}, Lcom/google/android/gms/tagmanager/zzdj;->zzdp(Ljava/lang/String;)V

    return-void
.end method
