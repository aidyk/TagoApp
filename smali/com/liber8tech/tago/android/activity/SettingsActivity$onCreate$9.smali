.class final Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$9;
.super Ljava/lang/Object;
.source "SettingsActivity.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/SettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lio/realm/RealmResults<",
        "Lcom/liber8tech/tago/model/TagoDevice;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSettingsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsActivity.kt\ncom/liber8tech/tago/android/activity/SettingsActivity$onCreate$9\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ContextUtils.kt\norg/jetbrains/anko/ContextUtilsKt\n*L\n1#1,151:1\n1561#2:152\n1562#2:154\n62#3:153\n*E\n*S KotlinDebug\n*F\n+ 1 SettingsActivity.kt\ncom/liber8tech/tago/android/activity/SettingsActivity$onCreate$9\n*L\n117#1:152\n117#1:154\n117#1:153\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012*\u0010\u0002\u001a&\u0012\u000c\u0012\n \u0005*\u0004\u0018\u00010\u00040\u0004 \u0005*\u0012\u0012\u000c\u0012\n \u0005*\u0004\u0018\u00010\u00040\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lio/realm/RealmResults;",
        "Lcom/liber8tech/tago/model/TagoDevice;",
        "kotlin.jvm.PlatformType",
        "accept"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/SettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$9;->this$0:Lcom/liber8tech/tago/android/activity/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lio/realm/RealmResults;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmResults<",
            "Lcom/liber8tech/tago/model/TagoDevice;",
            ">;)V"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$9;->this$0:Lcom/liber8tech/tago/android/activity/SettingsActivity;

    invoke-static {v0}, Lcom/liber8tech/tago/android/activity/SettingsActivity;->access$getUi$p(Lcom/liber8tech/tago/android/activity/SettingsActivity;)Lcom/liber8tech/tago/android/ui/SettingsActivityUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/ui/SettingsActivityUI;->clearTagoList()V

    const-string v0, "it"

    .line 117
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 152
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liber8tech/tago/model/TagoDevice;

    .line 117
    iget-object v1, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$9;->this$0:Lcom/liber8tech/tago/android/activity/SettingsActivity;

    invoke-static {v1}, Lcom/liber8tech/tago/android/activity/SettingsActivity;->access$getUi$p(Lcom/liber8tech/tago/android/activity/SettingsActivity;)Lcom/liber8tech/tago/android/ui/SettingsActivityUI;

    move-result-object v1

    iget-object v2, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$9;->this$0:Lcom/liber8tech/tago/android/activity/SettingsActivity;

    const-string v3, "it"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Lcom/liber8tech/tago/android/ui/SettingsActivityUI;->addMyTagoRow(Landroid/content/Context;Lcom/liber8tech/tago/model/TagoDevice;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p1, Lio/realm/RealmResults;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$9;->accept(Lio/realm/RealmResults;)V

    return-void
.end method
