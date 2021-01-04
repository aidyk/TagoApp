.class final Lcom/liber8tech/tago/android/activity/ResetActivity$onCreate$1$builder$1;
.super Ljava/lang/Object;
.source "ResetActivity.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/ResetActivity$onCreate$1;->invoke(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nResetActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResetActivity.kt\ncom/liber8tech/tago/android/activity/ResetActivity$onCreate$1$builder$1\n+ 2 Intents.kt\norg/jetbrains/anko/IntentsKt\n*L\n1#1,64:1\n41#2:65\n*E\n*S KotlinDebug\n*F\n+ 1 ResetActivity.kt\ncom/liber8tech/tago/android/activity/ResetActivity$onCreate$1$builder$1\n*L\n35#1:65\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/content/DialogInterface;",
        "kotlin.jvm.PlatformType",
        "<anonymous parameter 1>",
        "",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/ResetActivity$onCreate$1;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/ResetActivity$onCreate$1;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/ResetActivity$onCreate$1$builder$1;->this$0:Lcom/liber8tech/tago/android/activity/ResetActivity$onCreate$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 35
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/ResetActivity$onCreate$1$builder$1;->this$0:Lcom/liber8tech/tago/android/activity/ResetActivity$onCreate$1;

    iget-object p1, p1, Lcom/liber8tech/tago/android/activity/ResetActivity$onCreate$1;->this$0:Lcom/liber8tech/tago/android/activity/ResetActivity;

    iget-object p2, p0, Lcom/liber8tech/tago/android/activity/ResetActivity$onCreate$1$builder$1;->this$0:Lcom/liber8tech/tago/android/activity/ResetActivity$onCreate$1;

    iget-object p2, p2, Lcom/liber8tech/tago/android/activity/ResetActivity$onCreate$1;->this$0:Lcom/liber8tech/tago/android/activity/ResetActivity;

    invoke-virtual {p2}, Lcom/liber8tech/tago/android/activity/ResetActivity;->getResetRequest()I

    move-result p2

    const/4 v0, 0x0

    new-array v0, v0, [Lkotlin/Pair;

    .line 65
    const-class v1, Lcom/liber8tech/tago/android/activity/ResetChooseDeviceActivity;

    invoke-static {p1, v1, p2, v0}, Lorg/jetbrains/anko/internals/AnkoInternals;->internalStartActivityForResult(Landroid/app/Activity;Ljava/lang/Class;I[Lkotlin/Pair;)V

    return-void
.end method
