.class final Lcom/liber8tech/tago/android/ui/AboutActivityUI$$special$$inlined$verticalLayout$lambda$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AboutActivityUI.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/ui/AboutActivityUI;->createView(Lorg/jetbrains/anko/AnkoContext;)Landroid/widget/LinearLayout;
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "invoke",
        "com/liber8tech/tago/android/ui/AboutActivityUI$createView$1$root$1$3$1",
        "com/liber8tech/tago/android/ui/AboutActivityUI$$special$$inlined$settingsRowItem$lambda$2"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic $this_with$inlined:Lorg/jetbrains/anko/AnkoContext;


# direct methods
.method constructor <init>(Lorg/jetbrains/anko/AnkoContext;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/ui/AboutActivityUI$$special$$inlined$verticalLayout$lambda$2;->$this_with$inlined:Lorg/jetbrains/anko/AnkoContext;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 22
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/ui/AboutActivityUI$$special$$inlined$verticalLayout$lambda$2;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 41
    iget-object p1, p0, Lcom/liber8tech/tago/android/ui/AboutActivityUI$$special$$inlined$verticalLayout$lambda$2;->$this_with$inlined:Lorg/jetbrains/anko/AnkoContext;

    invoke-interface {p1}, Lorg/jetbrains/anko/AnkoContext;->getCtx()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/liber8tech/tago/android/ui/AboutActivityUI$$special$$inlined$verticalLayout$lambda$2;->$this_with$inlined:Lorg/jetbrains/anko/AnkoContext;

    invoke-interface {v0}, Lorg/jetbrains/anko/AnkoContext;->getCtx()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f00f2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ctx.getString(R.string.url_pp)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lorg/jetbrains/anko/IntentsKt;->browse(Landroid/content/Context;Ljava/lang/String;Z)Z

    return-void
.end method
