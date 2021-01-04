.class final Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SettingsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/SettingsActivity;->onCreate(Landroid/os/Bundle;)V
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
    value = "SMAP\nSettingsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsActivity.kt\ncom/liber8tech/tago/android/activity/SettingsActivity$onCreate$2\n*L\n1#1,151:1\n*E\n"
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
.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/SettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$2;->this$0:Lcom/liber8tech/tago/android/activity/SettingsActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$2;->invoke(Landroid/view/View;)V

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

    .line 74
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$2;->this$0:Lcom/liber8tech/tago/android/activity/SettingsActivity;

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/activity/SettingsActivity;->getIapService()Lcom/liber8tech/tago/service/IAPService;

    move-result-object p1

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$2;->this$0:Lcom/liber8tech/tago/android/activity/SettingsActivity;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/liber8tech/tago/service/IAPService;->createConnection(Landroid/content/Context;)Lio/reactivex/Observable;

    move-result-object p1

    .line 75
    new-instance v0, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$2$1;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$2$1;-><init>(Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$2;)V

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 76
    new-instance v0, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$2$2;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$2$2;-><init>(Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$2;)V

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 80
    sget-object v0, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$2$3;->INSTANCE:Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$2$3;

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 81
    new-instance v0, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$2$4;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$2$4;-><init>(Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$2;)V

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Lio/reactivex/Observable;->toList()Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "iapService.createConnect\u2026io()) }\n        .toList()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-static {p1}, Lcom/liber8tech/tago/util/extension/RxExtensionsKt;->asyncIO(Lio/reactivex/Single;)Lio/reactivex/Single;

    move-result-object p1

    .line 84
    new-instance v0, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$2$5;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$2$5;-><init>(Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$2;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    sget-object v1, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$2$6;->INSTANCE:Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$2$6;

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 85
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$2;->this$0:Lcom/liber8tech/tago/android/activity/SettingsActivity;

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/activity/SettingsActivity;->getDisposeBag()Lio/reactivex/disposables/CompositeDisposable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
