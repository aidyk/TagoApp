.class public final Lcom/liber8tech/tago/di/AnalyticsModule_ProvideGoogleTrackerXmlFactory;
.super Ljava/lang/Object;
.source "AnalyticsModule_ProvideGoogleTrackerXmlFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/liber8tech/tago/di/AnalyticsModule;


# direct methods
.method public constructor <init>(Lcom/liber8tech/tago/di/AnalyticsModule;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/liber8tech/tago/di/AnalyticsModule_ProvideGoogleTrackerXmlFactory;->module:Lcom/liber8tech/tago/di/AnalyticsModule;

    return-void
.end method

.method public static create(Lcom/liber8tech/tago/di/AnalyticsModule;)Lcom/liber8tech/tago/di/AnalyticsModule_ProvideGoogleTrackerXmlFactory;
    .locals 1

    .line 19
    new-instance v0, Lcom/liber8tech/tago/di/AnalyticsModule_ProvideGoogleTrackerXmlFactory;

    invoke-direct {v0, p0}, Lcom/liber8tech/tago/di/AnalyticsModule_ProvideGoogleTrackerXmlFactory;-><init>(Lcom/liber8tech/tago/di/AnalyticsModule;)V

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Integer;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/liber8tech/tago/di/AnalyticsModule_ProvideGoogleTrackerXmlFactory;->module:Lcom/liber8tech/tago/di/AnalyticsModule;

    invoke-virtual {v0}, Lcom/liber8tech/tago/di/AnalyticsModule;->provideGoogleTrackerXml()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/liber8tech/tago/di/AnalyticsModule_ProvideGoogleTrackerXmlFactory;->get()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
