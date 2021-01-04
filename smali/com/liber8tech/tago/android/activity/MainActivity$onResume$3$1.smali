.class final Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3;->accept(Lcom/liber8tech/tago/service/UpdateProfileData;)V
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
.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3$1;->this$0:Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 55
    check-cast p1, Lorg/jetbrains/anko/AlertBuilder;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3$1;->invoke(Lorg/jetbrains/anko/AlertBuilder;)V

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

    .line 155
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3$1;->this$0:Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3;

    iget-object p1, p1, Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3;->this$0:Lcom/liber8tech/tago/android/activity/MainActivity;

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/activity/MainActivity;->getProfileService()Lcom/liber8tech/tago/service/ProfileService;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Lcom/liber8tech/tago/service/ProfileService;->updateTerms(ZZ)Lio/reactivex/Single;

    move-result-object p1

    .line 156
    invoke-static {p1}, Lcom/liber8tech/tago/util/extension/RxExtensionsKt;->asyncIO(Lio/reactivex/Single;)Lio/reactivex/Single;

    move-result-object p1

    .line 157
    new-instance v0, Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3$1$1;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3$1$1;-><init>(Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3$1;)V

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    .line 158
    sget-object v0, Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3$1$2;->INSTANCE:Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3$1$2;

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->flatMapObservable(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 159
    new-instance v0, Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3$1$3;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3$1$3;-><init>(Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3$1;)V

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 160
    sget-object v0, Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3$1$4;->INSTANCE:Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3$1$4;

    check-cast v0, Lio/reactivex/functions/Consumer;

    sget-object v1, Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3$1$5;->INSTANCE:Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3$1$5;

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
