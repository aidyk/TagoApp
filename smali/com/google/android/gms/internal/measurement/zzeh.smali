.class public final Lcom/google/android/gms/internal/measurement/zzeh;
.super Lcom/google/android/gms/internal/measurement/zzq;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzef;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.measurement.api.internal.IBundleReceiver"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzq;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zzb(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzq;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzs;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzq;->zza(ILandroid/os/Parcel;)V

    return-void
.end method
