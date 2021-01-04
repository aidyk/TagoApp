.class final Lcom/liber8tech/tago/util/extension/ContextExtensionKt$tintedSnack$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "ContextExtension.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/util/extension/ContextExtensionKt;->tintedSnack(Landroid/content/Context;IILandroid/view/View;Lkotlin/jvm/functions/Function1;I)V
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick",
        "com/liber8tech/tago/util/extension/ContextExtensionKt$tintedSnack$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic $action$inlined:Lkotlin/jvm/functions/Function1;

.field final synthetic $actionTitle$inlined:I

.field final synthetic $this_apply:Landroid/support/design/widget/Snackbar;

.field final synthetic $this_tintedSnack$inlined:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/support/design/widget/Snackbar;Landroid/content/Context;ILkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/util/extension/ContextExtensionKt$tintedSnack$$inlined$apply$lambda$1;->$this_apply:Landroid/support/design/widget/Snackbar;

    iput-object p2, p0, Lcom/liber8tech/tago/util/extension/ContextExtensionKt$tintedSnack$$inlined$apply$lambda$1;->$this_tintedSnack$inlined:Landroid/content/Context;

    iput p3, p0, Lcom/liber8tech/tago/util/extension/ContextExtensionKt$tintedSnack$$inlined$apply$lambda$1;->$actionTitle$inlined:I

    iput-object p4, p0, Lcom/liber8tech/tago/util/extension/ContextExtensionKt$tintedSnack$$inlined$apply$lambda$1;->$action$inlined:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 18
    iget-object p1, p0, Lcom/liber8tech/tago/util/extension/ContextExtensionKt$tintedSnack$$inlined$apply$lambda$1;->$action$inlined:Lkotlin/jvm/functions/Function1;

    iget-object v0, p0, Lcom/liber8tech/tago/util/extension/ContextExtensionKt$tintedSnack$$inlined$apply$lambda$1;->$this_apply:Landroid/support/design/widget/Snackbar;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->getView()Landroid/view/View;

    move-result-object v0

    const-string v1, "view"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
