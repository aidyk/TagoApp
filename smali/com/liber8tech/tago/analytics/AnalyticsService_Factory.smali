.class public final Lcom/liber8tech/tago/analytics/AnalyticsService_Factory;
.super Ljava/lang/Object;
.source "AnalyticsService_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/liber8tech/tago/analytics/AnalyticsService;",
        ">;"
    }
.end annotation


# instance fields
.field private final ctxProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final xmlResProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/liber8tech/tago/analytics/AnalyticsService_Factory;->ctxProvider:Ljavax/inject/Provider;

    .line 15
    iput-object p2, p0, Lcom/liber8tech/tago/analytics/AnalyticsService_Factory;->xmlResProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/liber8tech/tago/analytics/AnalyticsService_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/liber8tech/tago/analytics/AnalyticsService_Factory;"
        }
    .end annotation

    .line 25
    new-instance v0, Lcom/liber8tech/tago/analytics/AnalyticsService_Factory;

    invoke-direct {v0, p0, p1}, Lcom/liber8tech/tago/analytics/AnalyticsService_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/liber8tech/tago/analytics/AnalyticsService;
    .locals 3

    .line 20
    new-instance v0, Lcom/liber8tech/tago/analytics/AnalyticsService;

    iget-object v1, p0, Lcom/liber8tech/tago/analytics/AnalyticsService_Factory;->ctxProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/liber8tech/tago/analytics/AnalyticsService_Factory;->xmlResProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/liber8tech/tago/analytics/AnalyticsService;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/liber8tech/tago/analytics/AnalyticsService_Factory;->get()Lcom/liber8tech/tago/analytics/AnalyticsService;

    move-result-object v0

    return-object v0
.end method
