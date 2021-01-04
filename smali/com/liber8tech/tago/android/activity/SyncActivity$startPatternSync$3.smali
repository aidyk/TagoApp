.class final Lcom/liber8tech/tago/android/activity/SyncActivity$startPatternSync$3;
.super Ljava/lang/Object;
.source "SyncActivity.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/SyncActivity;->startPatternSync(Lcom/liber8tech/tago/model/Pattern;J)V
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
        "Lcom/liber8tech/tago/model/SyncState;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSyncActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SyncActivity.kt\ncom/liber8tech/tago/android/activity/SyncActivity$startPatternSync$3\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,145:1\n220#2,2:146\n*E\n*S KotlinDebug\n*F\n+ 1 SyncActivity.kt\ncom/liber8tech/tago/android/activity/SyncActivity$startPatternSync$3\n*L\n110#1,2:146\n*E\n"
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
        "Lcom/liber8tech/tago/model/SyncState;",
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
.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/SyncActivity;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/SyncActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/SyncActivity$startPatternSync$3;->this$0:Lcom/liber8tech/tago/android/activity/SyncActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/liber8tech/tago/model/SyncState;)V
    .locals 7

    .line 109
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SyncActivity$startPatternSync$3;->this$0:Lcom/liber8tech/tago/android/activity/SyncActivity;

    invoke-static {v0}, Lcom/liber8tech/tago/android/activity/SyncActivity;->access$getUi$p(Lcom/liber8tech/tago/android/activity/SyncActivity;)Lcom/liber8tech/tago/android/ui/SyncActivityUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/ui/SyncActivityUI;->getCancelButton()Landroid/widget/Button;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 146
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SyncActivity$startPatternSync$3;->this$0:Lcom/liber8tech/tago/android/activity/SyncActivity;

    invoke-static {v0}, Lcom/liber8tech/tago/android/activity/SyncActivity;->access$getUi$p(Lcom/liber8tech/tago/android/activity/SyncActivity;)Lcom/liber8tech/tago/android/ui/SyncActivityUI;

    move-result-object v0

    invoke-virtual {p1}, Lcom/liber8tech/tago/model/SyncState;->getProgress()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v2, v4

    if-ltz v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/liber8tech/tago/model/SyncState;->getProgress()D

    move-result-wide v4

    :goto_0
    invoke-virtual {v0, v4, v5}, Lcom/liber8tech/tago/android/ui/SyncActivityUI;->setProgressValue(D)V

    .line 112
    invoke-virtual {p1}, Lcom/liber8tech/tago/model/SyncState;->finished()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SyncActivity$startPatternSync$3;->this$0:Lcom/liber8tech/tago/android/activity/SyncActivity;

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/activity/SyncActivity;->getTagoService()Lcom/liber8tech/tago/service/TagoService;

    move-result-object v0

    iget-object v2, p0, Lcom/liber8tech/tago/android/activity/SyncActivity$startPatternSync$3;->this$0:Lcom/liber8tech/tago/android/activity/SyncActivity;

    invoke-static {v2}, Lcom/liber8tech/tago/android/activity/SyncActivity;->access$getDevice$p(Lcom/liber8tech/tago/android/activity/SyncActivity;)Lcom/polidea/rxandroidble2/RxBleDevice;

    move-result-object v2

    invoke-interface {v2}, Lcom/polidea/rxandroidble2/RxBleDevice;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    const-string v3, "device.macAddress"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/liber8tech/tago/model/SyncState;->getBattery()I

    move-result p1

    const/16 v3, 0xea6

    if-gt p1, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, v2, v1}, Lcom/liber8tech/tago/service/TagoService;->update(Ljava/lang/String;Z)Lio/reactivex/Observable;

    move-result-object p1

    .line 114
    sget-object v0, Lcom/liber8tech/tago/android/activity/SyncActivity$startPatternSync$3$1;->INSTANCE:Lcom/liber8tech/tago/android/activity/SyncActivity$startPatternSync$3$1;

    check-cast v0, Lio/reactivex/functions/Consumer;

    sget-object v1, Lcom/liber8tech/tago/android/activity/SyncActivity$startPatternSync$3$2;->INSTANCE:Lcom/liber8tech/tago/android/activity/SyncActivity$startPatternSync$3$2;

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    :cond_2
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p1, Lcom/liber8tech/tago/model/SyncState;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/SyncActivity$startPatternSync$3;->accept(Lcom/liber8tech/tago/model/SyncState;)V

    return-void
.end method
