.class public final Lcom/liber8tech/tago/android/activity/ResetSyncActivity;
.super Lcom/liber8tech/tago/android/activity/BaseActivity;
.source "ResetSyncActivity.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nResetSyncActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResetSyncActivity.kt\ncom/liber8tech/tago/android/activity/ResetSyncActivity\n*L\n1#1,89:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016J\r\u0010\u0019\u001a\u00020\u001aH\u0016\u00a2\u0006\u0002\u0010\u001bJ\u0014\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u00140\u001dH\u0016J\u0008\u0010\u001f\u001a\u00020 H\u0016J\u0012\u0010!\u001a\u00020\u00142\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0014J\u0008\u0010$\u001a\u00020\u0014H\u0014R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcom/liber8tech/tago/android/activity/ResetSyncActivity;",
        "Lcom/liber8tech/tago/android/activity/BaseActivity;",
        "()V",
        "analytics",
        "Lcom/liber8tech/tago/analytics/AnalyticsService;",
        "getAnalytics",
        "()Lcom/liber8tech/tago/analytics/AnalyticsService;",
        "setAnalytics",
        "(Lcom/liber8tech/tago/analytics/AnalyticsService;)V",
        "bluetoothService",
        "Lcom/liber8tech/tago/service/BluetoothService;",
        "getBluetoothService",
        "()Lcom/liber8tech/tago/service/BluetoothService;",
        "setBluetoothService",
        "(Lcom/liber8tech/tago/service/BluetoothService;)V",
        "device",
        "Lcom/polidea/rxandroidble2/RxBleDevice;",
        "ui",
        "Lcom/liber8tech/tago/android/ui/ResetSyncActivityUI;",
        "displayError",
        "",
        "ex",
        "",
        "getContentView",
        "Landroid/widget/FrameLayout;",
        "getToolbarLeftIcon",
        "",
        "()Ljava/lang/Integer;",
        "getToolbarLeftIconClick",
        "Lkotlin/Function1;",
        "Landroid/view/View;",
        "getToolbarTitle",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field public analytics:Lcom/liber8tech/tago/analytics/AnalyticsService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public bluetoothService:Lcom/liber8tech/tago/service/BluetoothService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private device:Lcom/polidea/rxandroidble2/RxBleDevice;

.field private final ui:Lcom/liber8tech/tago/android/ui/ResetSyncActivityUI;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/liber8tech/tago/android/activity/BaseActivity;-><init>()V

    .line 29
    new-instance v0, Lcom/liber8tech/tago/android/ui/ResetSyncActivityUI;

    invoke-direct {v0}, Lcom/liber8tech/tago/android/ui/ResetSyncActivityUI;-><init>()V

    iput-object v0, p0, Lcom/liber8tech/tago/android/activity/ResetSyncActivity;->ui:Lcom/liber8tech/tago/android/ui/ResetSyncActivityUI;

    return-void
.end method

.method public static final synthetic access$displayError(Lcom/liber8tech/tago/android/activity/ResetSyncActivity;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 24
    invoke-direct {p0, p1}, Lcom/liber8tech/tago/android/activity/ResetSyncActivity;->displayError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$getUi$p(Lcom/liber8tech/tago/android/activity/ResetSyncActivity;)Lcom/liber8tech/tago/android/ui/ResetSyncActivityUI;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 24
    iget-object p0, p0, Lcom/liber8tech/tago/android/activity/ResetSyncActivity;->ui:Lcom/liber8tech/tago/android/ui/ResetSyncActivityUI;

    return-object p0
.end method

.method private final displayError(Ljava/lang/Throwable;)V
    .locals 3

    .line 71
    invoke-static {p1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    .line 72
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/ResetSyncActivity;->ui:Lcom/liber8tech/tago/android/ui/ResetSyncActivityUI;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/liber8tech/tago/android/ui/ResetSyncActivityUI;->setDim(Z)V

    const p1, 0x1020002

    .line 73
    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/ResetSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0f00e9

    const/4 v1, -0x2

    invoke-static {p1, v0, v1}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    const-string v0, "Snackbar.make(findViewBy\u2026ackbar.LENGTH_INDEFINITE)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->getView()Landroid/view/View;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const v2, 0x7f050064

    invoke-static {v1, v2}, Lcom/liber8tech/tago/util/extension/AndroidExtensionsKt;->getColorCompat(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 75
    new-instance v0, Lcom/liber8tech/tago/android/activity/ResetSyncActivity$displayError$1;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/android/activity/ResetSyncActivity$displayError$1;-><init>(Lcom/liber8tech/tago/android/activity/ResetSyncActivity;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    const v1, 0x104000a

    invoke-virtual {p1, v1, v0}, Landroid/support/design/widget/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    .line 76
    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ResetSyncActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ResetSyncActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ResetSyncActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/liber8tech/tago/android/activity/ResetSyncActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ResetSyncActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/liber8tech/tago/android/activity/ResetSyncActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getAnalytics()Lcom/liber8tech/tago/analytics/AnalyticsService;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ResetSyncActivity;->analytics:Lcom/liber8tech/tago/analytics/AnalyticsService;

    if-nez v0, :cond_0

    const-string v1, "analytics"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getBluetoothService()Lcom/liber8tech/tago/service/BluetoothService;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ResetSyncActivity;->bluetoothService:Lcom/liber8tech/tago/service/BluetoothService;

    if-nez v0, :cond_0

    const-string v1, "bluetoothService"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getContentView()Landroid/view/View;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/activity/ResetSyncActivity;->getContentView()Landroid/widget/FrameLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public getContentView()Landroid/widget/FrameLayout;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ResetSyncActivity;->ui:Lcom/liber8tech/tago/android/ui/ResetSyncActivityUI;

    sget-object v1, Lorg/jetbrains/anko/AnkoContext;->Companion:Lorg/jetbrains/anko/AnkoContext$Companion;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Lorg/jetbrains/anko/AnkoContext$Companion;->create$default(Lorg/jetbrains/anko/AnkoContext$Companion;Landroid/content/Context;Ljava/lang/Object;ZILjava/lang/Object;)Lorg/jetbrains/anko/AnkoContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liber8tech/tago/android/ui/ResetSyncActivityUI;->createView(Lorg/jetbrains/anko/AnkoContext;)Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getToolbarLeftIcon()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const v0, 0x7f07005d

    .line 83
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getToolbarLeftIconClick()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 85
    new-instance v0, Lcom/liber8tech/tago/android/activity/ResetSyncActivity$getToolbarLeftIconClick$1;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/android/activity/ResetSyncActivity$getToolbarLeftIconClick$1;-><init>(Lcom/liber8tech/tago/android/activity/ResetSyncActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public bridge synthetic getToolbarTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/activity/ResetSyncActivity;->getToolbarTitle()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getToolbarTitle()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const v0, 0x7f0f00da

    .line 81
    invoke-virtual {p0, v0}, Lcom/liber8tech/tago/android/activity/ResetSyncActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.reset_device)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 34
    invoke-super {p0, p1}, Lcom/liber8tech/tago/android/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-static {p0}, Lcom/liber8tech/tago/DIExtensionsKt;->getComponent(Landroid/app/Activity;)Lcom/liber8tech/tago/di/TagoComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/liber8tech/tago/di/TagoComponent;->inject(Lcom/liber8tech/tago/android/activity/ResetSyncActivity;)V

    .line 37
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/ResetSyncActivity;->bluetoothService:Lcom/liber8tech/tago/service/BluetoothService;

    if-nez p1, :cond_0

    const-string v0, "bluetoothService"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/liber8tech/tago/service/BluetoothService;->getSelectedDevice()Lcom/polidea/rxandroidble2/RxBleDevice;

    move-result-object p1

    if-nez p1, :cond_1

    .line 38
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/activity/ResetSyncActivity;->finish()V

    return-void

    .line 41
    :cond_1
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/ResetSyncActivity;->bluetoothService:Lcom/liber8tech/tago/service/BluetoothService;

    if-nez p1, :cond_2

    const-string v0, "bluetoothService"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/liber8tech/tago/service/BluetoothService;->getSelectedDevice()Lcom/polidea/rxandroidble2/RxBleDevice;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/ResetSyncActivity;->device:Lcom/polidea/rxandroidble2/RxBleDevice;

    .line 42
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/ResetSyncActivity;->bluetoothService:Lcom/liber8tech/tago/service/BluetoothService;

    if-nez p1, :cond_4

    const-string v0, "bluetoothService"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    const/4 v0, 0x0

    check-cast v0, Lcom/polidea/rxandroidble2/RxBleDevice;

    invoke-virtual {p1, v0}, Lcom/liber8tech/tago/service/BluetoothService;->setSelectedDevice(Lcom/polidea/rxandroidble2/RxBleDevice;)V

    .line 44
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/ResetSyncActivity;->ui:Lcom/liber8tech/tago/android/ui/ResetSyncActivityUI;

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ResetSyncActivity;->device:Lcom/polidea/rxandroidble2/RxBleDevice;

    if-nez v0, :cond_5

    const-string v1, "device"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1, v0}, Lcom/liber8tech/tago/android/ui/ResetSyncActivityUI;->setDevice(Lcom/polidea/rxandroidble2/RxBleDevice;)V

    const-wide/16 v0, 0x3e8

    .line 46
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, p1}, Lio/reactivex/Observable;->interval(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    const-wide/16 v0, 0x14

    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object p1

    .line 48
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ResetSyncActivity;->bluetoothService:Lcom/liber8tech/tago/service/BluetoothService;

    if-nez v0, :cond_6

    const-string v1, "bluetoothService"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    iget-object v1, p0, Lcom/liber8tech/tago/android/activity/ResetSyncActivity;->device:Lcom/polidea/rxandroidble2/RxBleDevice;

    if-nez v1, :cond_7

    const-string v2, "device"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v0, v1}, Lcom/liber8tech/tago/service/BluetoothService;->connect(Lcom/polidea/rxandroidble2/RxBleDevice;)Lio/reactivex/Observable;

    move-result-object v0

    .line 49
    new-instance v1, Lcom/liber8tech/tago/android/activity/ResetSyncActivity$onCreate$1;

    invoke-direct {v1, p0}, Lcom/liber8tech/tago/android/activity/ResetSyncActivity$onCreate$1;-><init>(Lcom/liber8tech/tago/android/activity/ResetSyncActivity;)V

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 50
    new-instance v1, Lcom/liber8tech/tago/android/activity/ResetSyncActivity$onCreate$2;

    invoke-direct {v1, p1}, Lcom/liber8tech/tago/android/activity/ResetSyncActivity$onCreate$2;-><init>(Lio/reactivex/Observable;)V

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 51
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 53
    new-instance v0, Lcom/liber8tech/tago/android/activity/ResetSyncActivity$onCreate$3;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/android/activity/ResetSyncActivity$onCreate$3;-><init>(Lcom/liber8tech/tago/android/activity/ResetSyncActivity;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    .line 54
    new-instance v1, Lcom/liber8tech/tago/android/activity/ResetSyncActivity$onCreate$4;

    invoke-direct {v1, p0}, Lcom/liber8tech/tago/android/activity/ResetSyncActivity$onCreate$4;-><init>(Lcom/liber8tech/tago/android/activity/ResetSyncActivity;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    .line 58
    new-instance v2, Lcom/liber8tech/tago/android/activity/ResetSyncActivity$onCreate$5;

    invoke-direct {v2, p0}, Lcom/liber8tech/tago/android/activity/ResetSyncActivity$onCreate$5;-><init>(Lcom/liber8tech/tago/android/activity/ResetSyncActivity;)V

    check-cast v2, Lio/reactivex/functions/Action;

    .line 52
    invoke-virtual {p1, v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 63
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/activity/ResetSyncActivity;->getDisposeBag()Lio/reactivex/disposables/CompositeDisposable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 67
    invoke-super {p0}, Lcom/liber8tech/tago/android/activity/BaseActivity;->onDestroy()V

    .line 68
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/activity/ResetSyncActivity;->getDisposeBag()Lio/reactivex/disposables/CompositeDisposable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method public final setAnalytics(Lcom/liber8tech/tago/analytics/AnalyticsService;)V
    .locals 1
    .param p1    # Lcom/liber8tech/tago/analytics/AnalyticsService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/ResetSyncActivity;->analytics:Lcom/liber8tech/tago/analytics/AnalyticsService;

    return-void
.end method

.method public final setBluetoothService(Lcom/liber8tech/tago/service/BluetoothService;)V
    .locals 1
    .param p1    # Lcom/liber8tech/tago/service/BluetoothService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/ResetSyncActivity;->bluetoothService:Lcom/liber8tech/tago/service/BluetoothService;

    return-void
.end method
