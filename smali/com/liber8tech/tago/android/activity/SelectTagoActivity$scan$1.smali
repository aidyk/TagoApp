.class final Lcom/liber8tech/tago/android/activity/SelectTagoActivity$scan$1;
.super Ljava/lang/Object;
.source "SelectTagoActivity.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/SelectTagoActivity;->scan(Z)V
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
        "Lkotlin/Pair<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/polidea/rxandroidble2/RxBleDevice;",
        ">;+",
        "Ljava/util/List<",
        "+",
        "Lcom/polidea/rxandroidble2/RxBleDevice;",
        ">;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectTagoActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectTagoActivity.kt\ncom/liber8tech/tago/android/activity/SelectTagoActivity$scan$1\n*L\n1#1,203:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012>\u0010\u0002\u001a:\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u0004 \u0006*\u001c\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lkotlin/Pair;",
        "",
        "Lcom/polidea/rxandroidble2/RxBleDevice;",
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
.field final synthetic $autoUploadEnabled:Z

.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/SelectTagoActivity;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/SelectTagoActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/SelectTagoActivity$scan$1;->this$0:Lcom/liber8tech/tago/android/activity/SelectTagoActivity;

    iput-boolean p2, p0, Lcom/liber8tech/tago/android/activity/SelectTagoActivity$scan$1;->$autoUploadEnabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/SelectTagoActivity$scan$1;->accept(Lkotlin/Pair;)V

    return-void
.end method

.method public final accept(Lkotlin/Pair;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/polidea/rxandroidble2/RxBleDevice;",
            ">;+",
            "Ljava/util/List<",
            "+",
            "Lcom/polidea/rxandroidble2/RxBleDevice;",
            ">;>;)V"
        }
    .end annotation

    .line 103
    invoke-virtual {p1}, Lkotlin/Pair;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/liber8tech/tago/android/activity/SelectTagoActivity$scan$1;->$autoUploadEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SelectTagoActivity$scan$1;->this$0:Lcom/liber8tech/tago/android/activity/SelectTagoActivity;

    invoke-static {v0}, Lcom/liber8tech/tago/android/activity/SelectTagoActivity;->access$getMyTagoList$p(Lcom/liber8tech/tago/android/activity/SelectTagoActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SelectTagoActivity$scan$1;->this$0:Lcom/liber8tech/tago/android/activity/SelectTagoActivity;

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/activity/SelectTagoActivity;->getBluetoothService()Lcom/liber8tech/tago/service/BluetoothService;

    move-result-object v0

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/polidea/rxandroidble2/RxBleDevice;

    invoke-virtual {v0, p1}, Lcom/liber8tech/tago/service/BluetoothService;->setSelectedDevice(Lcom/polidea/rxandroidble2/RxBleDevice;)V

    .line 106
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/SelectTagoActivity$scan$1;->this$0:Lcom/liber8tech/tago/android/activity/SelectTagoActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/liber8tech/tago/android/activity/SelectTagoActivity$scan$1;->this$0:Lcom/liber8tech/tago/android/activity/SelectTagoActivity;

    check-cast v2, Landroid/content/Context;

    const-class v3, Lcom/liber8tech/tago/android/activity/SyncActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "Pattern"

    .line 107
    iget-object v3, p0, Lcom/liber8tech/tago/android/activity/SelectTagoActivity$scan$1;->this$0:Lcom/liber8tech/tago/android/activity/SelectTagoActivity;

    invoke-static {v3}, Lcom/liber8tech/tago/android/activity/SelectTagoActivity;->access$getPattern$p(Lcom/liber8tech/tago/android/activity/SelectTagoActivity;)Lcom/liber8tech/tago/model/Pattern;

    move-result-object v3

    check-cast v3, Ljava/io/Serializable;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v2, "AutoUpload"

    .line 108
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 109
    invoke-static {}, Lcom/liber8tech/tago/android/activity/SelectTagoActivity;->access$getREQUEST_EXIT$cp()I

    move-result v1

    .line 106
    invoke-virtual {p1, v0, v1}, Lcom/liber8tech/tago/android/activity/SelectTagoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SelectTagoActivity$scan$1;->this$0:Lcom/liber8tech/tago/android/activity/SelectTagoActivity;

    invoke-static {v0}, Lcom/liber8tech/tago/android/activity/SelectTagoActivity;->access$getUi$p(Lcom/liber8tech/tago/android/activity/SelectTagoActivity;)Lcom/liber8tech/tago/android/ui/SelectTagoActivityUI;

    move-result-object v0

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/liber8tech/tago/android/ui/SelectTagoActivityUI;->setOwnDevices(Ljava/util/List;)V

    .line 112
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SelectTagoActivity$scan$1;->this$0:Lcom/liber8tech/tago/android/activity/SelectTagoActivity;

    invoke-static {v0}, Lcom/liber8tech/tago/android/activity/SelectTagoActivity;->access$getUi$p(Lcom/liber8tech/tago/android/activity/SelectTagoActivity;)Lcom/liber8tech/tago/android/ui/SelectTagoActivityUI;

    move-result-object v0

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/liber8tech/tago/android/ui/SelectTagoActivityUI;->setNearByDevices(Ljava/util/List;)V

    :goto_0
    return-void
.end method
