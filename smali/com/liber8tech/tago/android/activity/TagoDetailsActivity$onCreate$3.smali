.class final Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$3;
.super Lkotlin/jvm/internal/Lambda;
.source "TagoDetailsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


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
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/View;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTagoDetailsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TagoDetailsActivity.kt\ncom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$3\n+ 2 ContextUtils.kt\norg/jetbrains/anko/ContextUtilsKt\n*L\n1#1,98:1\n62#2:99\n75#2:100\n*E\n*S KotlinDebug\n*F\n+ 1 TagoDetailsActivity.kt\ncom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$3\n*L\n51#1:99\n51#1:100\n*E\n"
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
.field final synthetic $id:Ljava/lang/String;

.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$3;->this$0:Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;

    iput-object p2, p0, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$3;->$id:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$3;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 9
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$3;->this$0:Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;

    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$3;->this$0:Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;

    const v0, 0x1020002

    .line 100
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const-string p1, "findViewById(id)"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    new-instance p1, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$3$1;

    invoke-direct {p1, p0}, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$3$1;-><init>(Lcom/liber8tech/tago/android/activity/TagoDetailsActivity$onCreate$3;)V

    move-object v5, p1

    check-cast v5, Lkotlin/jvm/functions/Function1;

    const v2, 0x7f0f0089

    const v3, 0x104000a

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/liber8tech/tago/util/extension/ContextExtensionKt;->tintedSnack$default(Landroid/content/Context;IILandroid/view/View;Lkotlin/jvm/functions/Function1;IILjava/lang/Object;)V

    return-void
.end method
