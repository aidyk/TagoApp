.class final Lcom/liber8tech/tago/android/activity/MainActivity$setupCreatedPatternList$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/MainActivity$setupCreatedPatternList$1;->accept(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/View;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/liber8tech/tago/android/activity/MainActivity$setupCreatedPatternList$1$2\n*L\n1#1,625:1\n*E\n"
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
        "view",
        "Landroid/view/View;",
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
.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/MainActivity$setupCreatedPatternList$1;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/MainActivity$setupCreatedPatternList$1;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/MainActivity$setupCreatedPatternList$1$2;->this$0:Lcom/liber8tech/tago/android/activity/MainActivity$setupCreatedPatternList$1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 55
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/MainActivity$setupCreatedPatternList$1$2;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 279
    instance-of v0, p1, Lcom/liber8tech/tago/model/CreatedPattern;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/MainActivity$setupCreatedPatternList$1$2;->this$0:Lcom/liber8tech/tago/android/activity/MainActivity$setupCreatedPatternList$1;

    iget-object v0, v0, Lcom/liber8tech/tago/android/activity/MainActivity$setupCreatedPatternList$1;->this$0:Lcom/liber8tech/tago/android/activity/MainActivity;

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/activity/MainActivity;->getImageEditorService()Lcom/liber8tech/tago/service/ImageEditorService;

    move-result-object v0

    check-cast p1, Lcom/liber8tech/tago/model/CreatedPattern;

    invoke-virtual {v0, p1}, Lcom/liber8tech/tago/service/ImageEditorService;->deletePattern(Lcom/liber8tech/tago/model/CreatedPattern;)Lio/reactivex/Single;

    move-result-object p1

    .line 281
    invoke-static {p1}, Lcom/liber8tech/tago/util/extension/RxExtensionsKt;->asyncIO(Lio/reactivex/Single;)Lio/reactivex/Single;

    move-result-object p1

    .line 282
    sget-object v0, Lcom/liber8tech/tago/android/activity/MainActivity$setupCreatedPatternList$1$2$1;->INSTANCE:Lcom/liber8tech/tago/android/activity/MainActivity$setupCreatedPatternList$1$2$1;

    check-cast v0, Lio/reactivex/functions/Consumer;

    sget-object v1, Lcom/liber8tech/tago/android/activity/MainActivity$setupCreatedPatternList$1$2$2;->INSTANCE:Lcom/liber8tech/tago/android/activity/MainActivity$setupCreatedPatternList$1$2$2;

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 283
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/MainActivity$setupCreatedPatternList$1$2;->this$0:Lcom/liber8tech/tago/android/activity/MainActivity$setupCreatedPatternList$1;

    iget-object v0, v0, Lcom/liber8tech/tago/android/activity/MainActivity$setupCreatedPatternList$1;->this$0:Lcom/liber8tech/tago/android/activity/MainActivity;

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/activity/MainActivity;->getDisposeBag()Lio/reactivex/disposables/CompositeDisposable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    :cond_0
    return-void
.end method
