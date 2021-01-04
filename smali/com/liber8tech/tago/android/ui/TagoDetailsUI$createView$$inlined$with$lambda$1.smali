.class final Lcom/liber8tech/tago/android/ui/TagoDetailsUI$createView$$inlined$with$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TagoDetailsUI.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/ui/TagoDetailsUI;->createView(Lorg/jetbrains/anko/AnkoContext;)Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroid/view/View;",
        "Ljava/lang/Boolean;",
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
        "\u0000&\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0004\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006\u00a8\u0006\t"
    }
    d2 = {
        "<anonymous>",
        "",
        "v",
        "Landroid/view/View;",
        "hasFocus",
        "",
        "invoke",
        "com/liber8tech/tago/android/ui/TagoDetailsUI$createView$1$root$1$1$1",
        "com/liber8tech/tago/android/ui/TagoDetailsUI$$special$$inlined$textInput$lambda$1",
        "com/liber8tech/tago/android/ui/TagoDetailsUI$$special$$inlined$verticalLayout$lambda$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liber8tech/tago/android/ui/TagoDetailsUI;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/ui/TagoDetailsUI;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/ui/TagoDetailsUI$createView$$inlined$with$lambda$1;->this$0:Lcom/liber8tech/tago/android/ui/TagoDetailsUI;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/liber8tech/tago/android/ui/TagoDetailsUI$createView$$inlined$with$lambda$1;->invoke(Landroid/view/View;Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;Z)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/liber8tech/tago/android/ui/TagoDetailsUI$createView$$inlined$with$lambda$1;->this$0:Lcom/liber8tech/tago/android/ui/TagoDetailsUI;

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/ui/TagoDetailsUI;->getEditTextFocusChange()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
