.class final Lcom/liber8tech/tago/android/activity/IntroActivity$initVideo$1$1$1;
.super Ljava/lang/Object;
.source "IntroActivity.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/IntroActivity$initVideo$1$1;->invoke(Lorg/jetbrains/anko/AlertBuilder;)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIntroActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntroActivity.kt\ncom/liber8tech/tago/android/activity/IntroActivity$initVideo$1$1$1\n+ 2 Intents.kt\norg/jetbrains/anko/IntentsKt\n*L\n1#1,150:1\n31#2:151\n*E\n*S KotlinDebug\n*F\n+ 1 IntroActivity.kt\ncom/liber8tech/tago/android/activity/IntroActivity$initVideo$1$1$1\n*L\n106#1:151\n*E\n"
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
.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/IntroActivity$initVideo$1$1;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/IntroActivity$initVideo$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/IntroActivity$initVideo$1$1$1;->this$0:Lcom/liber8tech/tago/android/activity/IntroActivity$initVideo$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/liber8tech/tago/service/UpdateProfileData;)V
    .locals 5

    .line 103
    invoke-virtual {p1}, Lcom/liber8tech/tago/service/UpdateProfileData;->getCompletedProfile()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/IntroActivity$initVideo$1$1$1;->this$0:Lcom/liber8tech/tago/android/activity/IntroActivity$initVideo$1$1;

    iget-object p1, p1, Lcom/liber8tech/tago/android/activity/IntroActivity$initVideo$1$1;->this$0:Lcom/liber8tech/tago/android/activity/IntroActivity$initVideo$1;

    iget-object p1, p1, Lcom/liber8tech/tago/android/activity/IntroActivity$initVideo$1;->this$0:Lcom/liber8tech/tago/android/activity/IntroActivity;

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/liber8tech/tago/util/AuthValidationKt;->loginSuccess(Landroid/app/Activity;)V

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/liber8tech/tago/android/activity/IntroActivity$initVideo$1$1$1;->this$0:Lcom/liber8tech/tago/android/activity/IntroActivity$initVideo$1$1;

    iget-object v0, v0, Lcom/liber8tech/tago/android/activity/IntroActivity$initVideo$1$1;->this$0:Lcom/liber8tech/tago/android/activity/IntroActivity$initVideo$1;

    iget-object v0, v0, Lcom/liber8tech/tago/android/activity/IntroActivity$initVideo$1;->this$0:Lcom/liber8tech/tago/android/activity/IntroActivity;

    new-array v1, v1, [Lkotlin/Pair;

    const/4 v2, 0x0

    new-instance v3, Lkotlin/Pair;

    const-string v4, "profile"

    invoke-direct {v3, v4, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v2

    .line 151
    const-class p1, Lcom/liber8tech/tago/android/activity/ProfileActivity;

    invoke-static {v0, p1, v1}, Lorg/jetbrains/anko/internals/AnkoInternals;->internalStartActivity(Landroid/content/Context;Ljava/lang/Class;[Lkotlin/Pair;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p1, Lcom/liber8tech/tago/service/UpdateProfileData;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/IntroActivity$initVideo$1$1$1;->accept(Lcom/liber8tech/tago/service/UpdateProfileData;)V

    return-void
.end method
