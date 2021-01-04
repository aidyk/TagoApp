.class final Lcom/liber8tech/tago/android/activity/StoreActivity$onCreate$7;
.super Ljava/lang/Object;
.source "StoreActivity.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/StoreActivity;->onCreate(Landroid/os/Bundle;)V
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
        "+",
        "Lkotlin/Unit;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0001 \u0004*\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
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
.field final synthetic $adapterData:Lcom/liber8tech/tago/android/activity/StoreAdapterData;

.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/StoreActivity;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/StoreActivity;Lcom/liber8tech/tago/android/activity/StoreAdapterData;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/StoreActivity$onCreate$7;->this$0:Lcom/liber8tech/tago/android/activity/StoreActivity;

    iput-object p2, p0, Lcom/liber8tech/tago/android/activity/StoreActivity$onCreate$7;->$adapterData:Lcom/liber8tech/tago/android/activity/StoreAdapterData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/StoreActivity$onCreate$7;->accept(Ljava/util/List;)V

    return-void
.end method

.method public final accept(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 80
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/StoreActivity$onCreate$7;->this$0:Lcom/liber8tech/tago/android/activity/StoreActivity;

    invoke-static {p1}, Lcom/liber8tech/tago/android/activity/StoreActivity;->access$getUi$p(Lcom/liber8tech/tago/android/activity/StoreActivity;)Lcom/liber8tech/tago/android/activity/StoreActivityUI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/activity/StoreActivityUI;->getRowList()Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    new-instance v0, Lcom/liber8tech/tago/android/adapter/StoreAdapter;

    iget-object v1, p0, Lcom/liber8tech/tago/android/activity/StoreActivity$onCreate$7;->$adapterData:Lcom/liber8tech/tago/android/activity/StoreAdapterData;

    invoke-virtual {v1}, Lcom/liber8tech/tago/android/activity/StoreAdapterData;->getCategoryTitleList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/liber8tech/tago/android/activity/StoreActivity$onCreate$7;->$adapterData:Lcom/liber8tech/tago/android/activity/StoreAdapterData;

    invoke-virtual {v2}, Lcom/liber8tech/tago/android/activity/StoreAdapterData;->getCategoryData()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/liber8tech/tago/android/adapter/StoreAdapter;-><init>(Ljava/util/List;Ljava/util/List;)V

    check-cast v0, Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method
