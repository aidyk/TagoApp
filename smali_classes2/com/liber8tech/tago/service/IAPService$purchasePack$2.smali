.class final Lcom/liber8tech/tago/service/IAPService$purchasePack$2;
.super Ljava/lang/Object;
.source "IAPService.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/service/IAPService;->purchasePack(Landroid/app/Activity;Ljava/lang/String;)Lio/reactivex/Observable;
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

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0010\u0000\u001a\u001e\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0003 \u0004*\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00020\u0002\u0018\u00010\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0004\u0008\u0007\u0010\u0008"
    }
    d2 = {
        "<anonymous>",
        "Lio/reactivex/Observable;",
        "",
        "Lcom/android/billingclient/api/Purchase;",
        "kotlin.jvm.PlatformType",
        "it",
        "",
        "apply",
        "(Ljava/lang/Integer;)Lio/reactivex/Observable;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liber8tech/tago/service/IAPService;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/service/IAPService;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/service/IAPService$purchasePack$2;->this$0:Lcom/liber8tech/tago/service/IAPService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Integer;)Lio/reactivex/Observable;
    .locals 2
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object p1, p0, Lcom/liber8tech/tago/service/IAPService$purchasePack$2;->this$0:Lcom/liber8tech/tago/service/IAPService;

    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/liber8tech/tago/service/IAPService;->access$setPurchaseUpdateSubject$p(Lcom/liber8tech/tago/service/IAPService;Lio/reactivex/subjects/PublishSubject;)V

    .line 86
    iget-object p1, p0, Lcom/liber8tech/tago/service/IAPService$purchasePack$2;->this$0:Lcom/liber8tech/tago/service/IAPService;

    invoke-static {p1}, Lcom/liber8tech/tago/service/IAPService;->access$getPurchaseUpdateSubject$p(Lcom/liber8tech/tago/service/IAPService;)Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    check-cast p1, Lio/reactivex/Observable;

    goto :goto_0

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    iget-object v1, p0, Lcom/liber8tech/tago/service/IAPService$purchasePack$2;->this$0:Lcom/liber8tech/tago/service/IAPService;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v1, p1}, Lcom/liber8tech/tago/service/IAPService;->access$getIAPErrorType(Lcom/liber8tech/tago/service/IAPService;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/service/IAPService$purchasePack$2;->apply(Ljava/lang/Integer;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
