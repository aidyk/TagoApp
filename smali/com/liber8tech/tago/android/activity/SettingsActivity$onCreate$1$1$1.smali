.class final Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$1$1$1;
.super Ljava/lang/Object;
.source "SettingsActivity.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$1$1;->invoke(Landroid/view/View;)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSettingsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsActivity.kt\ncom/liber8tech/tago/android/activity/SettingsActivity$onCreate$1$1$1\n+ 2 ContextUtils.kt\norg/jetbrains/anko/ContextUtilsKt\n*L\n1#1,151:1\n66#2:152\n*E\n*S KotlinDebug\n*F\n+ 1 SettingsActivity.kt\ncom/liber8tech/tago/android/activity/SettingsActivity$onCreate$1$1$1\n*L\n64#1:152\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "kotlin.jvm.PlatformType",
        "accept",
        "(Ljava/lang/Boolean;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$1$1;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$1$1$1;->this$0:Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Boolean;)V
    .locals 1

    .line 59
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$1$1$1;->this$0:Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$1$1;

    iget-object p1, p1, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$1$1;->this$0:Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$1;

    iget-object p1, p1, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$1;->this$0:Lcom/liber8tech/tago/android/activity/SettingsActivity;

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/activity/SettingsActivity;->getImageEditorService()Lcom/liber8tech/tago/service/ImageEditorService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/liber8tech/tago/service/ImageEditorService;->deleteCreatedPattern()Z

    .line 60
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$1$1$1;->this$0:Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$1$1;

    iget-object p1, p1, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$1$1;->this$0:Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$1;

    iget-object p1, p1, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$1;->this$0:Lcom/liber8tech/tago/android/activity/SettingsActivity;

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/activity/SettingsActivity;->getRuntimeConfig()Lcom/liber8tech/tago/util/RuntimeConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/liber8tech/tago/util/RuntimeConfig;->removeToken()V

    .line 61
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$1$1$1;->this$0:Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$1$1;

    iget-object p1, p1, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$1$1;->this$0:Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$1;

    iget-object p1, p1, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$1;->this$0:Lcom/liber8tech/tago/android/activity/SettingsActivity;

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/activity/SettingsActivity;->getRuntimeConfig()Lcom/liber8tech/tago/util/RuntimeConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/liber8tech/tago/util/RuntimeConfig;->removeUserId()V

    .line 62
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$1$1$1;->this$0:Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$1$1;

    iget-object p1, p1, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$1$1;->this$0:Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$1;

    iget-object p1, p1, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$1;->this$0:Lcom/liber8tech/tago/android/activity/SettingsActivity;

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/activity/SettingsActivity;->getRuntimeConfig()Lcom/liber8tech/tago/util/RuntimeConfig;

    move-result-object p1

    sget-object v0, Lcom/liber8tech/tago/android/activity/MainActivityUI$SelectedCollection;->STARTER:Lcom/liber8tech/tago/android/activity/MainActivityUI$SelectedCollection;

    invoke-virtual {p1, v0}, Lcom/liber8tech/tago/util/RuntimeConfig;->setLastCollection(Lcom/liber8tech/tago/android/activity/MainActivityUI$SelectedCollection;)V

    .line 63
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$1$1$1;->this$0:Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$1$1;

    iget-object p1, p1, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$1$1;->this$0:Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$1;

    iget-object p1, p1, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$1;->this$0:Lcom/liber8tech/tago/android/activity/SettingsActivity;

    invoke-virtual {p1}, Lcom/liber8tech/tago/android/activity/SettingsActivity;->getImageEditorService()Lcom/liber8tech/tago/service/ImageEditorService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/liber8tech/tago/service/ImageEditorService;->deletePurchasedPattern()Z

    .line 64
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$1$1$1;->this$0:Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$1$1;

    iget-object p1, p1, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$1$1;->this$0:Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$1;

    iget-object p1, p1, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$1;->this$0:Lcom/liber8tech/tago/android/activity/SettingsActivity;

    invoke-static {p1}, Lcom/liber8tech/tago/util/AuthValidationKt;->logoutSuccess(Landroid/app/Activity;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/SettingsActivity$onCreate$1$1$1;->accept(Ljava/lang/Boolean;)V

    return-void
.end method
