.class public final Lcom/liber8tech/tago/android/activity/ImageEditorActivity;
.super Lcom/liber8tech/tago/android/activity/BaseActivity;
.source "ImageEditorActivity.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImageEditorActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageEditorActivity.kt\ncom/liber8tech/tago/android/activity/ImageEditorActivity\n+ 2 Listeners.kt\norg/jetbrains/anko/sdk15/listeners/Sdk15ListenersListenersKt\n*L\n1#1,163:1\n164#2,2:164\n*E\n*S KotlinDebug\n*F\n+ 1 ImageEditorActivity.kt\ncom/liber8tech/tago/android/activity/ImageEditorActivity\n*L\n43#1,2:164\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\r\u0010\r\u001a\u00020\u000eH\u0016\u00a2\u0006\u0002\u0010\u000fJ\u0014\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011H\u0016J\n\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u0012\u0010\u0016\u001a\u00020\u00132\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0014J\u0008\u0010\u0019\u001a\u00020\u0013H\u0014R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/liber8tech/tago/android/activity/ImageEditorActivity;",
        "Lcom/liber8tech/tago/android/activity/BaseActivity;",
        "()V",
        "imageEditorService",
        "Lcom/liber8tech/tago/service/ImageEditorService;",
        "getImageEditorService",
        "()Lcom/liber8tech/tago/service/ImageEditorService;",
        "setImageEditorService",
        "(Lcom/liber8tech/tago/service/ImageEditorService;)V",
        "ui",
        "Lcom/liber8tech/tago/android/activity/ImageEditorActivityUI;",
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

.field public imageEditorService:Lcom/liber8tech/tago/service/ImageEditorService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final ui:Lcom/liber8tech/tago/android/activity/ImageEditorActivityUI;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/liber8tech/tago/android/activity/BaseActivity;-><init>()V

    .line 34
    new-instance v0, Lcom/liber8tech/tago/android/activity/ImageEditorActivityUI;

    invoke-direct {v0}, Lcom/liber8tech/tago/android/activity/ImageEditorActivityUI;-><init>()V

    iput-object v0, p0, Lcom/liber8tech/tago/android/activity/ImageEditorActivity;->ui:Lcom/liber8tech/tago/android/activity/ImageEditorActivityUI;

    return-void
.end method

.method public static final synthetic access$getUi$p(Lcom/liber8tech/tago/android/activity/ImageEditorActivity;)Lcom/liber8tech/tago/android/activity/ImageEditorActivityUI;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 29
    iget-object p0, p0, Lcom/liber8tech/tago/android/activity/ImageEditorActivity;->ui:Lcom/liber8tech/tago/android/activity/ImageEditorActivityUI;

    return-object p0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ImageEditorActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ImageEditorActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ImageEditorActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/liber8tech/tago/android/activity/ImageEditorActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ImageEditorActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/liber8tech/tago/android/activity/ImageEditorActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public bridge synthetic getContentView()Landroid/view/View;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/activity/ImageEditorActivity;->getContentView()Landroid/widget/FrameLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public getContentView()Landroid/widget/FrameLayout;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ImageEditorActivity;->ui:Lcom/liber8tech/tago/android/activity/ImageEditorActivityUI;

    sget-object v1, Lorg/jetbrains/anko/AnkoContext;->Companion:Lorg/jetbrains/anko/AnkoContext$Companion;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Lorg/jetbrains/anko/AnkoContext$Companion;->create$default(Lorg/jetbrains/anko/AnkoContext$Companion;Landroid/content/Context;Ljava/lang/Object;ZILjava/lang/Object;)Lorg/jetbrains/anko/AnkoContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liber8tech/tago/android/activity/ImageEditorActivityUI;->createView(Lorg/jetbrains/anko/AnkoContext;)Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public final getImageEditorService()Lcom/liber8tech/tago/service/ImageEditorService;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ImageEditorActivity;->imageEditorService:Lcom/liber8tech/tago/service/ImageEditorService;

    if-nez v0, :cond_0

    const-string v1, "imageEditorService"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getToolbarLeftIcon()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const v0, 0x7f07005d

    .line 77
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

    .line 79
    new-instance v0, Lcom/liber8tech/tago/android/activity/ImageEditorActivity$getToolbarLeftIconClick$1;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/android/activity/ImageEditorActivity$getToolbarLeftIconClick$1;-><init>(Lcom/liber8tech/tago/android/activity/ImageEditorActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public bridge synthetic getToolbarTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/activity/ImageEditorActivity;->getToolbarTitle()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getToolbarTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const v0, 0x7f0f004f

    .line 75
    invoke-virtual {p0, v0}, Lcom/liber8tech/tago/android/activity/ImageEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 37
    invoke-super {p0, p1}, Lcom/liber8tech/tago/android/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-static {p0}, Lcom/liber8tech/tago/DIExtensionsKt;->getComponent(Landroid/app/Activity;)Lcom/liber8tech/tago/di/TagoComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/liber8tech/tago/di/TagoComponent;->inject(Lcom/liber8tech/tago/android/activity/ImageEditorActivity;)V

    .line 39
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/ImageEditorActivity;->imageEditorService:Lcom/liber8tech/tago/service/ImageEditorService;

    if-nez p1, :cond_0

    const-string v0, "imageEditorService"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/liber8tech/tago/service/ImageEditorService;->getCameraImage()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 40
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ImageEditorActivity;->ui:Lcom/liber8tech/tago/android/activity/ImageEditorActivityUI;

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/activity/ImageEditorActivityUI;->getEditorView()Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    move-result-object v0

    invoke-static {p1}, Lcom/davemorrissey/labs/subscaleview/ImageSource;->bitmap(Landroid/graphics/Bitmap;)Lcom/davemorrissey/labs/subscaleview/ImageSource;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setImage(Lcom/davemorrissey/labs/subscaleview/ImageSource;)V

    .line 43
    :cond_1
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/ImageEditorActivity;->ui:Lcom/liber8tech/tago/android/activity/ImageEditorActivityUI;

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/activity/ImageEditorActivityUI;->getUseButton()Lcom/liber8tech/tago/android/view/TagoButton;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    new-instance v0, Lcom/liber8tech/tago/android/activity/ImageEditorActivity$onCreate$2;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/android/activity/ImageEditorActivity$onCreate$2;-><init>(Lcom/liber8tech/tago/android/activity/ImageEditorActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 164
    new-instance v1, Lcom/liber8tech/tago/android/activity/ImageEditorActivity$inlined$sam$i$android_view_View_OnClickListener$0;

    invoke-direct {v1, v0}, Lcom/liber8tech/tago/android/activity/ImageEditorActivity$inlined$sam$i$android_view_View_OnClickListener$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 69
    invoke-super {p0}, Lcom/liber8tech/tago/android/activity/BaseActivity;->onDestroy()V

    .line 70
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/activity/ImageEditorActivity;->getDisposeBag()Lio/reactivex/disposables/CompositeDisposable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method public final setImageEditorService(Lcom/liber8tech/tago/service/ImageEditorService;)V
    .locals 1
    .param p1    # Lcom/liber8tech/tago/service/ImageEditorService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/ImageEditorActivity;->imageEditorService:Lcom/liber8tech/tago/service/ImageEditorService;

    return-void
.end method
