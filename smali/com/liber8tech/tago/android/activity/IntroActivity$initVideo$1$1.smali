.class final Lcom/liber8tech/tago/android/activity/IntroActivity$initVideo$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "IntroActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/IntroActivity$initVideo$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/jetbrains/anko/AlertBuilder<",
        "+",
        "Landroid/content/DialogInterface;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIntroActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntroActivity.kt\ncom/liber8tech/tago/android/activity/IntroActivity$initVideo$1$1\n*L\n1#1,150:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lorg/jetbrains/anko/AlertBuilder;",
        "Landroid/content/DialogInterface;",
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
.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/IntroActivity$initVideo$1;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/IntroActivity$initVideo$1;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/IntroActivity$initVideo$1$1;->this$0:Lcom/liber8tech/tago/android/activity/IntroActivity$initVideo$1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 37
    check-cast p1, Lorg/jetbrains/anko/AlertBuilder;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/IntroActivity$initVideo$1$1;->invoke(Lorg/jetbrains/anko/AlertBuilder;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lorg/jetbrains/anko/AlertBuilder;)V
    .locals 2
    .param p1    # Lorg/jetbrains/anko/AlertBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jetbrains/anko/AlertBuilder<",
            "+",
            "Landroid/content/DialogInterface;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/IntroActivity$initVideo$1$1;->this$0:Lcom/liber8tech/tago/android/activity/IntroActivity$initVideo$1;

    iget-object p1, p1, Lcom/liber8tech/tago/android/activity/IntroActivity$initVideo$1;->this$0:Lcom/liber8tech/tago/android/activity/IntroActivity;

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/activity/IntroActivity;->getAuthService()Lcom/liber8tech/tago/service/AuthService;

    move-result-object p1

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/IntroActivity$initVideo$1$1;->this$0:Lcom/liber8tech/tago/android/activity/IntroActivity$initVideo$1;

    iget-object v0, v0, Lcom/liber8tech/tago/android/activity/IntroActivity$initVideo$1;->this$0:Lcom/liber8tech/tago/android/activity/IntroActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/liber8tech/tago/service/AuthService;->signInFacebook(Landroid/app/Activity;)Lio/reactivex/Single;

    move-result-object p1

    .line 101
    invoke-static {p1}, Lcom/liber8tech/tago/util/extension/RxExtensionsKt;->asyncIO(Lio/reactivex/Single;)Lio/reactivex/Single;

    move-result-object p1

    .line 102
    new-instance v0, Lcom/liber8tech/tago/android/activity/IntroActivity$initVideo$1$1$1;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/android/activity/IntroActivity$initVideo$1$1$1;-><init>(Lcom/liber8tech/tago/android/activity/IntroActivity$initVideo$1$1;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    .line 108
    sget-object v1, Lcom/liber8tech/tago/android/activity/IntroActivity$initVideo$1$1$2;->INSTANCE:Lcom/liber8tech/tago/android/activity/IntroActivity$initVideo$1$1$2;

    check-cast v1, Lio/reactivex/functions/Consumer;

    .line 102
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 109
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/IntroActivity$initVideo$1$1;->this$0:Lcom/liber8tech/tago/android/activity/IntroActivity$initVideo$1;

    iget-object v0, v0, Lcom/liber8tech/tago/android/activity/IntroActivity$initVideo$1;->this$0:Lcom/liber8tech/tago/android/activity/IntroActivity;

    invoke-static {v0}, Lcom/liber8tech/tago/android/activity/IntroActivity;->access$getDisposeBag$p(Lcom/liber8tech/tago/android/activity/IntroActivity;)Lio/reactivex/disposables/CompositeDisposable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
