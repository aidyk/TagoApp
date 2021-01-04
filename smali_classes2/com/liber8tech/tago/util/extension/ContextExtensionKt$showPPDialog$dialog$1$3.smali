.class final Lcom/liber8tech/tago/util/extension/ContextExtensionKt$showPPDialog$dialog$1$3;
.super Lkotlin/jvm/internal/Lambda;
.source "ContextExtension.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/util/extension/ContextExtensionKt$showPPDialog$dialog$1;->invoke(Lorg/jetbrains/anko/AlertBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/content/DialogInterface;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
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
.field final synthetic this$0:Lcom/liber8tech/tago/util/extension/ContextExtensionKt$showPPDialog$dialog$1;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/util/extension/ContextExtensionKt$showPPDialog$dialog$1;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/util/extension/ContextExtensionKt$showPPDialog$dialog$1$3;->this$0:Lcom/liber8tech/tago/util/extension/ContextExtensionKt$showPPDialog$dialog$1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/content/DialogInterface;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/util/extension/ContextExtensionKt$showPPDialog$dialog$1$3;->invoke(Landroid/content/DialogInterface;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object p1, p0, Lcom/liber8tech/tago/util/extension/ContextExtensionKt$showPPDialog$dialog$1$3;->this$0:Lcom/liber8tech/tago/util/extension/ContextExtensionKt$showPPDialog$dialog$1;

    iget-object p1, p1, Lcom/liber8tech/tago/util/extension/ContextExtensionKt$showPPDialog$dialog$1;->$this_showPPDialog:Landroid/content/Context;

    iget-object v0, p0, Lcom/liber8tech/tago/util/extension/ContextExtensionKt$showPPDialog$dialog$1$3;->this$0:Lcom/liber8tech/tago/util/extension/ContextExtensionKt$showPPDialog$dialog$1;

    iget-object v0, v0, Lcom/liber8tech/tago/util/extension/ContextExtensionKt$showPPDialog$dialog$1;->$this_showPPDialog:Landroid/content/Context;

    const v1, 0x7f0f00f2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.url_pp)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lorg/jetbrains/anko/IntentsKt;->browse$default(Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Object;)Z

    return-void
.end method
