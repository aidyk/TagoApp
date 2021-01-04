.class final Lcom/liber8tech/tago/android/ui/SettingsActivityUI$addMyTagoRow$$inlined$apply$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SettingsActivityUI.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/ui/SettingsActivityUI;->addMyTagoRow(Landroid/content/Context;Lcom/liber8tech/tago/model/TagoDevice;)V
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
    value = "SMAP\nSettingsActivityUI.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsActivityUI.kt\ncom/liber8tech/tago/android/ui/SettingsActivityUI$addMyTagoRow$1$1\n+ 2 Intents.kt\norg/jetbrains/anko/IntentsKt\n*L\n1#1,211:1\n31#2:212\n*E\n*S KotlinDebug\n*F\n+ 1 SettingsActivityUI.kt\ncom/liber8tech/tago/android/ui/SettingsActivityUI$addMyTagoRow$1$1\n*L\n197#1:212\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "invoke",
        "com/liber8tech/tago/android/ui/SettingsActivityUI$addMyTagoRow$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic $ctx$inlined:Landroid/content/Context;

.field final synthetic $item$inlined:Lcom/liber8tech/tago/model/TagoDevice;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/model/TagoDevice;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/ui/SettingsActivityUI$addMyTagoRow$$inlined$apply$lambda$1;->$item$inlined:Lcom/liber8tech/tago/model/TagoDevice;

    iput-object p2, p0, Lcom/liber8tech/tago/android/ui/SettingsActivityUI$addMyTagoRow$$inlined$apply$lambda$1;->$ctx$inlined:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 26
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/ui/SettingsActivityUI$addMyTagoRow$$inlined$apply$lambda$1;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 197
    iget-object p1, p0, Lcom/liber8tech/tago/android/ui/SettingsActivityUI$addMyTagoRow$$inlined$apply$lambda$1;->$ctx$inlined:Landroid/content/Context;

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/Pair;

    new-instance v1, Lkotlin/Pair;

    const-string v2, "identifier"

    iget-object v3, p0, Lcom/liber8tech/tago/android/ui/SettingsActivityUI$addMyTagoRow$$inlined$apply$lambda$1;->$item$inlined:Lcom/liber8tech/tago/model/TagoDevice;

    invoke-virtual {v3}, Lcom/liber8tech/tago/model/TagoDevice;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 212
    const-class v1, Lcom/liber8tech/tago/android/activity/TagoDetailsActivity;

    invoke-static {p1, v1, v0}, Lorg/jetbrains/anko/internals/AnkoInternals;->internalStartActivity(Landroid/content/Context;Ljava/lang/Class;[Lkotlin/Pair;)V

    return-void
.end method
