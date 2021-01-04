.class final Lcom/liber8tech/tago/android/activity/ProfileActivity$onCreate$2;
.super Ljava/lang/Object;
.source "ProfileActivity.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/ProfileActivity;->onCreate(Landroid/os/Bundle;)V
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
        "it",
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
.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/ProfileActivity;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/ProfileActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/ProfileActivity$onCreate$2;->this$0:Lcom/liber8tech/tago/android/activity/ProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/liber8tech/tago/service/UpdateProfileData;)V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/ProfileActivity$onCreate$2;->this$0:Lcom/liber8tech/tago/android/activity/ProfileActivity;

    invoke-virtual {v0}, Lcom/liber8tech/tago/android/activity/ProfileActivity;->getUi()Lcom/liber8tech/tago/android/ui/ProfileActivityUI;

    move-result-object v0

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/liber8tech/tago/android/ui/ProfileActivityUI;->setProfile(Lcom/liber8tech/tago/service/UpdateProfileData;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Lcom/liber8tech/tago/service/UpdateProfileData;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/ProfileActivity$onCreate$2;->accept(Lcom/liber8tech/tago/service/UpdateProfileData;)V

    return-void
.end method
