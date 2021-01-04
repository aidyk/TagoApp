.class final Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3$2$1;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3$2;->invoke(Lorg/jetbrains/anko/AlertBuilder;)V
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
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/liber8tech/tago/android/activity/MainActivity$onResume$3$2$1\n+ 2 ContextUtils.kt\norg/jetbrains/anko/ContextUtilsKt\n*L\n1#1,625:1\n66#2:626\n*E\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\ncom/liber8tech/tago/android/activity/MainActivity$onResume$3$2$1\n*L\n168#1:626\n*E\n"
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
.field final synthetic this$0:Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3$2;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3$2;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3$2$1;->this$0:Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Boolean;)V
    .locals 0

    .line 168
    iget-object p1, p0, Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3$2$1;->this$0:Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3$2;

    iget-object p1, p1, Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3$2;->this$0:Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3;

    iget-object p1, p1, Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3;->this$0:Lcom/liber8tech/tago/android/activity/MainActivity;

    invoke-static {p1}, Lcom/liber8tech/tago/util/AuthValidationKt;->logoutSuccess(Landroid/app/Activity;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 55
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/liber8tech/tago/android/activity/MainActivity$onResume$3$2$1;->accept(Ljava/lang/Boolean;)V

    return-void
.end method
