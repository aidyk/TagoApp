.class final Lcom/liber8tech/tago/android/activity/SelectTagoActivity$observeServices$1$1;
.super Ljava/lang/Object;
.source "SelectTagoActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/SelectTagoActivity$observeServices$1;->accept(Lkotlin/Pair;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic $state:Lkotlin/Pair;

.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/SelectTagoActivity$observeServices$1;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/SelectTagoActivity$observeServices$1;Lkotlin/Pair;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/SelectTagoActivity$observeServices$1$1;->this$0:Lcom/liber8tech/tago/android/activity/SelectTagoActivity$observeServices$1;

    iput-object p2, p0, Lcom/liber8tech/tago/android/activity/SelectTagoActivity$observeServices$1$1;->$state:Lkotlin/Pair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 132
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/SelectTagoActivity$observeServices$1$1;->$state:Lkotlin/Pair;

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 133
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/SelectTagoActivity$observeServices$1$1;->this$0:Lcom/liber8tech/tago/android/activity/SelectTagoActivity$observeServices$1;

    iget-object p1, p1, Lcom/liber8tech/tago/android/activity/SelectTagoActivity$observeServices$1;->this$0:Lcom/liber8tech/tago/android/activity/SelectTagoActivity;

    invoke-static {p1}, Lcom/liber8tech/tago/android/activity/SelectTagoActivity;->access$requestBleDialog(Lcom/liber8tech/tago/android/activity/SelectTagoActivity;)V

    goto :goto_0

    .line 135
    :cond_0
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/SelectTagoActivity$observeServices$1$1;->this$0:Lcom/liber8tech/tago/android/activity/SelectTagoActivity$observeServices$1;

    iget-object p1, p1, Lcom/liber8tech/tago/android/activity/SelectTagoActivity$observeServices$1;->this$0:Lcom/liber8tech/tago/android/activity/SelectTagoActivity;

    invoke-static {p1}, Lcom/liber8tech/tago/android/activity/SelectTagoActivity;->access$requestLocationDialog(Lcom/liber8tech/tago/android/activity/SelectTagoActivity;)V

    :goto_0
    return-void
.end method
