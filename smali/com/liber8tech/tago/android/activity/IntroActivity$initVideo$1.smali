.class final Lcom/liber8tech/tago/android/activity/IntroActivity$initVideo$1;
.super Ljava/lang/Object;
.source "IntroActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/IntroActivity;->initVideo()V
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
.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/IntroActivity;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/IntroActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/IntroActivity$initVideo$1;->this$0:Lcom/liber8tech/tago/android/activity/IntroActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 99
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/IntroActivity$initVideo$1;->this$0:Lcom/liber8tech/tago/android/activity/IntroActivity;

    new-instance v0, Lcom/liber8tech/tago/android/activity/IntroActivity$initVideo$1$1;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/android/activity/IntroActivity$initVideo$1$1;-><init>(Lcom/liber8tech/tago/android/activity/IntroActivity$initVideo$1;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2, v1}, Lcom/liber8tech/tago/util/extension/ContextExtensionKt;->showToUDialog$default(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method
