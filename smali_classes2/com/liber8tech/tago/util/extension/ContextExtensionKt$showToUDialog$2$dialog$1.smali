.class final Lcom/liber8tech/tago/util/extension/ContextExtensionKt$showToUDialog$2$dialog$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ContextExtension.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/util/extension/ContextExtensionKt$showToUDialog$2;->invoke(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/jetbrains/anko/AlertBuilder<",
        "+",
        "Landroid/content/DialogInterface;",
        ">;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lorg/jetbrains/anko/AlertBuilder;",
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
.field final synthetic $this_runOnUiThread:Landroid/content/Context;

.field final synthetic this$0:Lcom/liber8tech/tago/util/extension/ContextExtensionKt$showToUDialog$2;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/util/extension/ContextExtensionKt$showToUDialog$2;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/util/extension/ContextExtensionKt$showToUDialog$2$dialog$1;->this$0:Lcom/liber8tech/tago/util/extension/ContextExtensionKt$showToUDialog$2;

    iput-object p2, p0, Lcom/liber8tech/tago/util/extension/ContextExtensionKt$showToUDialog$2$dialog$1;->$this_runOnUiThread:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/jetbrains/anko/AlertBuilder;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/util/extension/ContextExtensionKt$showToUDialog$2$dialog$1;->invoke(Lorg/jetbrains/anko/AlertBuilder;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lorg/jetbrains/anko/AlertBuilder;)V
    .locals 2
    .param p1    # Lorg/jetbrains/anko/AlertBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jetbrains/anko/AlertBuilder<",
            "+",
            "Landroid/content/DialogInterface;",
            ">;)V"
        }
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/liber8tech/tago/util/extension/ContextExtensionKt$showToUDialog$2$dialog$1;->$this_runOnUiThread:Landroid/content/Context;

    const v1, 0x7f0f0028

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.accept)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/liber8tech/tago/util/extension/ContextExtensionKt$showToUDialog$2$dialog$1$1;

    invoke-direct {v1, p0}, Lcom/liber8tech/tago/util/extension/ContextExtensionKt$showToUDialog$2$dialog$1$1;-><init>(Lcom/liber8tech/tago/util/extension/ContextExtensionKt$showToUDialog$2$dialog$1;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, v0, v1}, Lorg/jetbrains/anko/AlertBuilder;->positiveButton(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 52
    iget-object v0, p0, Lcom/liber8tech/tago/util/extension/ContextExtensionKt$showToUDialog$2$dialog$1;->$this_runOnUiThread:Landroid/content/Context;

    const v1, 0x7f0f0085

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.decline)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/liber8tech/tago/util/extension/ContextExtensionKt$showToUDialog$2$dialog$1$2;

    invoke-direct {v1, p0, p1}, Lcom/liber8tech/tago/util/extension/ContextExtensionKt$showToUDialog$2$dialog$1$2;-><init>(Lcom/liber8tech/tago/util/extension/ContextExtensionKt$showToUDialog$2$dialog$1;Lorg/jetbrains/anko/AlertBuilder;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, v0, v1}, Lorg/jetbrains/anko/AlertBuilder;->negativeButton(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 53
    iget-object v0, p0, Lcom/liber8tech/tago/util/extension/ContextExtensionKt$showToUDialog$2$dialog$1;->$this_runOnUiThread:Landroid/content/Context;

    const v1, 0x7f0f00ee

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.toc)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/liber8tech/tago/util/extension/ContextExtensionKt$showToUDialog$2$dialog$1$3;

    invoke-direct {v1, p0}, Lcom/liber8tech/tago/util/extension/ContextExtensionKt$showToUDialog$2$dialog$1$3;-><init>(Lcom/liber8tech/tago/util/extension/ContextExtensionKt$showToUDialog$2$dialog$1;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, v0, v1}, Lorg/jetbrains/anko/AlertBuilder;->neutralPressed(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
