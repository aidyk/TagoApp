.class public final Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;
.super Lcom/liber8tech/tago/android/activity/BaseActivity;
.source "ResetChooseDeviceActivity.kt"

# interfaces
.implements Lcom/liber8tech/tago/android/activity/Requests;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nResetChooseDeviceActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResetChooseDeviceActivity.kt\ncom/liber8tech/tago/android/activity/ResetChooseDeviceActivity\n*L\n1#1,87:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\r\u0010\u0014\u001a\u00020\u0015H\u0016\u00a2\u0006\u0002\u0010\u0016J\u0014\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u001a0\u0018H\u0016J\u0008\u0010\u001b\u001a\u00020\u001cH\u0016J\u0008\u0010\u001d\u001a\u00020\u001aH\u0002J\"\u0010\u001e\u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020\u00152\u0006\u0010 \u001a\u00020\u00152\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0014J\u0012\u0010#\u001a\u00020\u001a2\u0008\u0010$\u001a\u0004\u0018\u00010%H\u0014J\u0008\u0010&\u001a\u00020\u001aH\u0014J\u0008\u0010\'\u001a\u00020\u001aH\u0014J\u0008\u0010(\u001a\u00020\u001aH\u0002R\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001e\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;",
        "Lcom/liber8tech/tago/android/activity/BaseActivity;",
        "Lcom/liber8tech/tago/android/activity/Requests;",
        "()V",
        "bluetoothService",
        "Lcom/liber8tech/tago/service/BluetoothService;",
        "getBluetoothService",
        "()Lcom/liber8tech/tago/service/BluetoothService;",
        "setBluetoothService",
        "(Lcom/liber8tech/tago/service/BluetoothService;)V",
        "tagoService",
        "Lcom/liber8tech/tago/service/TagoService;",
        "getTagoService",
        "()Lcom/liber8tech/tago/service/TagoService;",
        "setTagoService",
        "(Lcom/liber8tech/tago/service/TagoService;)V",
        "ui",
        "Lcom/liber8tech/tago/android/ui/ResetChooseDeviceActivityUI;",
        "getContentView",
        "Landroid/widget/FrameLayout;",
        "getToolbarLeftIcon",
        "",
        "()Ljava/lang/Integer;",
        "getToolbarLeftIconClick",
        "Lkotlin/Function1;",
        "Landroid/view/View;",
        "",
        "getToolbarTitle",
        "",
        "observeServices",
        "onActivityResult",
        "requestCode",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "onResume",
        "scan",
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

.field public tagoService:Lcom/liber8tech/tago/service/TagoService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final ui:Lcom/liber8tech/tago/android/ui/ResetChooseDeviceActivityUI;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Lcom/liber8tech/tago/android/activity/BaseActivity;-><init>()V

    .line 24
    new-instance v0, Lcom/liber8tech/tago/android/ui/ResetChooseDeviceActivityUI;

    new-instance v1, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity$ui$1;

    invoke-direct {v1, p0}, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity$ui$1;-><init>(Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v1}, Lcom/liber8tech/tago/android/ui/ResetChooseDeviceActivityUI;-><init>(Lkotlin/jvm/functions/Function1;)V

    iput-object v0, p0, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;->ui:Lcom/liber8tech/tago/android/ui/ResetChooseDeviceActivityUI;

    return-void
.end method

.method public static final synthetic access$getUi$p(Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;)Lcom/liber8tech/tago/android/ui/ResetChooseDeviceActivityUI;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 19
    iget-object p0, p0, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;->ui:Lcom/liber8tech/tago/android/ui/ResetChooseDeviceActivityUI;

    return-object p0
.end method

.method private final observeServices()V
    .locals 4

    const v0, 0x1020002

    .line 49
    invoke-virtual {p0, v0}, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f00b5

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    const-string v1, "Snackbar.make(findViewBy\u2026ackbar.LENGTH_INDEFINITE)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->getView()Landroid/view/View;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    const v3, 0x7f050064

    invoke-static {v2, v3}, Lcom/liber8tech/tago/util/extension/AndroidExtensionsKt;->getColorCompat(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 51
    new-instance v1, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity$observeServices$1;

    invoke-direct {v1, p0}, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity$observeServices$1;-><init>(Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/support/design/widget/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    .line 52
    iget-object v1, p0, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;->tagoService:Lcom/liber8tech/tago/service/TagoService;

    if-nez v1, :cond_0

    const-string v2, "tagoService"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lcom/liber8tech/tago/service/TagoService;->bleAndLocationStates()Lio/reactivex/Observable;

    move-result-object v1

    .line 53
    new-instance v2, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity$observeServices$2;

    invoke-direct {v2, p0, v0}, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity$observeServices$2;-><init>(Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;Landroid/support/design/widget/Snackbar;)V

    check-cast v2, Lio/reactivex/functions/Consumer;

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 63
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;->getDisposeBag()Lio/reactivex/disposables/CompositeDisposable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private final scan()V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;->tagoService:Lcom/liber8tech/tago/service/TagoService;

    if-nez v0, :cond_0

    const-string v1, "tagoService"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/liber8tech/tago/service/TagoService;->ownDevices()Lio/reactivex/Observable;

    move-result-object v0

    .line 68
    new-instance v1, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity$scan$1;

    invoke-direct {v1, p0}, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity$scan$1;-><init>(Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    sget-object v2, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity$scan$2;->INSTANCE:Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity$scan$2;

    check-cast v2, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 69
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;->getDisposeBag()Lio/reactivex/disposables/CompositeDisposable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;->_$_findViewCache:Ljava/util/HashMap;

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

    .line 22
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;->bluetoothService:Lcom/liber8tech/tago/service/BluetoothService;

    if-nez v0, :cond_0

    const-string v1, "bluetoothService"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getContentView()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;->getContentView()Landroid/widget/FrameLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public getContentView()Landroid/widget/FrameLayout;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;->ui:Lcom/liber8tech/tago/android/ui/ResetChooseDeviceActivityUI;

    sget-object v1, Lorg/jetbrains/anko/AnkoContext;->Companion:Lorg/jetbrains/anko/AnkoContext$Companion;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Lorg/jetbrains/anko/AnkoContext$Companion;->create$default(Lorg/jetbrains/anko/AnkoContext$Companion;Landroid/content/Context;Ljava/lang/Object;ZILjava/lang/Object;)Lorg/jetbrains/anko/AnkoContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liber8tech/tago/android/ui/ResetChooseDeviceActivityUI;->createView(Lorg/jetbrains/anko/AnkoContext;)Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getKioskRequest()I
    .locals 1

    .line 19
    invoke-static {p0}, Lcom/liber8tech/tago/android/activity/Requests$DefaultImpls;->getKioskRequest(Lcom/liber8tech/tago/android/activity/Requests;)I

    move-result v0

    return v0
.end method

.method public getResetRequest()I
    .locals 1

    .line 19
    invoke-static {p0}, Lcom/liber8tech/tago/android/activity/Requests$DefaultImpls;->getResetRequest(Lcom/liber8tech/tago/android/activity/Requests;)I

    move-result v0

    return v0
.end method

.method public final getTagoService()Lcom/liber8tech/tago/service/TagoService;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;->tagoService:Lcom/liber8tech/tago/service/TagoService;

    if-nez v0, :cond_0

    const-string v1, "tagoService"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getToolbarLeftIcon()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const v0, 0x7f07005d

    .line 81
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

    .line 83
    new-instance v0, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity$getToolbarLeftIconClick$1;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity$getToolbarLeftIconClick$1;-><init>(Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public bridge synthetic getToolbarTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;->getToolbarTitle()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getToolbarTitle()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const v0, 0x7f0f00da

    .line 79
    invoke-virtual {p0, v0}, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.reset_device)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 36
    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;->setResult(I)V

    .line 37
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;->finish()V

    const/4 p1, 0x0

    .line 38
    invoke-virtual {p0, p1, p1}, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 30
    invoke-super {p0, p1}, Lcom/liber8tech/tago/android/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-static {p0}, Lcom/liber8tech/tago/DIExtensionsKt;->getComponent(Landroid/app/Activity;)Lcom/liber8tech/tago/di/TagoComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/liber8tech/tago/di/TagoComponent;->inject(Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 73
    invoke-super {p0}, Lcom/liber8tech/tago/android/activity/BaseActivity;->onDestroy()V

    .line 74
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;->getDisposeBag()Lio/reactivex/disposables/CompositeDisposable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 43
    invoke-super {p0}, Lcom/liber8tech/tago/android/activity/BaseActivity;->onResume()V

    .line 44
    invoke-direct {p0}, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;->observeServices()V

    .line 45
    invoke-direct {p0}, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;->scan()V

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

    .line 22
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;->bluetoothService:Lcom/liber8tech/tago/service/BluetoothService;

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

    .line 21
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;->tagoService:Lcom/liber8tech/tago/service/TagoService;

    return-void
.end method
