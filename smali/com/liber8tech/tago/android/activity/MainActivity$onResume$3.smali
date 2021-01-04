.class final Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/MainActivity;->onResume()V
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
        "Lcom/liber8tech/tago/service/UpdateProfileData;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "profile",
        "Lcom/liber8tech/tago/service/UpdateProfileData;",
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
.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3;->this$0:Lcom/liber8tech/tago/android/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/liber8tech/tago/service/UpdateProfileData;)V
    .locals 3

    .line 153
    invoke-virtual {p1}, Lcom/liber8tech/tago/service/UpdateProfileData;->getTermsOfCondition()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/liber8tech/tago/service/UpdateProfileData;->getPrivacyPolicy()Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_0

    .line 154
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3;->this$0:Lcom/liber8tech/tago/android/activity/MainActivity;

    new-instance v0, Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3$1;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3$1;-><init>(Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 161
    new-instance v1, Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3$2;

    invoke-direct {v1, p0}, Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3$2;-><init>(Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 154
    invoke-static {p1, v0, v1}, Lcom/liber8tech/tago/util/extension/ContextExtensionKt;->showToUDialog(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 55
    check-cast p1, Lcom/liber8tech/tago/service/UpdateProfileData;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3;->accept(Lcom/liber8tech/tago/service/UpdateProfileData;)V

    return-void
.end method
