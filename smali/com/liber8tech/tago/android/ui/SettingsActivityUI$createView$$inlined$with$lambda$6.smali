.class final Lcom/liber8tech/tago/android/ui/SettingsActivityUI$createView$$inlined$with$lambda$6;
.super Lkotlin/jvm/internal/Lambda;
.source "SettingsActivityUI.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/ui/SettingsActivityUI;->createView(Lorg/jetbrains/anko/AnkoContext;)Landroid/widget/ScrollView;
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
        "com/liber8tech/tago/android/ui/SettingsActivityUI$createView$1$root$1$1$12$1",
        "com/liber8tech/tago/android/ui/SettingsActivityUI$$special$$inlined$settingsRowItem$lambda$3",
        "com/liber8tech/tago/android/ui/SettingsActivityUI$$special$$inlined$verticalLayout$lambda$8",
        "com/liber8tech/tago/android/ui/SettingsActivityUI$$special$$inlined$scrollView$lambda$6"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic $this_settingsRowItem:Lcom/liber8tech/tago/android/view/SettingsRowItem;

.field final synthetic $this_with$inlined:Lorg/jetbrains/anko/AnkoContext;

.field final synthetic this$0:Lcom/liber8tech/tago/android/ui/SettingsActivityUI;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/view/SettingsRowItem;Lorg/jetbrains/anko/AnkoContext;Lcom/liber8tech/tago/android/ui/SettingsActivityUI;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/ui/SettingsActivityUI$createView$$inlined$with$lambda$6;->$this_settingsRowItem:Lcom/liber8tech/tago/android/view/SettingsRowItem;

    iput-object p2, p0, Lcom/liber8tech/tago/android/ui/SettingsActivityUI$createView$$inlined$with$lambda$6;->$this_with$inlined:Lorg/jetbrains/anko/AnkoContext;

    iput-object p3, p0, Lcom/liber8tech/tago/android/ui/SettingsActivityUI$createView$$inlined$with$lambda$6;->this$0:Lcom/liber8tech/tago/android/ui/SettingsActivityUI;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 26
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/ui/SettingsActivityUI$createView$$inlined$with$lambda$6;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 125
    iget-object p1, p0, Lcom/liber8tech/tago/android/ui/SettingsActivityUI$createView$$inlined$with$lambda$6;->this$0:Lcom/liber8tech/tago/android/ui/SettingsActivityUI;

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/ui/SettingsActivityUI;->getProfileOnClick()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    iget-object v0, p0, Lcom/liber8tech/tago/android/ui/SettingsActivityUI$createView$$inlined$with$lambda$6;->$this_settingsRowItem:Lcom/liber8tech/tago/android/view/SettingsRowItem;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
