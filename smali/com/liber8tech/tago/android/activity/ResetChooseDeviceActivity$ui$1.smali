.class final Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity$ui$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ResetChooseDeviceActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/polidea/rxandroidble2/RxBleDevice;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nResetChooseDeviceActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResetChooseDeviceActivity.kt\ncom/liber8tech/tago/android/activity/ResetChooseDeviceActivity$ui$1\n+ 2 Intents.kt\norg/jetbrains/anko/IntentsKt\n*L\n1#1,87:1\n41#2:88\n*E\n*S KotlinDebug\n*F\n+ 1 ResetChooseDeviceActivity.kt\ncom/liber8tech/tago/android/activity/ResetChooseDeviceActivity$ui$1\n*L\n26#1:88\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "device",
        "Lcom/polidea/rxandroidble2/RxBleDevice;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity$ui$1;->this$0:Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19
    check-cast p1, Lcom/polidea/rxandroidble2/RxBleDevice;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity$ui$1;->invoke(Lcom/polidea/rxandroidble2/RxBleDevice;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/polidea/rxandroidble2/RxBleDevice;)V
    .locals 3
    .param p1    # Lcom/polidea/rxandroidble2/RxBleDevice;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "device"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity$ui$1;->this$0:Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;->getBluetoothService()Lcom/liber8tech/tago/service/BluetoothService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liber8tech/tago/service/BluetoothService;->setSelectedDevice(Lcom/polidea/rxandroidble2/RxBleDevice;)V

    .line 26
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity$ui$1;->this$0:Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity$ui$1;->this$0:Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;->getResetRequest()I

    move-result v0

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    .line 88
    const-class v2, Lcom/liber8tech/tago/android/activity/ResetSyncActivity;

    invoke-static {p1, v2, v0, v1}, Lorg/jetbrains/anko/internals/AnkoInternals;->internalStartActivityForResult(Landroid/app/Activity;Ljava/lang/Class;I[Lkotlin/Pair;)V

    return-void
.end method
