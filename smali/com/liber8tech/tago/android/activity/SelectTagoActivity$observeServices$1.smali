.class final Lcom/liber8tech/tago/android/activity/SelectTagoActivity$observeServices$1;
.super Ljava/lang/Object;
.source "SelectTagoActivity.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/SelectTagoActivity;->observeServices()V
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
        "state",
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
.field final synthetic $snackbar:Landroid/support/design/widget/Snackbar;

.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/SelectTagoActivity;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/SelectTagoActivity;Landroid/support/design/widget/Snackbar;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/SelectTagoActivity$observeServices$1;->this$0:Lcom/liber8tech/tago/android/activity/SelectTagoActivity;

    iput-object p2, p0, Lcom/liber8tech/tago/android/activity/SelectTagoActivity$observeServices$1;->$snackbar:Landroid/support/design/widget/Snackbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/SelectTagoActivity$observeServices$1;->accept(Lkotlin/Pair;)V

    return-void
.end method

.method public final accept(Lkotlin/Pair;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 125
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/SelectTagoActivity$observeServices$1;->this$0:Lcom/liber8tech/tago/android/activity/SelectTagoActivity;

    invoke-static {p1}, Lcom/liber8tech/tago/android/activity/SelectTagoActivity;->access$getUi$p(Lcom/liber8tech/tago/android/activity/SelectTagoActivity;)Lcom/liber8tech/tago/android/ui/SelectTagoActivityUI;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/liber8tech/tago/android/ui/SelectTagoActivityUI;->setDim(Z)V

    .line 127
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/SelectTagoActivity$observeServices$1;->$snackbar:Landroid/support/design/widget/Snackbar;

    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->dismiss()V

    goto :goto_1

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SelectTagoActivity$observeServices$1;->this$0:Lcom/liber8tech/tago/android/activity/SelectTagoActivity;

    invoke-static {v0}, Lcom/liber8tech/tago/android/activity/SelectTagoActivity;->access$getUi$p(Lcom/liber8tech/tago/android/activity/SelectTagoActivity;)Lcom/liber8tech/tago/android/ui/SelectTagoActivityUI;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/liber8tech/tago/android/ui/SelectTagoActivityUI;->setDim(Z)V

    .line 130
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SelectTagoActivity$observeServices$1;->$snackbar:Landroid/support/design/widget/Snackbar;

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0f004e

    goto :goto_0

    :cond_1
    const v1, 0x7f0f00b5

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/design/widget/Snackbar;->setText(I)Landroid/support/design/widget/Snackbar;

    .line 131
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SelectTagoActivity$observeServices$1;->$snackbar:Landroid/support/design/widget/Snackbar;

    const v1, 0x104000a

    new-instance v2, Lcom/liber8tech/tago/android/activity/SelectTagoActivity$observeServices$1$1;

    invoke-direct {v2, p0, p1}, Lcom/liber8tech/tago/android/activity/SelectTagoActivity$observeServices$1$1;-><init>(Lcom/liber8tech/tago/android/activity/SelectTagoActivity$observeServices$1;Lkotlin/Pair;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    .line 138
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/SelectTagoActivity$observeServices$1;->$snackbar:Landroid/support/design/widget/Snackbar;

    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    :goto_1
    return-void
.end method
