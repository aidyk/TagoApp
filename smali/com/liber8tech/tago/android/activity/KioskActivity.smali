.class public final Lcom/liber8tech/tago/android/activity/KioskActivity;
.super Lcom/liber8tech/tago/android/activity/BaseActivity;
.source "KioskActivity.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKioskActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KioskActivity.kt\ncom/liber8tech/tago/android/activity/KioskActivity\n*L\n1#1,124:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u0008\u0010\u001b\u001a\u00020\u001cH\u0016J\u000f\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016\u00a2\u0006\u0002\u0010\u001fJ\u0014\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u00180!H\u0016J\n\u0010\"\u001a\u0004\u0018\u00010#H\u0016J\u0008\u0010$\u001a\u00020\u0018H\u0002J\u0012\u0010%\u001a\u00020\u00182\u0008\u0010&\u001a\u0004\u0018\u00010\'H\u0014J\u0008\u0010(\u001a\u00020\u0018H\u0014J\u0008\u0010)\u001a\u00020\u0018H\u0014J\u0008\u0010*\u001a\u00020\u0018H\u0002J\u0018\u0010+\u001a\u00020\u00182\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020\u001eH\u0002R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001e\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006/"
    }
    d2 = {
        "Lcom/liber8tech/tago/android/activity/KioskActivity;",
        "Lcom/liber8tech/tago/android/activity/BaseActivity;",
        "()V",
        "bluetoothService",
        "Lcom/liber8tech/tago/service/BluetoothService;",
        "getBluetoothService",
        "()Lcom/liber8tech/tago/service/BluetoothService;",
        "setBluetoothService",
        "(Lcom/liber8tech/tago/service/BluetoothService;)V",
        "locationService",
        "Lcom/liber8tech/tago/service/LocationService;",
        "getLocationService",
        "()Lcom/liber8tech/tago/service/LocationService;",
        "setLocationService",
        "(Lcom/liber8tech/tago/service/LocationService;)V",
        "tagoService",
        "Lcom/liber8tech/tago/service/TagoService;",
        "getTagoService",
        "()Lcom/liber8tech/tago/service/TagoService;",
        "setTagoService",
        "(Lcom/liber8tech/tago/service/TagoService;)V",
        "ui",
        "Lcom/liber8tech/tago/android/ui/KioskActivityUI;",
        "displayError",
        "",
        "ex",
        "",
        "getContentView",
        "Landroid/view/View;",
        "getToolbarLeftIcon",
        "",
        "()Ljava/lang/Integer;",
        "getToolbarLeftIconClick",
        "Lkotlin/Function1;",
        "getToolbarTitle",
        "",
        "observeServices",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onPause",
        "onResume",
        "scan",
        "sendKioskModeCommand",
        "device",
        "Lcom/polidea/rxandroidble2/RxBleDevice;",
        "kioskMode",
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

.field public bluetoothService:Lcom/liber8tech/tago/service/BluetoothService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public locationService:Lcom/liber8tech/tago/service/LocationService;
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

.field private final ui:Lcom/liber8tech/tago/android/ui/KioskActivityUI;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Lcom/liber8tech/tago/android/activity/BaseActivity;-><init>()V

    .line 27
    new-instance v0, Lcom/liber8tech/tago/android/ui/KioskActivityUI;

    new-instance v1, Lcom/liber8tech/tago/android/activity/KioskActivity$ui$1;

    invoke-direct {v1, p0}, Lcom/liber8tech/tago/android/activity/KioskActivity$ui$1;-><init>(Lcom/liber8tech/tago/android/activity/KioskActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v1}, Lcom/liber8tech/tago/android/ui/KioskActivityUI;-><init>(Lkotlin/jvm/functions/Function1;)V

    iput-object v0, p0, Lcom/liber8tech/tago/android/activity/KioskActivity;->ui:Lcom/liber8tech/tago/android/ui/KioskActivityUI;

    return-void
.end method

.method public static final synthetic access$displayError(Lcom/liber8tech/tago/android/activity/KioskActivity;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 22
    invoke-direct {p0, p1}, Lcom/liber8tech/tago/android/activity/KioskActivity;->displayError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$getUi$p(Lcom/liber8tech/tago/android/activity/KioskActivity;)Lcom/liber8tech/tago/android/ui/KioskActivityUI;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 22
    iget-object p0, p0, Lcom/liber8tech/tago/android/activity/KioskActivity;->ui:Lcom/liber8tech/tago/android/ui/KioskActivityUI;

    return-object p0
.end method

.method public static final synthetic access$sendKioskModeCommand(Lcom/liber8tech/tago/android/activity/KioskActivity;Lcom/polidea/rxandroidble2/RxBleDevice;I)V
    .locals 0
    .param p1    # Lcom/polidea/rxandroidble2/RxBleDevice;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/liber8tech/tago/android/activity/KioskActivity;->sendKioskModeCommand(Lcom/polidea/rxandroidble2/RxBleDevice;I)V

    return-void
.end method

.method private final displayError(Ljava/lang/Throwable;)V
    .locals 3

    .line 115
    invoke-static {p1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    .line 116
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/KioskActivity;->ui:Lcom/liber8tech/tago/android/ui/KioskActivityUI;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/liber8tech/tago/android/ui/KioskActivityUI;->setDim(Z)V

    const p1, 0x1020002

    .line 117
    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/KioskActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0f00e9

    const/4 v1, -0x2

    invoke-static {p1, v0, v1}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    const-string v0, "Snackbar.make(findViewBy\u2026ackbar.LENGTH_INDEFINITE)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->getView()Landroid/view/View;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const v2, 0x7f050064

    invoke-static {v1, v2}, Lcom/liber8tech/tago/util/extension/AndroidExtensionsKt;->getColorCompat(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 119
    new-instance v0, Lcom/liber8tech/tago/android/activity/KioskActivity$displayError$1;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/android/activity/KioskActivity$displayError$1;-><init>(Lcom/liber8tech/tago/android/activity/KioskActivity;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    const v1, 0x104000a

    invoke-virtual {p1, v1, v0}, Landroid/support/design/widget/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    .line 120
    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    return-void
.end method

.method private final observeServices()V
    .locals 4

    const v0, 0x1020002

    .line 81
    invoke-virtual {p0, v0}, Lcom/liber8tech/tago/android/activity/KioskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f00b5

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    const-string v1, "Snackbar.make(findViewBy\u2026ackbar.LENGTH_INDEFINITE)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->getView()Landroid/view/View;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    const v3, 0x7f050064

    invoke-static {v2, v3}, Lcom/liber8tech/tago/util/extension/AndroidExtensionsKt;->getColorCompat(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 83
    new-instance v1, Lcom/liber8tech/tago/android/activity/KioskActivity$observeServices$1;

    invoke-direct {v1, p0}, Lcom/liber8tech/tago/android/activity/KioskActivity$observeServices$1;-><init>(Lcom/liber8tech/tago/android/activity/KioskActivity;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/support/design/widget/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    .line 84
    iget-object v1, p0, Lcom/liber8tech/tago/android/activity/KioskActivity;->tagoService:Lcom/liber8tech/tago/service/TagoService;

    if-nez v1, :cond_0

    const-string v2, "tagoService"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lcom/liber8tech/tago/service/TagoService;->bleAndLocationStates()Lio/reactivex/Observable;

    move-result-object v1

    .line 85
    new-instance v2, Lcom/liber8tech/tago/android/activity/KioskActivity$observeServices$2;

    invoke-direct {v2, p0, v0}, Lcom/liber8tech/tago/android/activity/KioskActivity$observeServices$2;-><init>(Lcom/liber8tech/tago/android/activity/KioskActivity;Landroid/support/design/widget/Snackbar;)V

    check-cast v2, Lio/reactivex/functions/Consumer;

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 95
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/activity/KioskActivity;->getDisposeBag()Lio/reactivex/disposables/CompositeDisposable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private final scan()V
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/KioskActivity;->tagoService:Lcom/liber8tech/tago/service/TagoService;

    if-nez v0, :cond_0

    const-string v1, "tagoService"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/liber8tech/tago/service/TagoService;->ownDevices()Lio/reactivex/Observable;

    move-result-object v0

    .line 100
    new-instance v1, Lcom/liber8tech/tago/android/activity/KioskActivity$scan$1;

    invoke-direct {v1, p0}, Lcom/liber8tech/tago/android/activity/KioskActivity$scan$1;-><init>(Lcom/liber8tech/tago/android/activity/KioskActivity;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    sget-object v2, Lcom/liber8tech/tago/android/activity/KioskActivity$scan$2;->INSTANCE:Lcom/liber8tech/tago/android/activity/KioskActivity$scan$2;

    check-cast v2, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 101
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/activity/KioskActivity;->getDisposeBag()Lio/reactivex/disposables/CompositeDisposable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private final sendKioskModeCommand(Lcom/polidea/rxandroidble2/RxBleDevice;I)V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/KioskActivity;->bluetoothService:Lcom/liber8tech/tago/service/BluetoothService;

    if-nez v0, :cond_0

    const-string v1, "bluetoothService"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/liber8tech/tago/service/BluetoothService;->connect(Lcom/polidea/rxandroidble2/RxBleDevice;)Lio/reactivex/Observable;

    move-result-object p1

    .line 44
    new-instance v0, Lcom/liber8tech/tago/android/activity/KioskActivity$sendKioskModeCommand$1;

    invoke-direct {v0, p0, p2}, Lcom/liber8tech/tago/android/activity/KioskActivity$sendKioskModeCommand$1;-><init>(Lcom/liber8tech/tago/android/activity/KioskActivity;I)V

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 45
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 47
    new-instance p2, Lcom/liber8tech/tago/android/activity/KioskActivity$sendKioskModeCommand$2;

    invoke-direct {p2, p0}, Lcom/liber8tech/tago/android/activity/KioskActivity$sendKioskModeCommand$2;-><init>(Lcom/liber8tech/tago/android/activity/KioskActivity;)V

    check-cast p2, Lio/reactivex/functions/Consumer;

    .line 51
    new-instance v0, Lcom/liber8tech/tago/android/activity/KioskActivity$sendKioskModeCommand$3;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/android/activity/KioskActivity$sendKioskModeCommand$3;-><init>(Lcom/liber8tech/tago/android/activity/KioskActivity;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    .line 46
    invoke-virtual {p1, p2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 52
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/activity/KioskActivity;->getDisposeBag()Lio/reactivex/disposables/CompositeDisposable;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/KioskActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/KioskActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/KioskActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/liber8tech/tago/android/activity/KioskActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/KioskActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/liber8tech/tago/android/activity/KioskActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getBluetoothService()Lcom/liber8tech/tago/service/BluetoothService;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/KioskActivity;->bluetoothService:Lcom/liber8tech/tago/service/BluetoothService;

    if-nez v0, :cond_0

    const-string v1, "bluetoothService"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/KioskActivity;->ui:Lcom/liber8tech/tago/android/ui/KioskActivityUI;

    sget-object v1, Lorg/jetbrains/anko/AnkoContext;->Companion:Lorg/jetbrains/anko/AnkoContext$Companion;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Lorg/jetbrains/anko/AnkoContext$Companion;->create$default(Lorg/jetbrains/anko/AnkoContext$Companion;Landroid/content/Context;Ljava/lang/Object;ZILjava/lang/Object;)Lorg/jetbrains/anko/AnkoContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liber8tech/tago/android/ui/KioskActivityUI;->createView(Lorg/jetbrains/anko/AnkoContext;)Landroid/widget/FrameLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final getLocationService()Lcom/liber8tech/tago/service/LocationService;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/KioskActivity;->locationService:Lcom/liber8tech/tago/service/LocationService;

    if-nez v0, :cond_0

    const-string v1, "locationService"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getTagoService()Lcom/liber8tech/tago/service/TagoService;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/KioskActivity;->tagoService:Lcom/liber8tech/tago/service/TagoService;

    if-nez v0, :cond_0

    const-string v1, "tagoService"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getToolbarLeftIcon()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const v0, 0x7f07005d

    .line 106
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

    .line 108
    new-instance v0, Lcom/liber8tech/tago/android/activity/KioskActivity$getToolbarLeftIconClick$1;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/android/activity/KioskActivity$getToolbarLeftIconClick$1;-><init>(Lcom/liber8tech/tago/android/activity/KioskActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public getToolbarTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const v0, 0x7f0f00b4

    .line 104
    invoke-virtual {p0, v0}, Lcom/liber8tech/tago/android/activity/KioskActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 61
    invoke-super {p0, p1}, Lcom/liber8tech/tago/android/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-static {p0}, Lcom/liber8tech/tago/DIExtensionsKt;->getComponent(Landroid/app/Activity;)Lcom/liber8tech/tago/di/TagoComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/liber8tech/tago/di/TagoComponent;->inject(Lcom/liber8tech/tago/android/activity/KioskActivity;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 76
    invoke-super {p0}, Lcom/liber8tech/tago/android/activity/BaseActivity;->onPause()V

    .line 77
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/activity/KioskActivity;->getDisposeBag()Lio/reactivex/disposables/CompositeDisposable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 66
    invoke-super {p0}, Lcom/liber8tech/tago/android/activity/BaseActivity;->onResume()V

    .line 67
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/KioskActivity;->locationService:Lcom/liber8tech/tago/service/LocationService;

    if-nez v0, :cond_0

    const-string v1, "locationService"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/liber8tech/tago/service/LocationService;->hasPermission()Z

    move-result v0

    if-nez v0, :cond_2

    .line 68
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/KioskActivity;->locationService:Lcom/liber8tech/tago/service/LocationService;

    if-nez v0, :cond_1

    const-string v1, "locationService"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/liber8tech/tago/service/LocationService;->requestPermission(Landroid/app/Activity;)V

    goto :goto_0

    .line 70
    :cond_2
    invoke-direct {p0}, Lcom/liber8tech/tago/android/activity/KioskActivity;->observeServices()V

    .line 71
    invoke-direct {p0}, Lcom/liber8tech/tago/android/activity/KioskActivity;->scan()V

    :goto_0
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

    .line 58
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/KioskActivity;->bluetoothService:Lcom/liber8tech/tago/service/BluetoothService;

    return-void
.end method

.method public final setLocationService(Lcom/liber8tech/tago/service/LocationService;)V
    .locals 1
    .param p1    # Lcom/liber8tech/tago/service/LocationService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/KioskActivity;->locationService:Lcom/liber8tech/tago/service/LocationService;

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

    .line 56
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/KioskActivity;->tagoService:Lcom/liber8tech/tago/service/TagoService;

    return-void
.end method
