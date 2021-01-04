.class final Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$1;
.super Ljava/lang/Object;
.source "TagoDetailsActivity.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


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
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/liber8tech/tago/model/TagoDevice;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTagoDetailsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TagoDetailsActivity.kt\ncom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$1\n+ 2 ContextUtils.kt\norg/jetbrains/anko/ContextUtilsKt\n*L\n1#1,98:1\n62#2:99\n*E\n*S KotlinDebug\n*F\n+ 1 TagoDetailsActivity.kt\ncom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$1\n*L\n45#1:99\n*E\n"
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
        "Lcom/liber8tech/tago/model/TagoDevice;",
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
.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$1;->this$0:Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/liber8tech/tago/model/TagoDevice;)V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$1;->this$0:Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;

    invoke-static {v0, p1}, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;->access$setDevice$p(Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;Lcom/liber8tech/tago/model/TagoDevice;)V

    .line 45
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$1;->this$0:Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;

    invoke-static {v0}, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;->access$getUi$p(Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;)Lcom/liber8tech/tago/android/ui/TagoDetailsUI;

    move-result-object v0

    iget-object v1, p0, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$1;->this$0:Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;

    const-string v2, "it"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lcom/liber8tech/tago/android/ui/TagoDetailsUI;->setTago(Landroid/content/Context;Lcom/liber8tech/tago/model/TagoDevice;)V

    .line 46
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$1;->this$0:Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;

    invoke-virtual {p1}, Lcom/liber8tech/tago/model/TagoDevice;->getName()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;->access$refreshToolbarTitle$s-1897208196(Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Lcom/liber8tech/tago/model/TagoDevice;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$1;->accept(Lcom/liber8tech/tago/model/TagoDevice;)V

    return-void
.end method
