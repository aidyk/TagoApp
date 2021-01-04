.class public final Lcom/liber8tech/tago/android/ui/TagoRowItemUI;
.super Ljava/lang/Object;
.source "TagoRowItemUI.kt"

# interfaces
.implements Lorg/jetbrains/anko/AnkoComponent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/jetbrains/anko/AnkoComponent<",
        "Lcom/liber8tech/tago/android/view/TagoRowItem;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTagoRowItemUI.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TagoRowItemUI.kt\ncom/liber8tech/tago/android/ui/TagoRowItemUI\n+ 2 ViewDSL.kt\ncom/liber8tech/tago/android/view/ViewDSLKt\n+ 3 Custom.kt\norg/jetbrains/anko/custom/CustomKt\n*L\n1#1,15:1\n17#2:16\n17#2:17\n52#3:18\n28#3,5:19\n*E\n*S KotlinDebug\n*F\n+ 1 TagoRowItemUI.kt\ncom/liber8tech/tago/android/ui/TagoRowItemUI\n*L\n10#1:16\n10#1:17\n10#1:18\n10#1,5:19\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00022\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/liber8tech/tago/android/ui/TagoRowItemUI;",
        "Lorg/jetbrains/anko/AnkoComponent;",
        "Lcom/liber8tech/tago/android/view/TagoRowItem;",
        "()V",
        "createView",
        "ui",
        "Lorg/jetbrains/anko/AnkoContext;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createView(Lorg/jetbrains/anko/AnkoContext;)Landroid/view/View;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/ui/TagoRowItemUI;->createView(Lorg/jetbrains/anko/AnkoContext;)Lcom/liber8tech/tago/android/view/TagoRowItem;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public createView(Lorg/jetbrains/anko/AnkoContext;)Lcom/liber8tech/tago/android/view/TagoRowItem;
    .locals 3
    .param p1    # Lorg/jetbrains/anko/AnkoContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jetbrains/anko/AnkoContext<",
            "Lcom/liber8tech/tago/android/view/TagoRowItem;",
            ">;)",
            "Lcom/liber8tech/tago/android/view/TagoRowItem;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ui"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    check-cast p1, Landroid/view/ViewManager;

    .line 19
    sget-object v0, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    sget-object v1, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v1, p1}, Lorg/jetbrains/anko/internals/AnkoInternals;->getContext(Landroid/view/ViewManager;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/jetbrains/anko/internals/AnkoInternals;->wrapContextIfNeeded(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v0

    .line 18
    const-class v1, Lcom/liber8tech/tago/android/view/TagoRowItem;

    invoke-static {v0, v1}, Lorg/jetbrains/anko/internals/AnkoInternals;->initiateView(Landroid/content/Context;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/liber8tech/tago/android/view/TagoRowItem;

    .line 12
    invoke-virtual {v1, v2}, Lcom/liber8tech/tago/android/view/TagoRowItem;->showLowBattery(Z)V

    .line 22
    sget-object v2, Lorg/jetbrains/anko/internals/AnkoInternals;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals;

    invoke-virtual {v2, p1, v0}, Lorg/jetbrains/anko/internals/AnkoInternals;->addView(Landroid/view/ViewManager;Landroid/view/View;)V

    return-object v1
.end method
