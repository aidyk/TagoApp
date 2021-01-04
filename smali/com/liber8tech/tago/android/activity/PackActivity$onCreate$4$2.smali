.class final Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4$2;
.super Ljava/lang/Object;
.source "PackActivity.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4;->invoke(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "TT;",
        "Lio/reactivex/ObservableSource<",
        "+TR;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPackActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PackActivity.kt\ncom/liber8tech/tago/android/activity/PackActivity$onCreate$4$2\n*L\n1#1,185:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a&\u0012\u000c\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002 \u0003*\u0012\u0012\u000c\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002\u0018\u00010\u00010\u00012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "Lio/reactivex/Observable;",
        "",
        "kotlin.jvm.PlatformType",
        "it",
        "",
        "Lcom/android/billingclient/api/Purchase;",
        "apply"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4$2;->this$0:Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/util/List;)Lio/reactivex/Observable;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 76
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4$2;->this$0:Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4;

    iget-object p1, p1, Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4;->this$0:Lcom/liber8tech/tago/android/activity/PackActivity;

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/activity/PackActivity;->getImageService()Lcom/liber8tech/tago/service/ImageEditorService;

    move-result-object p1

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4$2;->this$0:Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4;

    iget-object v0, v0, Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4;->$currentPack:Lcom/liber8tech/tago/model/Pack;

    invoke-virtual {p1, v0}, Lcom/liber8tech/tago/service/ImageEditorService;->downloadPackZip(Lcom/liber8tech/tago/model/Pack;)Lio/reactivex/Observable;

    move-result-object p1

    .line 77
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    .line 79
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/PackActivity$onCreate$4$2;->apply(Ljava/util/List;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
