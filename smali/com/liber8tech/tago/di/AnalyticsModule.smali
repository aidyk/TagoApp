.class public Lcom/liber8tech/tago/di/AnalyticsModule;
.super Ljava/lang/Object;
.source "AnalyticsModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0017\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0017\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/liber8tech/tago/di/AnalyticsModule;",
        "",
        "()V",
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
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provideGoogleTrackerXml()I
    .locals 1
    .annotation runtime Lcom/liber8tech/tago/analytics/google/GoogleTrackerXml;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
