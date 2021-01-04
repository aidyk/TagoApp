.class public final Lcom/liber8tech/tago/android/adapter/AddTagoAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "AddTagoAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAddTagoAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AddTagoAdapter.kt\ncom/liber8tech/tago/android/adapter/AddTagoAdapter\n+ 2 Listeners.kt\norg/jetbrains/anko/sdk15/listeners/Sdk15ListenersListenersKt\n*L\n1#1,70:1\n164#2,2:71\n*E\n*S KotlinDebug\n*F\n+ 1 AddTagoAdapter.kt\ncom/liber8tech/tago/android/adapter/AddTagoAdapter\n*L\n35#1,2:71\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B#\u0012\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000f\u001a\u00020\rH\u0002J\u0008\u0010\u0010\u001a\u00020\rH\u0016J\u0010\u0010\u0011\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\rH\u0016J\u0018\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\rH\u0016J\u0018\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\rH\u0016J\u0014\u0010\u0018\u001a\u00020\u00062\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u001aR\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/liber8tech/tago/android/adapter/AddTagoAdapter;",
        "Landroid/support/v7/widget/RecyclerView$Adapter;",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        "onDeviceClick",
        "Lkotlin/Function1;",
        "Lcom/polidea/rxandroidble2/RxBleDevice;",
        "",
        "own",
        "",
        "(Lkotlin/jvm/functions/Function1;Z)V",
        "devices",
        "",
        "headerRes",
        "",
        "getDevice",
        "position",
        "getItemCount",
        "getItemViewType",
        "onBindViewHolder",
        "holder",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "setDevices",
        "newDevices",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field private devices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/polidea/rxandroidble2/RxBleDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final headerRes:I

.field private final onDeviceClick:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/polidea/rxandroidble2/RxBleDevice;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Z)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/polidea/rxandroidble2/RxBleDevice;",
            "Lkotlin/Unit;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "onDeviceClick"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/liber8tech/tago/android/adapter/AddTagoAdapter;->onDeviceClick:Lkotlin/jvm/functions/Function1;

    if-eqz p2, :cond_0

    const p1, 0x7f0f00fa

    goto :goto_0

    :cond_0
    const p1, 0x7f0f00bb

    .line 19
    :goto_0
    iput p1, p0, Lcom/liber8tech/tago/android/adapter/AddTagoAdapter;->headerRes:I

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/liber8tech/tago/android/adapter/AddTagoAdapter;->devices:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 16
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/liber8tech/tago/android/adapter/AddTagoAdapter;-><init>(Lkotlin/jvm/functions/Function1;Z)V

    return-void
.end method

.method public static final synthetic access$getOnDeviceClick$p(Lcom/liber8tech/tago/android/adapter/AddTagoAdapter;)Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 16
    iget-object p0, p0, Lcom/liber8tech/tago/android/adapter/AddTagoAdapter;->onDeviceClick:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method private final getDevice(I)Lcom/polidea/rxandroidble2/RxBleDevice;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/liber8tech/tago/android/adapter/AddTagoAdapter;->devices:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/polidea/rxandroidble2/RxBleDevice;

    return-object p1
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/liber8tech/tago/android/adapter/AddTagoAdapter;->devices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/liber8tech/tago/android/adapter/AddTagoAdapter;->devices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v1, v0

    :goto_0
    return v1
.end method

.method public getItemViewType(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0, p2}, Lcom/liber8tech/tago/android/adapter/AddTagoAdapter;->getItemViewType(I)I

    move-result v0

    .line 45
    invoke-direct {p0, p2}, Lcom/liber8tech/tago/android/adapter/AddTagoAdapter;->getDevice(I)Lcom/polidea/rxandroidble2/RxBleDevice;

    move-result-object p2

    if-eqz v0, :cond_2

    .line 49
    check-cast p1, Lcom/liber8tech/tago/android/view/TagoHolder;

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/view/TagoHolder;->getView()Lcom/liber8tech/tago/android/view/TagoView;

    move-result-object p1

    .line 50
    invoke-virtual {p1, p2}, Lcom/liber8tech/tago/android/view/TagoView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 51
    invoke-static {p2}, Lcom/liber8tech/tago/model/ArcKt;->getCustomName(Lcom/polidea/rxandroidble2/RxBleDevice;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Lcom/liber8tech/tago/android/view/TagoView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_1

    .line 52
    invoke-static {p2}, Lcom/liber8tech/tago/model/ArcKt;->preview(Lcom/polidea/rxandroidble2/RxBleDevice;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, v0

    :goto_1
    invoke-virtual {p1, p2, v0, v0, v0}, Lcom/liber8tech/tago/android/view/TagoView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 47
    :cond_2
    check-cast p1, Lcom/liber8tech/tago/android/view/HeaderHolder;

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/view/HeaderHolder;->getView()Lcom/liber8tech/tago/android/view/HeaderView;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget p2, p0, Lcom/liber8tech/tago/android/adapter/AddTagoAdapter;->headerRes:I

    invoke-static {p1, p2}, Lorg/jetbrains/anko/Sdk15PropertiesKt;->setTextResource(Landroid/widget/TextView;I)V

    :goto_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 34
    new-instance p2, Lcom/liber8tech/tago/android/view/TagoHolder;

    new-instance v0, Lcom/liber8tech/tago/android/view/TagoView;

    const-string v1, "ctx"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lcom/liber8tech/tago/android/view/TagoView;-><init>(Landroid/content/Context;)V

    invoke-direct {p2, v0}, Lcom/liber8tech/tago/android/view/TagoHolder;-><init>(Lcom/liber8tech/tago/android/view/TagoView;)V

    .line 35
    invoke-virtual {p2}, Lcom/liber8tech/tago/android/view/TagoHolder;->getView()Lcom/liber8tech/tago/android/view/TagoView;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    new-instance v0, Lcom/liber8tech/tago/android/adapter/AddTagoAdapter$onCreateViewHolder$1;

    invoke-direct {v0, p0, p2}, Lcom/liber8tech/tago/android/adapter/AddTagoAdapter$onCreateViewHolder$1;-><init>(Lcom/liber8tech/tago/android/adapter/AddTagoAdapter;Lcom/liber8tech/tago/android/view/TagoHolder;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 71
    new-instance v1, Lcom/liber8tech/tago/android/adapter/AddTagoAdapter$inlined$sam$i$android_view_View_OnClickListener$0;

    invoke-direct {v1, v0}, Lcom/liber8tech/tago/android/adapter/AddTagoAdapter$inlined$sam$i$android_view_View_OnClickListener$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    check-cast p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    goto :goto_0

    .line 32
    :cond_0
    new-instance p2, Lcom/liber8tech/tago/android/view/HeaderHolder;

    new-instance v0, Lcom/liber8tech/tago/android/view/HeaderView;

    const-string v1, "ctx"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lcom/liber8tech/tago/android/view/HeaderView;-><init>(Landroid/content/Context;)V

    invoke-direct {p2, v0}, Lcom/liber8tech/tago/android/view/HeaderHolder;-><init>(Lcom/liber8tech/tago/android/view/HeaderView;)V

    check-cast p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    :goto_0
    return-object p2
.end method

.method public final setDevices(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/polidea/rxandroidble2/RxBleDevice;",
            ">;)V"
        }
    .end annotation

    const-string v0, "newDevices"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/liber8tech/tago/android/adapter/AddTagoAdapter;->devices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 25
    iget-object v0, p0, Lcom/liber8tech/tago/android/adapter/AddTagoAdapter;->devices:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 26
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/adapter/AddTagoAdapter;->notifyDataSetChanged()V

    return-void
.end method
