.class public final Lcom/liber8tech/tago/android/activity/SyncActivity;
.super Lcom/trello/rxlifecycle2/components/support/RxAppCompatActivity;
.source "SyncActivity.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSyncActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SyncActivity.kt\ncom/liber8tech/tago/android/activity/SyncActivity\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,145:1\n241#2,2:146\n*E\n*S KotlinDebug\n*F\n+ 1 SyncActivity.kt\ncom/liber8tech/tago/android/activity/SyncActivity\n*L\n77#1,2:146\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0002J\u0012\u0010%\u001a\u00020\"2\u0008\u0010&\u001a\u0004\u0018\u00010\'H\u0014J\u0008\u0010(\u001a\u00020\"H\u0014J\u001a\u0010)\u001a\u00020\"2\u0006\u0010*\u001a\u00020+2\u0008\u0008\u0002\u0010,\u001a\u00020-H\u0002R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0013\u001a\u00020\u00148\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001e\u0010\u0019\u001a\u00020\u001a8\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u000e\u0010\u001f\u001a\u00020 X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006."
    }
    d2 = {
        "Lcom/liber8tech/tago/android/activity/SyncActivity;",
        "Lcom/trello/rxlifecycle2/components/support/RxAppCompatActivity;",
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
        "disposeBag",
        "Lio/reactivex/disposables/CompositeDisposable;",
        "firmwareService",
        "Lcom/liber8tech/tago/service/FirmwareService;",
        "getFirmwareService",
        "()Lcom/liber8tech/tago/service/FirmwareService;",
        "setFirmwareService",
        "(Lcom/liber8tech/tago/service/FirmwareService;)V",
        "tagoService",
        "Lcom/liber8tech/tago/service/TagoService;",
        "getTagoService",
        "()Lcom/liber8tech/tago/service/TagoService;",
        "setTagoService",
        "(Lcom/liber8tech/tago/service/TagoService;)V",
        "ui",
        "Lcom/liber8tech/tago/android/ui/SyncActivityUI;",
        "displayError",
        "",
        "ex",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "startPatternSync",
        "pattern",
        "Lcom/liber8tech/tago/model/Pattern;",
        "delayTime",
        "",
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

.field private final disposeBag:Lio/reactivex/disposables/CompositeDisposable;

.field public firmwareService:Lcom/liber8tech/tago/service/FirmwareService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public tagoService:Lcom/liber8tech/tago/service/TagoService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final ui:Lcom/liber8tech/tago/android/ui/SyncActivityUI;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/trello/rxlifecycle2/components/support/RxAppCompatActivity;-><init>()V

    .line 43
    new-instance v0, Lcom/liber8tech/tago/android/ui/SyncActivityUI;

    invoke-direct {v0}, Lcom/liber8tech/tago/android/ui/SyncActivityUI;-><init>()V

    iput-object v0, p0, Lcom/liber8tech/tago/android/activity/SyncActivity;->ui:Lcom/liber8tech/tago/android/ui/SyncActivityUI;

    .line 44
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/liber8tech/tago/android/activity/SyncActivity;->disposeBag:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method public static final synthetic access$displayError(Lcom/liber8tech/tago/android/activity/SyncActivity;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 34
    invoke-direct {p0, p1}, Lcom/liber8tech/tago/android/activity/SyncActivity;->displayError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$getDevice$p(Lcom/liber8tech/tago/android/activity/SyncActivity;)Lcom/polidea/rxandroidble2/RxBleDevice;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 34
    iget-object p0, p0, Lcom/liber8tech/tago/android/activity/SyncActivity;->device:Lcom/polidea/rxandroidble2/RxBleDevice;

    if-nez p0, :cond_0

    const-string v0, "device"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getUi$p(Lcom/liber8tech/tago/android/activity/SyncActivity;)Lcom/liber8tech/tago/android/ui/SyncActivityUI;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 34
    iget-object p0, p0, Lcom/liber8tech/tago/android/activity/SyncActivity;->ui:Lcom/liber8tech/tago/android/ui/SyncActivityUI;

    return-object p0
.end method

.method public static final synthetic access$setDevice$p(Lcom/liber8tech/tago/android/activity/SyncActivity;Lcom/polidea/rxandroidble2/RxBleDevice;)V
    .locals 0
    .param p1    # Lcom/polidea/rxandroidble2/RxBleDevice;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 34
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/SyncActivity;->device:Lcom/polidea/rxandroidble2/RxBleDevice;

    return-void
.end method

.method private final displayError(Ljava/lang/Throwable;)V
    .locals 3

    .line 137
    invoke-static {p1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    .line 138
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/SyncActivity;->ui:Lcom/liber8tech/tago/android/ui/SyncActivityUI;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/liber8tech/tago/android/ui/SyncActivityUI;->setDim(Z)V

    const p1, 0x1020002

    .line 139
    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/SyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0f00e9

    const/4 v1, -0x2

    invoke-static {p1, v0, v1}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    const-string v0, "Snackbar.make(findViewBy\u2026ackbar.LENGTH_INDEFINITE)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->getView()Landroid/view/View;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const v2, 0x7f050064

    invoke-static {v1, v2}, Lcom/liber8tech/tago/util/extension/AndroidExtensionsKt;->getColorCompat(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 141
    new-instance v0, Lcom/liber8tech/tago/android/activity/SyncActivity$displayError$1;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/android/activity/SyncActivity$displayError$1;-><init>(Lcom/liber8tech/tago/android/activity/SyncActivity;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    const v1, 0x104000a

    invoke-virtual {p1, v1, v0}, Landroid/support/design/widget/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    .line 142
    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    return-void
.end method

.method private final startPatternSync(Lcom/liber8tech/tago/model/Pattern;J)V
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SyncActivity;->ui:Lcom/liber8tech/tago/android/ui/SyncActivityUI;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/liber8tech/tago/android/ui/SyncActivityUI;->setProgressValue(D)V

    .line 101
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SyncActivity;->ui:Lcom/liber8tech/tago/android/ui/SyncActivityUI;

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/ui/SyncActivityUI;->getDetailText()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0f00af

    invoke-virtual {p0, v1}, Lcom/liber8tech/tago/android/activity/SyncActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 103
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p2, p3, v1}, Lio/reactivex/Observable;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p2

    .line 104
    new-instance p3, Lcom/liber8tech/tago/android/activity/SyncActivity$startPatternSync$1;

    invoke-direct {p3, p0}, Lcom/liber8tech/tago/android/activity/SyncActivity$startPatternSync$1;-><init>(Lcom/liber8tech/tago/android/activity/SyncActivity;)V

    check-cast p3, Lio/reactivex/functions/Function;

    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p2

    .line 105
    new-instance p3, Lcom/liber8tech/tago/android/activity/SyncActivity$startPatternSync$2;

    invoke-direct {p3, p0, p1}, Lcom/liber8tech/tago/android/activity/SyncActivity$startPatternSync$2;-><init>(Lcom/liber8tech/tago/android/activity/SyncActivity;Lcom/liber8tech/tago/model/Pattern;)V

    check-cast p3, Lio/reactivex/functions/Function;

    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p2

    .line 106
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p3

    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p2

    .line 108
    new-instance p3, Lcom/liber8tech/tago/android/activity/SyncActivity$startPatternSync$3;

    invoke-direct {p3, p0}, Lcom/liber8tech/tago/android/activity/SyncActivity$startPatternSync$3;-><init>(Lcom/liber8tech/tago/android/activity/SyncActivity;)V

    check-cast p3, Lio/reactivex/functions/Consumer;

    .line 117
    new-instance v0, Lcom/liber8tech/tago/android/activity/SyncActivity$startPatternSync$4;

    invoke-direct {v0, p0, p1}, Lcom/liber8tech/tago/android/activity/SyncActivity$startPatternSync$4;-><init>(Lcom/liber8tech/tago/android/activity/SyncActivity;Lcom/liber8tech/tago/model/Pattern;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    .line 122
    new-instance p1, Lcom/liber8tech/tago/android/activity/SyncActivity$startPatternSync$5;

    invoke-direct {p1, p0}, Lcom/liber8tech/tago/android/activity/SyncActivity$startPatternSync$5;-><init>(Lcom/liber8tech/tago/android/activity/SyncActivity;)V

    check-cast p1, Lio/reactivex/functions/Action;

    .line 107
    invoke-virtual {p2, p3, v0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 128
    iget-object p2, p0, Lcom/liber8tech/tago/android/activity/SyncActivity;->disposeBag:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p2, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method static synthetic startPatternSync$default(Lcom/liber8tech/tago/android/activity/SyncActivity;Lcom/liber8tech/tago/model/Pattern;JILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, 0xa

    .line 99
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/liber8tech/tago/android/activity/SyncActivity;->startPatternSync(Lcom/liber8tech/tago/model/Pattern;J)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SyncActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SyncActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SyncActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/liber8tech/tago/android/activity/SyncActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SyncActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/liber8tech/tago/android/activity/SyncActivity;->_$_findViewCache:Ljava/util/HashMap;

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

    .line 39
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SyncActivity;->analytics:Lcom/liber8tech/tago/analytics/AnalyticsService;

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

    .line 36
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SyncActivity;->bluetoothService:Lcom/liber8tech/tago/service/BluetoothService;

    if-nez v0, :cond_0

    const-string v1, "bluetoothService"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getFirmwareService()Lcom/liber8tech/tago/service/FirmwareService;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SyncActivity;->firmwareService:Lcom/liber8tech/tago/service/FirmwareService;

    if-nez v0, :cond_0

    const-string v1, "firmwareService"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getTagoService()Lcom/liber8tech/tago/service/TagoService;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SyncActivity;->tagoService:Lcom/liber8tech/tago/service/TagoService;

    if-nez v0, :cond_0

    const-string v1, "tagoService"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 47
    invoke-super {p0, p1}, Lcom/trello/rxlifecycle2/components/support/RxAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-static {p0}, Lcom/liber8tech/tago/DIExtensionsKt;->getComponent(Landroid/app/Activity;)Lcom/liber8tech/tago/di/TagoComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/liber8tech/tago/di/TagoComponent;->inject(Lcom/liber8tech/tago/android/activity/SyncActivity;)V

    .line 49
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/SyncActivity;->analytics:Lcom/liber8tech/tago/analytics/AnalyticsService;

    if-nez p1, :cond_0

    const-string v0, "analytics"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const-string v0, "Sync"

    invoke-virtual {p1, v0}, Lcom/liber8tech/tago/analytics/AnalyticsService;->trackScreen(Ljava/lang/String;)V

    .line 51
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/SyncActivity;->bluetoothService:Lcom/liber8tech/tago/service/BluetoothService;

    if-nez p1, :cond_1

    const-string v0, "bluetoothService"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/liber8tech/tago/service/BluetoothService;->getSelectedDevice()Lcom/polidea/rxandroidble2/RxBleDevice;

    move-result-object p1

    if-nez p1, :cond_2

    .line 52
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/activity/SyncActivity;->finish()V

    return-void

    .line 55
    :cond_2
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/SyncActivity;->bluetoothService:Lcom/liber8tech/tago/service/BluetoothService;

    if-nez p1, :cond_3

    const-string v0, "bluetoothService"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lcom/liber8tech/tago/service/BluetoothService;->getSelectedDevice()Lcom/polidea/rxandroidble2/RxBleDevice;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/SyncActivity;->device:Lcom/polidea/rxandroidble2/RxBleDevice;

    .line 56
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/SyncActivity;->bluetoothService:Lcom/liber8tech/tago/service/BluetoothService;

    if-nez p1, :cond_5

    const-string v0, "bluetoothService"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    const/4 v0, 0x0

    check-cast v0, Lcom/polidea/rxandroidble2/RxBleDevice;

    invoke-virtual {p1, v0}, Lcom/liber8tech/tago/service/BluetoothService;->setSelectedDevice(Lcom/polidea/rxandroidble2/RxBleDevice;)V

    .line 58
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/SyncActivity;->ui:Lcom/liber8tech/tago/android/ui/SyncActivityUI;

    sget-object v0, Lorg/jetbrains/anko/AnkoContext;->Companion:Lorg/jetbrains/anko/AnkoContext$Companion;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lorg/jetbrains/anko/AnkoContext$Companion;->create$default(Lorg/jetbrains/anko/AnkoContext$Companion;Landroid/content/Context;Ljava/lang/Object;ZILjava/lang/Object;)Lorg/jetbrains/anko/AnkoContext;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/liber8tech/tago/android/ui/SyncActivityUI;->createView(Lorg/jetbrains/anko/AnkoContext;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/SyncActivity;->setContentView(Landroid/view/View;)V

    .line 60
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/activity/SyncActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "Pattern"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    if-eqz p1, :cond_d

    check-cast p1, Lcom/liber8tech/tago/model/Pattern;

    .line 61
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/activity/SyncActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "AutoUpload"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 63
    iget-object v1, p0, Lcom/liber8tech/tago/android/activity/SyncActivity;->ui:Lcom/liber8tech/tago/android/ui/SyncActivityUI;

    iget-object v3, p0, Lcom/liber8tech/tago/android/activity/SyncActivity;->device:Lcom/polidea/rxandroidble2/RxBleDevice;

    if-nez v3, :cond_6

    const-string v4, "device"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-static {v3}, Lcom/liber8tech/tago/model/ArcKt;->getCustomName(Lcom/polidea/rxandroidble2/RxBleDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/liber8tech/tago/android/ui/SyncActivityUI;->setName(Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/liber8tech/tago/android/activity/SyncActivity;->ui:Lcom/liber8tech/tago/android/ui/SyncActivityUI;

    invoke-virtual {p1}, Lcom/liber8tech/tago/model/Pattern;->getSrc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/liber8tech/tago/android/ui/SyncActivityUI;->setImage(Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/liber8tech/tago/android/activity/SyncActivity;->ui:Lcom/liber8tech/tago/android/ui/SyncActivityUI;

    iget-object v3, p0, Lcom/liber8tech/tago/android/activity/SyncActivity;->device:Lcom/polidea/rxandroidble2/RxBleDevice;

    if-nez v3, :cond_7

    const-string v4, "device"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-static {v3}, Lcom/liber8tech/tago/model/ArcKt;->preview(Lcom/polidea/rxandroidble2/RxBleDevice;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/liber8tech/tago/android/ui/SyncActivityUI;->setColor(Landroid/graphics/drawable/Drawable;)V

    .line 66
    iget-object v1, p0, Lcom/liber8tech/tago/android/activity/SyncActivity;->ui:Lcom/liber8tech/tago/android/ui/SyncActivityUI;

    new-instance v3, Lcom/liber8tech/tago/android/activity/SyncActivity$onCreate$1;

    invoke-direct {v3, p0, v0}, Lcom/liber8tech/tago/android/activity/SyncActivity$onCreate$1;-><init>(Lcom/liber8tech/tago/android/activity/SyncActivity;Z)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v1, v3}, Lcom/liber8tech/tago/android/ui/SyncActivityUI;->setCancelOnClick(Lkotlin/jvm/functions/Function1;)V

    .line 74
    new-instance v0, Lcom/liber8tech/tago/model/Firmware;

    invoke-direct {v0}, Lcom/liber8tech/tago/model/Firmware;-><init>()V

    .line 76
    iget-object v1, p0, Lcom/liber8tech/tago/android/activity/SyncActivity;->firmwareService:Lcom/liber8tech/tago/service/FirmwareService;

    if-nez v1, :cond_8

    const-string v3, "firmwareService"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v1}, Lcom/liber8tech/tago/service/FirmwareService;->isFirmwareUpdateTried()Z

    move-result v1

    if-nez v1, :cond_c

    .line 77
    iget-object v1, p0, Lcom/liber8tech/tago/android/activity/SyncActivity;->ui:Lcom/liber8tech/tago/android/ui/SyncActivityUI;

    invoke-virtual {v1}, Lcom/liber8tech/tago/android/ui/SyncActivityUI;->getCancelButton()Landroid/widget/Button;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v3, 0x4

    .line 146
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 78
    iget-object v1, p0, Lcom/liber8tech/tago/android/activity/SyncActivity;->firmwareService:Lcom/liber8tech/tago/service/FirmwareService;

    if-nez v1, :cond_9

    const-string v3, "firmwareService"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v1, v2}, Lcom/liber8tech/tago/service/FirmwareService;->setFirmwareUpdateTried(Z)V

    .line 79
    iget-object v1, p0, Lcom/liber8tech/tago/android/activity/SyncActivity;->bluetoothService:Lcom/liber8tech/tago/service/BluetoothService;

    if-nez v1, :cond_a

    const-string v2, "bluetoothService"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    iget-object v2, p0, Lcom/liber8tech/tago/android/activity/SyncActivity;->device:Lcom/polidea/rxandroidble2/RxBleDevice;

    if-nez v2, :cond_b

    const-string v3, "device"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {v1, v2}, Lcom/liber8tech/tago/service/BluetoothService;->connect(Lcom/polidea/rxandroidble2/RxBleDevice;)Lio/reactivex/Observable;

    move-result-object v1

    .line 80
    new-instance v2, Lcom/liber8tech/tago/android/activity/SyncActivity$onCreate$2;

    invoke-direct {v2, p0, v0}, Lcom/liber8tech/tago/android/activity/SyncActivity$onCreate$2;-><init>(Lcom/liber8tech/tago/android/activity/SyncActivity;Lcom/liber8tech/tago/model/Firmware;)V

    check-cast v2, Lio/reactivex/functions/Function;

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 81
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 82
    new-instance v1, Lcom/liber8tech/tago/android/activity/SyncActivity$onCreate$3;

    invoke-direct {v1, p0}, Lcom/liber8tech/tago/android/activity/SyncActivity$onCreate$3;-><init>(Lcom/liber8tech/tago/android/activity/SyncActivity;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    .line 86
    new-instance v2, Lcom/liber8tech/tago/android/activity/SyncActivity$onCreate$4;

    invoke-direct {v2, p0, p1}, Lcom/liber8tech/tago/android/activity/SyncActivity$onCreate$4;-><init>(Lcom/liber8tech/tago/android/activity/SyncActivity;Lcom/liber8tech/tago/model/Pattern;)V

    check-cast v2, Lio/reactivex/functions/Consumer;

    .line 90
    new-instance v3, Lcom/liber8tech/tago/android/activity/SyncActivity$onCreate$5;

    invoke-direct {v3, p0, p1}, Lcom/liber8tech/tago/android/activity/SyncActivity$onCreate$5;-><init>(Lcom/liber8tech/tago/android/activity/SyncActivity;Lcom/liber8tech/tago/model/Pattern;)V

    check-cast v3, Lio/reactivex/functions/Action;

    .line 82
    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 93
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SyncActivity;->disposeBag:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    goto :goto_0

    :cond_c
    const-wide/16 v0, 0x0

    .line 95
    invoke-direct {p0, p1, v0, v1}, Lcom/liber8tech/tago/android/activity/SyncActivity;->startPatternSync(Lcom/liber8tech/tago/model/Pattern;J)V

    :goto_0
    return-void

    .line 60
    :cond_d
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.liber8tech.tago.model.Pattern"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected onDestroy()V
    .locals 1

    .line 132
    invoke-super {p0}, Lcom/trello/rxlifecycle2/components/support/RxAppCompatActivity;->onDestroy()V

    .line 133
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SyncActivity;->disposeBag:Lio/reactivex/disposables/CompositeDisposable;

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

    .line 39
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/SyncActivity;->analytics:Lcom/liber8tech/tago/analytics/AnalyticsService;

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

    .line 36
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/SyncActivity;->bluetoothService:Lcom/liber8tech/tago/service/BluetoothService;

    return-void
.end method

.method public final setFirmwareService(Lcom/liber8tech/tago/service/FirmwareService;)V
    .locals 1
    .param p1    # Lcom/liber8tech/tago/service/FirmwareService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/SyncActivity;->firmwareService:Lcom/liber8tech/tago/service/FirmwareService;

    return-void
.end method

.method public final setTagoService(Lcom/liber8tech/tago/service/TagoService;)V
    .locals 1
    .param p1    # Lcom/liber8tech/tago/service/TagoService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/SyncActivity;->tagoService:Lcom/liber8tech/tago/service/TagoService;

    return-void
.end method
