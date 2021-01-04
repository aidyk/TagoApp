.class final Lcom/liber8tech/tago/android/activity/ResetActivity$onCreate$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ResetActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/ResetActivity;->onCreate(Landroid/os/Bundle;)V
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
    value = "SMAP\nResetActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResetActivity.kt\ncom/liber8tech/tago/android/activity/ResetActivity$onCreate$1\n+ 2 ContextUtils.kt\norg/jetbrains/anko/ContextUtilsKt\n*L\n1#1,64:1\n62#2:65\n62#2:66\n62#2:67\n*E\n*S KotlinDebug\n*F\n+ 1 ResetActivity.kt\ncom/liber8tech/tago/android/activity/ResetActivity$onCreate$1\n*L\n32#1:65\n34#1:66\n36#1:67\n*E\n"
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
.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/ResetActivity;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/ResetActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/ResetActivity$onCreate$1;->this$0:Lcom/liber8tech/tago/android/activity/ResetActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/ResetActivity$onCreate$1;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/ResetActivity$onCreate$1;->this$0:Lcom/liber8tech/tago/android/activity/ResetActivity;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/ResetActivity$onCreate$1;->this$0:Lcom/liber8tech/tago/android/activity/ResetActivity;

    const v1, 0x7f0f00d9

    invoke-virtual {p1, v1}, Lcom/liber8tech/tago/android/activity/ResetActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 33
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ResetActivity$onCreate$1;->this$0:Lcom/liber8tech/tago/android/activity/ResetActivity;

    const v1, 0x7f0f00d8

    invoke-virtual {v0, v1}, Lcom/liber8tech/tago/android/activity/ResetActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 34
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ResetActivity$onCreate$1;->this$0:Lcom/liber8tech/tago/android/activity/ResetActivity;

    const v1, 0x104000a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v1, Lcom/liber8tech/tago/android/activity/ResetActivity$onCreate$1$builder$1;

    invoke-direct {v1, p0}, Lcom/liber8tech/tago/android/activity/ResetActivity$onCreate$1$builder$1;-><init>(Lcom/liber8tech/tago/android/activity/ResetActivity$onCreate$1;)V

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 36
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ResetActivity$onCreate$1;->this$0:Lcom/liber8tech/tago/android/activity/ResetActivity;

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v1, Lcom/liber8tech/tago/android/activity/ResetActivity$onCreate$1$builder$2;

    invoke-direct {v1, p0}, Lcom/liber8tech/tago/android/activity/ResetActivity$onCreate$1$builder$2;-><init>(Lcom/liber8tech/tago/android/activity/ResetActivity$onCreate$1;)V

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 39
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 40
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    const/4 v0, -0x2

    .line 41
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/liber8tech/tago/android/activity/ResetActivity$onCreate$1;->this$0:Lcom/liber8tech/tago/android/activity/ResetActivity;

    const v2, 0x7f050020

    invoke-static {v1, v2}, Lcom/liber8tech/tago/util/extension/AndroidExtensionsKt;->getColorCompat(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v0, -0x1

    .line 42
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ResetActivity$onCreate$1;->this$0:Lcom/liber8tech/tago/android/activity/ResetActivity;

    invoke-static {v0, v2}, Lcom/liber8tech/tago/util/extension/AndroidExtensionsKt;->getColorCompat(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method
