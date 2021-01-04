.class final Lcom/liber8tech/tago/android/activity/MainActivity$onCreate$9;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/MainActivity;->onCreate(Landroid/os/Bundle;)V
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
        "Ljava/util/List<",
        "Lkotlin/Unit;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/liber8tech/tago/android/activity/MainActivity$onCreate$9\n+ 2 ContextUtils.kt\norg/jetbrains/anko/ContextUtilsKt\n*L\n1#1,625:1\n75#2:626\n*E\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\ncom/liber8tech/tago/android/activity/MainActivity$onCreate$9\n*L\n120#1:626\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0010 \n\u0000\u0010\u0000\u001a\u00020\u00012*\u0010\u0002\u001a&\u0012\u000c\u0012\n \u0004*\u0004\u0018\u00010\u00010\u0001 \u0004*\u0012\u0012\u000c\u0012\n \u0004*\u0004\u0018\u00010\u00010\u0001\u0018\u00010\u00050\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "kotlin.jvm.PlatformType",
        "",
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
.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/MainActivity$onCreate$9;->this$0:Lcom/liber8tech/tago/android/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 55
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/MainActivity$onCreate$9;->accept(Ljava/util/List;)V

    return-void
.end method

.method public final accept(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 120
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/MainActivity$onCreate$9;->this$0:Lcom/liber8tech/tago/android/activity/MainActivity;

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/MainActivity$onCreate$9;->this$0:Lcom/liber8tech/tago/android/activity/MainActivity;

    const v1, 0x1020002

    .line 626
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(id)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f0f00e1

    .line 120
    invoke-static {p1, v1, v0}, Lcom/liber8tech/tago/util/extension/ContextExtensionKt;->tintedSnack(Landroid/content/Context;ILandroid/view/View;)V

    return-void
.end method
