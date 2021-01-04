.class final Lcom/liber8tech/tago/android/TagoApplication$component$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TagoApplication.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/TagoApplication;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/liber8tech/tago/di/TagoComponent;",
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
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Lcom/liber8tech/tago/di/TagoComponent;",
        "kotlin.jvm.PlatformType",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liber8tech/tago/android/TagoApplication;


# direct methods
.method constructor <init>(Lcom/liber8tech/tago/android/TagoApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/liber8tech/tago/android/TagoApplication$component$2;->this$0:Lcom/liber8tech/tago/android/TagoApplication;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/liber8tech/tago/di/TagoComponent;
    .locals 3

    .line 33
    invoke-static {}, Lcom/liber8tech/tago/di/DaggerTagoComponent;->builder()Lcom/liber8tech/tago/di/DaggerTagoComponent$Builder;

    move-result-object v0

    .line 34
    new-instance v1, Lcom/liber8tech/tago/di/CoreModule;

    iget-object v2, p0, Lcom/liber8tech/tago/android/TagoApplication$component$2;->this$0:Lcom/liber8tech/tago/android/TagoApplication;

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/liber8tech/tago/di/CoreModule;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/liber8tech/tago/di/DaggerTagoComponent$Builder;->coreModule(Lcom/liber8tech/tago/di/CoreModule;)Lcom/liber8tech/tago/di/DaggerTagoComponent$Builder;

    move-result-object v0

    .line 35
    new-instance v1, Lcom/liber8tech/tago/di/TagoModule;

    iget-object v2, p0, Lcom/liber8tech/tago/android/TagoApplication$component$2;->this$0:Lcom/liber8tech/tago/android/TagoApplication;

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/liber8tech/tago/di/TagoModule;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/liber8tech/tago/di/DaggerTagoComponent$Builder;->tagoModule(Lcom/liber8tech/tago/di/TagoModule;)Lcom/liber8tech/tago/di/DaggerTagoComponent$Builder;

    move-result-object v0

    .line 36
    new-instance v1, Lcom/liber8tech/tago/android/TagoApplication$component$2$1;

    invoke-direct {v1}, Lcom/liber8tech/tago/android/TagoApplication$component$2$1;-><init>()V

    check-cast v1, Lcom/liber8tech/tago/di/AnalyticsModule;

    invoke-virtual {v0, v1}, Lcom/liber8tech/tago/di/DaggerTagoComponent$Builder;->analyticsModule(Lcom/liber8tech/tago/di/AnalyticsModule;)Lcom/liber8tech/tago/di/DaggerTagoComponent$Builder;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/liber8tech/tago/di/DaggerTagoComponent$Builder;->build()Lcom/liber8tech/tago/di/TagoComponent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/liber8tech/tago/android/TagoApplication$component$2;->invoke()Lcom/liber8tech/tago/di/TagoComponent;

    move-result-object v0

    return-object v0
.end method
