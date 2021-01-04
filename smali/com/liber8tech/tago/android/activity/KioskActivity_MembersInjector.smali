.class public final Lcom/liber8tech/tago/android/activity/KioskActivity_MembersInjector;
.super Ljava/lang/Object;
.source "KioskActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/liber8tech/tago/android/activity/KioskActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private final bluetoothServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/BluetoothService;",
            ">;"
        }
    .end annotation
.end field

.field private final locationServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/LocationService;",
            ">;"
        }
    .end annotation
.end field

.field private final tagoServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/TagoService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/LocationService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/TagoService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/BluetoothService;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/KioskActivity_MembersInjector;->locationServiceProvider:Ljavax/inject/Provider;

    .line 22
    iput-object p2, p0, Lcom/liber8tech/tago/android/activity/KioskActivity_MembersInjector;->tagoServiceProvider:Ljavax/inject/Provider;

    .line 23
    iput-object p3, p0, Lcom/liber8tech/tago/android/activity/KioskActivity_MembersInjector;->bluetoothServiceProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/LocationService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/TagoService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/BluetoothService;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/liber8tech/tago/android/activity/KioskActivity;",
            ">;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/liber8tech/tago/android/activity/KioskActivity_MembersInjector;

    invoke-direct {v0, p0, p1, p2}, Lcom/liber8tech/tago/android/activity/KioskActivity_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectBluetoothService(Lcom/liber8tech/tago/android/activity/KioskActivity;Lcom/liber8tech/tago/service/BluetoothService;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/KioskActivity;->bluetoothService:Lcom/liber8tech/tago/service/BluetoothService;

    return-void
.end method

.method public static injectLocationService(Lcom/liber8tech/tago/android/activity/KioskActivity;Lcom/liber8tech/tago/service/LocationService;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/KioskActivity;->locationService:Lcom/liber8tech/tago/service/LocationService;

    return-void
.end method

.method public static injectTagoService(Lcom/liber8tech/tago/android/activity/KioskActivity;Lcom/liber8tech/tago/service/TagoService;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/KioskActivity;->tagoService:Lcom/liber8tech/tago/service/TagoService;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/liber8tech/tago/android/activity/KioskActivity;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/KioskActivity_MembersInjector;->locationServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/LocationService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/KioskActivity_MembersInjector;->injectLocationService(Lcom/liber8tech/tago/android/activity/KioskActivity;Lcom/liber8tech/tago/service/LocationService;)V

    .line 37
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/KioskActivity_MembersInjector;->tagoServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/TagoService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/KioskActivity_MembersInjector;->injectTagoService(Lcom/liber8tech/tago/android/activity/KioskActivity;Lcom/liber8tech/tago/service/TagoService;)V

    .line 38
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/KioskActivity_MembersInjector;->bluetoothServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/BluetoothService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/KioskActivity_MembersInjector;->injectBluetoothService(Lcom/liber8tech/tago/android/activity/KioskActivity;Lcom/liber8tech/tago/service/BluetoothService;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p1, Lcom/liber8tech/tago/android/activity/KioskActivity;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/KioskActivity_MembersInjector;->injectMembers(Lcom/liber8tech/tago/android/activity/KioskActivity;)V

    return-void
.end method
