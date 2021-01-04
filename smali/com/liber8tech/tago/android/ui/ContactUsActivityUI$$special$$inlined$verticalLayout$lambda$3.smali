.class final Lcom/liber8tech/tago/android/ui/ContactUsActivityUI$$special$$inlined$verticalLayout$lambda$3;
.super Lkotlin/jvm/internal/Lambda;
.source "ContactUsActivityUI.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/ui/ContactUsActivityUI;->createView(Lorg/jetbrains/anko/AnkoContext;)Landroid/widget/LinearLayout;
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
        "com/liber8tech/tago/android/ui/ContactUsActivityUI$createView$1$root$1$5$1",
        "com/liber8tech/tago/android/ui/ContactUsActivityUI$$special$$inlined$settingsRowItem$lambda$3"
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

    iput-object p1, p0, Lcom/liber8tech/tago/android/ui/ContactUsActivityUI$$special$$inlined$verticalLayout$lambda$3;->$this_with$inlined:Lorg/jetbrains/anko/AnkoContext;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/ui/ContactUsActivityUI$$special$$inlined$verticalLayout$lambda$3;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 43
    iget-object p1, p0, Lcom/liber8tech/tago/android/ui/ContactUsActivityUI$$special$$inlined$verticalLayout$lambda$3;->$this_with$inlined:Lorg/jetbrains/anko/AnkoContext;

    invoke-interface {p1}, Lorg/jetbrains/anko/AnkoContext;->getCtx()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p0, Lcom/liber8tech/tago/android/ui/ContactUsActivityUI$$special$$inlined$verticalLayout$lambda$3;->$this_with$inlined:Lorg/jetbrains/anko/AnkoContext;

    invoke-interface {p1}, Lorg/jetbrains/anko/AnkoContext;->getCtx()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f0f008c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string p1, "ctx.getString(R.string.email)"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "Delete User Information"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lorg/jetbrains/anko/IntentsKt;->email$default(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    return-void
.end method
