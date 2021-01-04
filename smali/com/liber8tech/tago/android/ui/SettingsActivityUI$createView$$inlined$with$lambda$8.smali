.class final Lcom/liber8tech/tago/android/ui/SettingsActivityUI$createView$$inlined$with$lambda$8;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSettingsActivityUI.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsActivityUI.kt\ncom/liber8tech/tago/android/ui/SettingsActivityUI$createView$1$root$1$1$18$1\n+ 2 Intents.kt\norg/jetbrains/anko/IntentsKt\n*L\n1#1,211:1\n34#2:212\n*E\n*S KotlinDebug\n*F\n+ 1 SettingsActivityUI.kt\ncom/liber8tech/tago/android/ui/SettingsActivityUI$createView$1$root$1$1$18$1\n*L\n147#1:212\n*E\n"
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
        "com/liber8tech/tago/android/ui/SettingsActivityUI$createView$1$root$1$1$18$1",
        "com/liber8tech/tago/android/ui/SettingsActivityUI$$special$$inlined$settingsRowItem$lambda$5",
        "com/liber8tech/tago/android/ui/SettingsActivityUI$$special$$inlined$verticalLayout$lambda$10",
        "com/liber8tech/tago/android/ui/SettingsActivityUI$$special$$inlined$scrollView$lambda$8"
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

    iput-object p1, p0, Lcom/liber8tech/tago/android/ui/SettingsActivityUI$createView$$inlined$with$lambda$8;->$this_with$inlined:Lorg/jetbrains/anko/AnkoContext;

    iput-object p2, p0, Lcom/liber8tech/tago/android/ui/SettingsActivityUI$createView$$inlined$with$lambda$8;->this$0:Lcom/liber8tech/tago/android/ui/SettingsActivityUI;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 26
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/ui/SettingsActivityUI$createView$$inlined$with$lambda$8;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 147
    iget-object p1, p0, Lcom/liber8tech/tago/android/ui/SettingsActivityUI$createView$$inlined$with$lambda$8;->$this_with$inlined:Lorg/jetbrains/anko/AnkoContext;

    const/4 v0, 0x0

    new-array v0, v0, [Lkotlin/Pair;

    .line 212
    invoke-interface {p1}, Lorg/jetbrains/anko/AnkoContext;->getCtx()Landroid/content/Context;

    move-result-object p1

    const-class v1, Lcom/liber8tech/tago/android/activity/ContactUsActivity;

    invoke-static {p1, v1, v0}, Lorg/jetbrains/anko/internals/AnkoInternals;->internalStartActivity(Landroid/content/Context;Ljava/lang/Class;[Lkotlin/Pair;)V

    return-void
.end method
