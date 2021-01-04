.class final Lcom/liber8tech/tago/android/adapter/TagoAdapter$onCreateViewHolder$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TagoAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/adapter/TagoAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
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

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
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
.field final synthetic $holder:Lcom/liber8tech/tago/android/view/TagoHolder;

.field final synthetic this$0:Lcom/liber8tech/tago/android/adapter/TagoAdapter;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/adapter/TagoAdapter;Lcom/liber8tech/tago/android/view/TagoHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/adapter/TagoAdapter$onCreateViewHolder$1;->this$0:Lcom/liber8tech/tago/android/adapter/TagoAdapter;

    iput-object p2, p0, Lcom/liber8tech/tago/android/adapter/TagoAdapter$onCreateViewHolder$1;->$holder:Lcom/liber8tech/tago/android/view/TagoHolder;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/adapter/TagoAdapter$onCreateViewHolder$1;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 40
    iget-object p1, p0, Lcom/liber8tech/tago/android/adapter/TagoAdapter$onCreateViewHolder$1;->this$0:Lcom/liber8tech/tago/android/adapter/TagoAdapter;

    invoke-static {p1}, Lcom/liber8tech/tago/android/adapter/TagoAdapter;->access$getOnDeviceClick$p(Lcom/liber8tech/tago/android/adapter/TagoAdapter;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    iget-object v0, p0, Lcom/liber8tech/tago/android/adapter/TagoAdapter$onCreateViewHolder$1;->$holder:Lcom/liber8tech/tago/android/view/TagoHolder;

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/view/TagoHolder;->getView()Lcom/liber8tech/tago/android/view/TagoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/view/TagoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/polidea/rxandroidble2/RxBleDevice;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.polidea.rxandroidble2.RxBleDevice"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
