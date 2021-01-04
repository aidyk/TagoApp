.class final Lcom/liber8tech/tago/android/ui/SettingsActivityUI$createView$$inlined$with$lambda$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SettingsActivityUI.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


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
        "Lkotlin/jvm/functions/Function2<",
        "Landroid/widget/CompoundButton;",
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
        "\u0000\u00be\u0001\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0006\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006\u00a8\u0006\u000b"
    }
    d2 = {
        "<anonymous>",
        "",
        "buttonView",
        "Landroid/widget/CompoundButton;",
        "isChecked",
        "",
        "invoke",
        "com/liber8tech/tago/android/ui/SettingsActivityUI$createView$1$root$1$1$3$3$1",
        "com/liber8tech/tago/android/ui/SettingsActivityUI$$special$$inlined$switch$lambda$1",
        "com/liber8tech/tago/android/ui/SettingsActivityUI$$special$$inlined$relativeLayout$lambda$1",
        "com/liber8tech/tago/android/ui/SettingsActivityUI$$special$$inlined$verticalLayout$lambda$5",
        "com/liber8tech/tago/android/ui/SettingsActivityUI$$special$$inlined$scrollView$lambda$3"
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

.field final synthetic this$0:Lcom/liber8tech/tago/android/ui/SettingsActivityUI;


# direct methods
.method constructor <init>(Lorg/jetbrains/anko/AnkoContext;Lcom/liber8tech/tago/android/ui/SettingsActivityUI;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/ui/SettingsActivityUI$createView$$inlined$with$lambda$3;->$this_with$inlined:Lorg/jetbrains/anko/AnkoContext;

    iput-object p2, p0, Lcom/liber8tech/tago/android/ui/SettingsActivityUI$createView$$inlined$with$lambda$3;->this$0:Lcom/liber8tech/tago/android/ui/SettingsActivityUI;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 26
    check-cast p1, Landroid/widget/CompoundButton;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/liber8tech/tago/android/ui/SettingsActivityUI$createView$$inlined$with$lambda$3;->invoke(Landroid/widget/CompoundButton;Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1    # Landroid/widget/CompoundButton;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 87
    iget-object v0, p0, Lcom/liber8tech/tago/android/ui/SettingsActivityUI$createView$$inlined$with$lambda$3;->this$0:Lcom/liber8tech/tago/android/ui/SettingsActivityUI;

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/ui/SettingsActivityUI;->getAutoUploadOnClick()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
