.class final Lcom/liber8tech/tago/util/extension/ContextExtensionKt$showToUDialog$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ContextExtension.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/util/extension/ContextExtensionKt;->showToUDialog(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/content/Context;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContextExtension.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContextExtension.kt\ncom/liber8tech/tago/util/extension/ContextExtensionKt$showToUDialog$2\n*L\n1#1,79:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroid/content/Context;",
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
.field final synthetic $navigation:Lkotlin/jvm/functions/Function1;

.field final synthetic $negativeClicked:Lkotlin/jvm/functions/Function1;

.field final synthetic $this_showToUDialog:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/util/extension/ContextExtensionKt$showToUDialog$2;->$this_showToUDialog:Landroid/content/Context;

    iput-object p2, p0, Lcom/liber8tech/tago/util/extension/ContextExtensionKt$showToUDialog$2;->$navigation:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/liber8tech/tago/util/extension/ContextExtensionKt$showToUDialog$2;->$negativeClicked:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/util/extension/ContextExtensionKt$showToUDialog$2;->invoke(Landroid/content/Context;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "receiver$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0f00ef

    .line 48
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.toc_message)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    const v1, 0x7f0f00f0

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v2, Lcom/liber8tech/tago/util/extension/ContextExtensionKt$showToUDialog$2$dialog$1;

    invoke-direct {v2, p0, p1}, Lcom/liber8tech/tago/util/extension/ContextExtensionKt$showToUDialog$2$dialog$1;-><init>(Lcom/liber8tech/tago/util/extension/ContextExtensionKt$showToUDialog$2;Landroid/content/Context;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v0, v1, v2}, Lorg/jetbrains/anko/AndroidDialogsKt;->alert(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Lorg/jetbrains/anko/AlertBuilder;

    move-result-object v0

    .line 54
    invoke-interface {v0}, Lorg/jetbrains/anko/AlertBuilder;->show()Landroid/content/DialogInterface;

    move-result-object v0

    .line 48
    check-cast v0, Landroid/app/AlertDialog;

    const/4 v1, -0x1

    .line 56
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const-string v2, "getButton(AlertDialog.BUTTON_POSITIVE)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f050064

    invoke-static {p1, v2}, Lcom/liber8tech/tago/util/extension/AndroidExtensionsKt;->getColorCompat(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v1, v3}, Lorg/jetbrains/anko/Sdk15PropertiesKt;->setTextColor(Landroid/widget/TextView;I)V

    const/4 v1, -0x3

    .line 57
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const-string v3, "getButton(AlertDialog.BUTTON_NEUTRAL)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p1, v2}, Lcom/liber8tech/tago/util/extension/AndroidExtensionsKt;->getColorCompat(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v1, v3}, Lorg/jetbrains/anko/Sdk15PropertiesKt;->setTextColor(Landroid/widget/TextView;I)V

    const/4 v1, -0x2

    .line 58
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const-string v3, "getButton(AlertDialog.BUTTON_NEGATIVE)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p1, v2}, Lcom/liber8tech/tago/util/extension/AndroidExtensionsKt;->getColorCompat(Landroid/content/Context;I)I

    move-result p1

    invoke-static {v1, p1}, Lorg/jetbrains/anko/Sdk15PropertiesKt;->setTextColor(Landroid/widget/TextView;I)V

    const/4 p1, 0x0

    .line 59
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    return-void
.end method
