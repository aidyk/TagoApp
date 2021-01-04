.class public final Lcom/liber8tech/tago/android/TagoApplication$component$2$1;
.super Lcom/liber8tech/tago/di/AnalyticsModule;
.source "TagoApplication.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liber8tech/tago/android/TagoApplication$component$2;->invoke()Lcom/liber8tech/tago/di/TagoComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/liber8tech/tago/android/TagoApplication$component$2$1",
        "Lcom/liber8tech/tago/di/AnalyticsModule;",
        "provideGoogleTrackerXml",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/liber8tech/tago/di/AnalyticsModule;-><init>()V

    return-void
.end method


# virtual methods
.method public provideGoogleTrackerXml()I
    .locals 1

    const/high16 v0, 0x7f120000

    return v0
.end method
