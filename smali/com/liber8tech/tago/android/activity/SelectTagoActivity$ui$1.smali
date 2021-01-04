.class final Lcom/liber8tech/tago/android/activity/SelectTagoActivity$ui$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SelectTagoActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/SelectTagoActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/polidea/rxandroidble2/RxBleDevice;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectTagoActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectTagoActivity.kt\ncom/liber8tech/tago/android/activity/SelectTagoActivity$ui$1\n*L\n1#1,203:1\n*E\n"
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
        "device",
        "Lcom/polidea/rxandroidble2/RxBleDevice;",
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
.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/SelectTagoActivity;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/SelectTagoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/SelectTagoActivity$ui$1;->this$0:Lcom/liber8tech/tago/android/activity/SelectTagoActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    check-cast p1, Lcom/polidea/rxandroidble2/RxBleDevice;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/SelectTagoActivity$ui$1;->invoke(Lcom/polidea/rxandroidble2/RxBleDevice;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/polidea/rxandroidble2/RxBleDevice;)V
    .locals 13
    .param p1    # Lcom/polidea/rxandroidble2/RxBleDevice;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "device"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SelectTagoActivity$ui$1;->this$0:Lcom/liber8tech/tago/android/activity/SelectTagoActivity;

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/activity/SelectTagoActivity;->getBluetoothService()Lcom/liber8tech/tago/service/BluetoothService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liber8tech/tago/service/BluetoothService;->setSelectedDevice(Lcom/polidea/rxandroidble2/RxBleDevice;)V

    .line 60
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/SelectTagoActivity$ui$1;->this$0:Lcom/liber8tech/tago/android/activity/SelectTagoActivity;

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/activity/SelectTagoActivity;->getAnalytics()Lcom/liber8tech/tago/analytics/AnalyticsService;

    move-result-object v0

    const-string v1, "Upload"

    const-string v2, "Upload"

    const-string v3, "Image Upload"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/liber8tech/tago/android/activity/SelectTagoActivity$ui$1;->this$0:Lcom/liber8tech/tago/android/activity/SelectTagoActivity;

    invoke-static {v4}, Lcom/liber8tech/tago/android/activity/SelectTagoActivity;->access$getPattern$p(Lcom/liber8tech/tago/android/activity/SelectTagoActivity;)Lcom/liber8tech/tago/model/Pattern;

    move-result-object v4

    invoke-virtual {v4}, Lcom/liber8tech/tago/model/Pattern;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2f

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/liber8tech/tago/android/activity/SelectTagoActivity$ui$1;->this$0:Lcom/liber8tech/tago/android/activity/SelectTagoActivity;

    invoke-static {v4}, Lcom/liber8tech/tago/android/activity/SelectTagoActivity;->access$getPattern$p(Lcom/liber8tech/tago/android/activity/SelectTagoActivity;)Lcom/liber8tech/tago/model/Pattern;

    move-result-object v4

    invoke-virtual {v4}, Lcom/liber8tech/tago/model/Pattern;->getSrc()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const-string v4, "/"

    const/4 v12, 0x0

    aput-object v4, v6, v12

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1f0

    const/4 v11, 0x0

    invoke-static/range {v0 .. v11}, Lcom/liber8tech/tago/analytics/AnalyticsApi$DefaultImpls;->trackEvent$default(Lcom/liber8tech/tago/analytics/AnalyticsApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;[Lcom/liber8tech/tago/analytics/Dimension;[Lcom/liber8tech/tago/analytics/Metric;[Lcom/liber8tech/tago/analytics/Product;Lcom/liber8tech/tago/analytics/ProductAction;ILjava/lang/Object;)V

    .line 61
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/SelectTagoActivity$ui$1;->this$0:Lcom/liber8tech/tago/android/activity/SelectTagoActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/liber8tech/tago/android/activity/SelectTagoActivity$ui$1;->this$0:Lcom/liber8tech/tago/android/activity/SelectTagoActivity;

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/liber8tech/tago/android/activity/SyncActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "Pattern"

    .line 62
    iget-object v2, p0, Lcom/liber8tech/tago/android/activity/SelectTagoActivity$ui$1;->this$0:Lcom/liber8tech/tago/android/activity/SelectTagoActivity;

    invoke-static {v2}, Lcom/liber8tech/tago/android/activity/SelectTagoActivity;->access$getPattern$p(Lcom/liber8tech/tago/android/activity/SelectTagoActivity;)Lcom/liber8tech/tago/model/Pattern;

    move-result-object v2

    check-cast v2, Ljava/io/Serializable;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "AutoUpload"

    .line 63
    invoke-virtual {v0, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 64
    invoke-static {}, Lcom/liber8tech/tago/android/activity/SelectTagoActivity;->access$getREQUEST_EXIT$cp()I

    move-result v1

    .line 61
    invoke-virtual {p1, v0, v1}, Lcom/liber8tech/tago/android/activity/SelectTagoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
