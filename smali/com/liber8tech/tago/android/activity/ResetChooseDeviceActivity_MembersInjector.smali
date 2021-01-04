.class public final Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity_MembersInjector;
.super Ljava/lang/Object;
.source "ResetChooseDeviceActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/TagoService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/BluetoothService;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity_MembersInjector;->tagoServiceProvider:Ljavax/inject/Provider;

    .line 19
    iput-object p2, p0, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity_MembersInjector;->bluetoothServiceProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/TagoService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/liber8tech/tago/service/BluetoothService;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;",
            ">;"
        }
    .end annotation

    .line 25
    new-instance v0, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity_MembersInjector;

    invoke-direct {v0, p0, p1}, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectBluetoothService(Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;Lcom/liber8tech/tago/service/BluetoothService;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;->bluetoothService:Lcom/liber8tech/tago/service/BluetoothService;

    return-void
.end method

.method public static injectTagoService(Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;Lcom/liber8tech/tago/service/TagoService;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;->tagoService:Lcom/liber8tech/tago/service/TagoService;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity_MembersInjector;->tagoServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/TagoService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity_MembersInjector;->injectTagoService(Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;Lcom/liber8tech/tago/service/TagoService;)V

    .line 32
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity_MembersInjector;->bluetoothServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/service/BluetoothService;

    invoke-static {p1, v0}, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity_MembersInjector;->injectBluetoothService(Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;Lcom/liber8tech/tago/service/BluetoothService;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p1, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity_MembersInjector;->injectMembers(Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;)V

    return-void
.end method
