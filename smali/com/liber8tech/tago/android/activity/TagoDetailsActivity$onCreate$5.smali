.class final Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$5;
.super Lkotlin/jvm/internal/Lambda;
.source "TagoDetailsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;->onCreate(Landroid/os/Bundle;)V
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
    value = "SMAP\nTagoDetailsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TagoDetailsActivity.kt\ncom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$5\n*L\n1#1,98:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
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
.field final synthetic $id:Ljava/lang/String;

.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$5;->this$0:Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;

    iput-object p2, p0, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$5;->$id:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$5;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 75
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$5;->this$0:Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;

    invoke-static {p1}, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;->access$getDevice$p(Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;)Lcom/liber8tech/tago/model/TagoDevice;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$5;->this$0:Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;

    invoke-static {v0}, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;->access$getUi$p(Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;)Lcom/liber8tech/tago/android/ui/TagoDetailsUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/ui/TagoDetailsUI;->getName()Lcom/liber8tech/tago/android/view/TextInputView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/view/TextInputView;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/liber8tech/tago/model/TagoDevice;->setName(Ljava/lang/String;)V

    .line 77
    sget-object v0, Lcom/liber8tech/tago/util/RxRealm;->INSTANCE:Lcom/liber8tech/tago/util/RxRealm;

    const-class v1, Lcom/liber8tech/tago/model/TagoDevice;

    const-string v2, "identifier"

    iget-object v3, p0, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$5;->$id:Ljava/lang/String;

    const-string v4, "id"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/liber8tech/tago/util/RxRealm;->delete(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 78
    new-instance v1, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$5$1$1;

    invoke-direct {v1, p1}, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$5$1$1;-><init>(Lcom/liber8tech/tago/model/TagoDevice;)V

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 79
    new-instance v0, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$5$$special$$inlined$let$lambda$1;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$5$$special$$inlined$let$lambda$1;-><init>(Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$5;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    sget-object v1, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$5$1$3;->INSTANCE:Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$5$1$3;

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 80
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$5;->this$0:Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;->getDisposeBag()Lio/reactivex/disposables/CompositeDisposable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    :cond_0
    return-void
.end method
