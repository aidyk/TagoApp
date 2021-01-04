.class public abstract Lcom/liber8tech/tago/android/activity/BaseActivity;
.super Lcom/trello/rxlifecycle2/components/support/RxAppCompatActivity;
.source "BaseActivity.kt"

# interfaces
.implements Lcom/liber8tech/tago/android/activity/ToolbarElements;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseActivity.kt\ncom/liber8tech/tago/android/activity/BaseActivity\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,68:1\n220#2,2:69\n*E\n*S KotlinDebug\n*F\n+ 1 BaseActivity.kt\ncom/liber8tech/tago/android/activity/BaseActivity\n*L\n36#1,2:69\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0002\u0008\u0004\u0008&\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rJ\u0012\u0010\u000e\u001a\u00020\u000b2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0014J\u0010\u0010\u0011\u001a\u00020\u000b2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013J\u0006\u0010\u0014\u001a\u00020\u000bJ\u0006\u0010\u0015\u001a\u00020\u000bJ\u0006\u0010\u0016\u001a\u00020\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/liber8tech/tago/android/activity/BaseActivity;",
        "Lcom/trello/rxlifecycle2/components/support/RxAppCompatActivity;",
        "Lcom/liber8tech/tago/android/activity/ToolbarElements;",
        "()V",
        "disposeBag",
        "Lio/reactivex/disposables/CompositeDisposable;",
        "getDisposeBag",
        "()Lio/reactivex/disposables/CompositeDisposable;",
        "ui",
        "Lcom/liber8tech/tago/android/activity/BaseActivityUI;",
        "changeView",
        "",
        "errorView",
        "Landroid/view/View;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "refreshToolbarTitle",
        "title",
        "",
        "selectorIconDown",
        "selectorIconUp",
        "showSelectorIcon",
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

.field private final disposeBag:Lio/reactivex/disposables/CompositeDisposable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private ui:Lcom/liber8tech/tago/android/activity/BaseActivityUI;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/trello/rxlifecycle2/components/support/RxAppCompatActivity;-><init>()V

    .line 16
    new-instance v0, Lcom/liber8tech/tago/android/activity/BaseActivityUI;

    invoke-direct {v0}, Lcom/liber8tech/tago/android/activity/BaseActivityUI;-><init>()V

    iput-object v0, p0, Lcom/liber8tech/tago/android/activity/BaseActivity;->ui:Lcom/liber8tech/tago/android/activity/BaseActivityUI;

    .line 17
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/liber8tech/tago/android/activity/BaseActivity;->disposeBag:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/BaseActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/BaseActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/BaseActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/liber8tech/tago/android/activity/BaseActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/BaseActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/liber8tech/tago/android/activity/BaseActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final changeView(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "errorView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/BaseActivity;->ui:Lcom/liber8tech/tago/android/activity/BaseActivityUI;

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/activity/BaseActivityUI;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 30
    iget-object v2, p0, Lcom/liber8tech/tago/android/activity/BaseActivity;->ui:Lcom/liber8tech/tago/android/activity/BaseActivityUI;

    invoke-virtual {v2}, Lcom/liber8tech/tago/android/activity/BaseActivityUI;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/BaseActivity;->ui:Lcom/liber8tech/tago/android/activity/BaseActivityUI;

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/activity/BaseActivityUI;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final getDisposeBag()Lio/reactivex/disposables/CompositeDisposable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/BaseActivity;->disposeBag:Lio/reactivex/disposables/CompositeDisposable;

    return-object v0
.end method

.method public getTitleOnClick()Lkotlin/jvm/functions/Function1;
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

    .line 14
    invoke-static {p0}, Lcom/liber8tech/tago/android/activity/ToolbarElements$DefaultImpls;->getTitleOnClick(Lcom/liber8tech/tago/android/activity/ToolbarElements;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    return-object v0
.end method

.method public getToolbarLeftIcon()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 14
    invoke-static {p0}, Lcom/liber8tech/tago/android/activity/ToolbarElements$DefaultImpls;->getToolbarLeftIcon(Lcom/liber8tech/tago/android/activity/ToolbarElements;)Ljava/lang/Integer;

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

    .line 14
    invoke-static {p0}, Lcom/liber8tech/tago/android/activity/ToolbarElements$DefaultImpls;->getToolbarLeftIconClick(Lcom/liber8tech/tago/android/activity/ToolbarElements;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    return-object v0
.end method

.method public getToolbarRightIcon()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 14
    invoke-static {p0}, Lcom/liber8tech/tago/android/activity/ToolbarElements$DefaultImpls;->getToolbarRightIcon(Lcom/liber8tech/tago/android/activity/ToolbarElements;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getToolbarRightIconClick()Lkotlin/jvm/functions/Function1;
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

    .line 14
    invoke-static {p0}, Lcom/liber8tech/tago/android/activity/ToolbarElements$DefaultImpls;->getToolbarRightIconClick(Lcom/liber8tech/tago/android/activity/ToolbarElements;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    return-object v0
.end method

.method public getToolbarTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 14
    invoke-static {p0}, Lcom/liber8tech/tago/android/activity/ToolbarElements$DefaultImpls;->getToolbarTitle(Lcom/liber8tech/tago/android/activity/ToolbarElements;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 20
    invoke-super {p0, p1}, Lcom/trello/rxlifecycle2/components/support/RxAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/BaseActivity;->ui:Lcom/liber8tech/tago/android/activity/BaseActivityUI;

    check-cast p1, Lorg/jetbrains/anko/AnkoComponent;

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-static {p1, v0}, Lorg/jetbrains/anko/AnkoContextKt;->setContentView(Lorg/jetbrains/anko/AnkoComponent;Landroid/app/Activity;)Landroid/view/View;

    return-void
.end method

.method public final refreshToolbarTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 25
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/BaseActivity;->ui:Lcom/liber8tech/tago/android/activity/BaseActivityUI;

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/activity/BaseActivityUI;->getToolbar()Lcom/liber8tech/tago/android/view/StyledToolbar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liber8tech/tago/android/view/StyledToolbar;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final selectorIconDown()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/BaseActivity;->ui:Lcom/liber8tech/tago/android/activity/BaseActivityUI;

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/activity/BaseActivityUI;->getToolbar()Lcom/liber8tech/tago/android/view/StyledToolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/view/StyledToolbar;->getSelectorIcon()Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0700a4

    invoke-static {v0, v1}, Lorg/jetbrains/anko/Sdk15PropertiesKt;->setImageResource(Landroid/widget/ImageView;I)V

    return-void
.end method

.method public final selectorIconUp()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/BaseActivity;->ui:Lcom/liber8tech/tago/android/activity/BaseActivityUI;

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/activity/BaseActivityUI;->getToolbar()Lcom/liber8tech/tago/android/view/StyledToolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/view/StyledToolbar;->getSelectorIcon()Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0700a5

    invoke-static {v0, v1}, Lorg/jetbrains/anko/Sdk15PropertiesKt;->setImageResource(Landroid/widget/ImageView;I)V

    return-void
.end method

.method public final showSelectorIcon()V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/BaseActivity;->ui:Lcom/liber8tech/tago/android/activity/BaseActivityUI;

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/activity/BaseActivityUI;->getToolbar()Lcom/liber8tech/tago/android/view/StyledToolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/view/StyledToolbar;->getSelectorIcon()Landroid/widget/ImageView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    .line 69
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
