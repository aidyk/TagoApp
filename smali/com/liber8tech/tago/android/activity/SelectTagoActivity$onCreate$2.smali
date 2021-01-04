.class final Lcom/liber8tech/tago/android/activity/SelectTagoActivity$onCreate$2;
.super Ljava/lang/Object;
.source "SelectTagoActivity.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/SelectTagoActivity;->onCreate(Landroid/os/Bundle;)V
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
        "Lio/realm/RealmResults<",
        "Lcom/liber8tech/tago/model/TagoDevice;",
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012*\u0010\u0002\u001a&\u0012\u000c\u0012\n \u0005*\u0004\u0018\u00010\u00040\u0004 \u0005*\u0012\u0012\u000c\u0012\n \u0005*\u0004\u0018\u00010\u00040\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lio/realm/RealmResults;",
        "Lcom/liber8tech/tago/model/TagoDevice;",
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
.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/SelectTagoActivity;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/SelectTagoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/SelectTagoActivity$onCreate$2;->this$0:Lcom/liber8tech/tago/android/activity/SelectTagoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lio/realm/RealmResults;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmResults<",
            "Lcom/liber8tech/tago/model/TagoDevice;",
            ">;)V"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SelectTagoActivity$onCreate$2;->this$0:Lcom/liber8tech/tago/android/activity/SelectTagoActivity;

    invoke-static {v0}, Lcom/liber8tech/tago/android/activity/SelectTagoActivity;->access$getMyTagoList$p(Lcom/liber8tech/tago/android/activity/SelectTagoActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 82
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SelectTagoActivity$onCreate$2;->this$0:Lcom/liber8tech/tago/android/activity/SelectTagoActivity;

    invoke-static {v0}, Lcom/liber8tech/tago/android/activity/SelectTagoActivity;->access$getMyTagoList$p(Lcom/liber8tech/tago/android/activity/SelectTagoActivity;)Ljava/util/List;

    move-result-object v0

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p1, Lio/realm/RealmResults;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/SelectTagoActivity$onCreate$2;->accept(Lio/realm/RealmResults;)V

    return-void
.end method
