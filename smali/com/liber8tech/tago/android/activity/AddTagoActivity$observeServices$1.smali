.class final Lcom/liber8tech/tago/android/activity/AddTagoActivity$observeServices$1;
.super Ljava/lang/Object;
.source "AddTagoActivity.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/AddTagoActivity;->observeServices()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lkotlin/Pair<",
        "+",
        "Ljava/lang/Boolean;",
        "+",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012&\u0010\u0002\u001a\"\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004 \u0005*\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lkotlin/Pair;",
        "",
        "kotlin.jvm.PlatformType",
        "accept"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/AddTagoActivity;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/AddTagoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/AddTagoActivity$observeServices$1;->this$0:Lcom/liber8tech/tago/android/activity/AddTagoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/AddTagoActivity$observeServices$1;->accept(Lkotlin/Pair;)V

    return-void
.end method

.method public final accept(Lkotlin/Pair;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 74
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 75
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/AddTagoActivity$observeServices$1;->this$0:Lcom/liber8tech/tago/android/activity/AddTagoActivity;

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/AddTagoActivity$observeServices$1;->this$0:Lcom/liber8tech/tago/android/activity/AddTagoActivity;

    invoke-static {v0}, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->access$getMainView$p(Lcom/liber8tech/tago/android/activity/AddTagoActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->changeView(Landroid/view/View;)V

    goto :goto_0

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/AddTagoActivity$observeServices$1;->this$0:Lcom/liber8tech/tago/android/activity/AddTagoActivity;

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/AddTagoActivity$observeServices$1;->this$0:Lcom/liber8tech/tago/android/activity/AddTagoActivity;

    invoke-static {v0}, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->access$getErrorView$p(Lcom/liber8tech/tago/android/activity/AddTagoActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/liber8tech/tago/android/activity/AddTagoActivity;->changeView(Landroid/view/View;)V

    :goto_0
    return-void
.end method
