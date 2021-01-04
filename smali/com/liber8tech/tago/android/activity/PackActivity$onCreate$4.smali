.class final Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4;
.super Lkotlin/jvm/internal/Lambda;
.source "PackActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/PackActivity;->onCreate(Landroid/os/Bundle;)V
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
    value = "SMAP\nPackActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PackActivity.kt\ncom/liber8tech/tago/android/activity/PackActivity$onCreate$4\n*L\n1#1,185:1\n*E\n"
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
        "it",
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
.field final synthetic $currentPack:Lcom/liber8tech/tago/model/Pack;

.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/PackActivity;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/PackActivity;Lcom/liber8tech/tago/model/Pack;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4;->this$0:Lcom/liber8tech/tago/android/activity/PackActivity;

    iput-object p2, p0, Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4;->$currentPack:Lcom/liber8tech/tago/model/Pack;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4;->$currentPack:Lcom/liber8tech/tago/model/Pack;

    invoke-virtual {p1}, Lcom/liber8tech/tago/model/Pack;->getProductId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 70
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4;->this$0:Lcom/liber8tech/tago/android/activity/PackActivity;

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/activity/PackActivity;->getIapService()Lcom/liber8tech/tago/service/IAPService;

    move-result-object p1

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4;->this$0:Lcom/liber8tech/tago/android/activity/PackActivity;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/liber8tech/tago/service/IAPService;->createConnection(Landroid/content/Context;)Lio/reactivex/Observable;

    move-result-object p1

    .line 71
    new-instance v0, Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4$1;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4$1;-><init>(Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4;)V

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 72
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "iapService.createConnect\u2026scribeOn(Schedulers.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4;->this$0:Lcom/liber8tech/tago/android/activity/PackActivity;

    check-cast v0, Lcom/trello/rxlifecycle2/LifecycleProvider;

    sget-object v1, Lcom/trello/rxlifecycle2/android/ActivityEvent;->DESTROY:Lcom/trello/rxlifecycle2/android/ActivityEvent;

    invoke-static {p1, v0, v1}, Lcom/trello/rxlifecycle2/kotlin/RxlifecycleKt;->bindUntilEvent(Lio/reactivex/Observable;Lcom/trello/rxlifecycle2/LifecycleProvider;Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 74
    new-instance v0, Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4$2;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4$2;-><init>(Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4;)V

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 82
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 83
    new-instance v0, Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4$3;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4$3;-><init>(Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    .line 87
    new-instance v1, Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4$4;

    invoke-direct {v1, p0}, Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4$4;-><init>(Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    .line 83
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 93
    :cond_0
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4;->this$0:Lcom/liber8tech/tago/android/activity/PackActivity;

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/activity/PackActivity;->getImageService()Lcom/liber8tech/tago/service/ImageEditorService;

    move-result-object p1

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4;->$currentPack:Lcom/liber8tech/tago/model/Pack;

    invoke-virtual {p1, v0}, Lcom/liber8tech/tago/service/ImageEditorService;->downloadPackZip(Lcom/liber8tech/tago/model/Pack;)Lio/reactivex/Observable;

    move-result-object p1

    .line 94
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 95
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 96
    new-instance v0, Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4$5;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4$5;-><init>(Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    .line 100
    new-instance v1, Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4$6;

    invoke-direct {v1, p0}, Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4$6;-><init>(Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    .line 96
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 105
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4;->this$0:Lcom/liber8tech/tago/android/activity/PackActivity;

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/activity/PackActivity;->getDisposeBag()Lio/reactivex/disposables/CompositeDisposable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    :goto_0
    return-void
.end method
