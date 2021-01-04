.class final Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1$2$3;
.super Ljava/lang/Object;
.source "AttachmentActivity.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1$2;->run()V
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAttachmentActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AttachmentActivity.kt\ncom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1$2$3\n+ 2 ContextUtils.kt\norg/jetbrains/anko/ContextUtilsKt\n*L\n1#1,156:1\n75#2:157\n*E\n*S KotlinDebug\n*F\n+ 1 AttachmentActivity.kt\ncom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1$2$3\n*L\n131#1:157\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
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
.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1$2;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1$2;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1$2$3;->this$0:Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1$2$3;->accept(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final accept(Ljava/lang/Throwable;)V
    .locals 7

    .line 128
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1$2$3;->this$0:Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1$2;

    iget-object v0, v0, Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1$2;->this$0:Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1;

    iget-object v1, v0, Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1;->this$0:Lcom/liber8tech/tago/android/activity/AttachmentActivity;

    .line 131
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1$2$3;->this$0:Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1$2;

    iget-object v0, v0, Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1$2;->this$0:Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1;

    iget-object v0, v0, Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1;->this$0:Lcom/liber8tech/tago/android/activity/AttachmentActivity;

    const v2, 0x1020002

    .line 157
    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const-string v0, "findViewById(id)"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    new-instance v0, Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1$2$3$1;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1$2$3$1;-><init>(Lcom/liber8tech/tago/android/activity/AttachmentActivity$readQRImage$1$2$3;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function1;

    const v2, 0x7f0f00e9

    const v3, 0x7f0f00a6

    const/4 v6, -0x2

    .line 128
    invoke-static/range {v1 .. v6}, Lcom/liber8tech/tago/util/extension/ContextExtensionKt;->tintedSnack(Landroid/content/Context;IILandroid/view/View;Lkotlin/jvm/functions/Function1;I)V

    .line 135
    invoke-static {p1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    return-void
.end method
