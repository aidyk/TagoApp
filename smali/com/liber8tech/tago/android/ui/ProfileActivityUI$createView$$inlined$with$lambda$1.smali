.class final Lcom/liber8tech/tago/android/ui/ProfileActivityUI$createView$$inlined$with$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ProfileActivityUI.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/ui/ProfileActivityUI;->createView(Lorg/jetbrains/anko/AnkoContext;)Landroid/widget/ScrollView;
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
        "\u0000D\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0005\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004\u00a8\u0006\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "invoke",
        "com/liber8tech/tago/android/ui/ProfileActivityUI$createView$1$1$1$25$1",
        "com/liber8tech/tago/android/ui/ProfileActivityUI$$special$$inlined$tagoButton$lambda$1",
        "com/liber8tech/tago/android/ui/ProfileActivityUI$$special$$inlined$verticalLayout$lambda$1",
        "com/liber8tech/tago/android/ui/ProfileActivityUI$$special$$inlined$scrollView$lambda$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic $this_tagoButton:Lcom/liber8tech/tago/android/view/TagoButton;

.field final synthetic $ui$inlined:Lorg/jetbrains/anko/AnkoContext;

.field final synthetic this$0:Lcom/liber8tech/tago/android/ui/ProfileActivityUI;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/view/TagoButton;Lcom/liber8tech/tago/android/ui/ProfileActivityUI;Lorg/jetbrains/anko/AnkoContext;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/ui/ProfileActivityUI$createView$$inlined$with$lambda$1;->$this_tagoButton:Lcom/liber8tech/tago/android/view/TagoButton;

    iput-object p2, p0, Lcom/liber8tech/tago/android/ui/ProfileActivityUI$createView$$inlined$with$lambda$1;->this$0:Lcom/liber8tech/tago/android/ui/ProfileActivityUI;

    iput-object p3, p0, Lcom/liber8tech/tago/android/ui/ProfileActivityUI$createView$$inlined$with$lambda$1;->$ui$inlined:Lorg/jetbrains/anko/AnkoContext;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/ui/ProfileActivityUI$createView$$inlined$with$lambda$1;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 133
    iget-object p1, p0, Lcom/liber8tech/tago/android/ui/ProfileActivityUI$createView$$inlined$with$lambda$1;->this$0:Lcom/liber8tech/tago/android/ui/ProfileActivityUI;

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/ui/ProfileActivityUI;->getSaveOnClick()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    iget-object v0, p0, Lcom/liber8tech/tago/android/ui/ProfileActivityUI$createView$$inlined$with$lambda$1;->$this_tagoButton:Lcom/liber8tech/tago/android/view/TagoButton;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
