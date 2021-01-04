.class public final Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl_Factory;
.super Ljava/lang/Object;
.source "ConnectorImpl_Factory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final callbacksSchedulerProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field private final clientOperationQueueProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final connectionComponentBuilderProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent$Builder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueue;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent$Builder;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Scheduler;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl_Factory;->clientOperationQueueProvider:Lbleshadow/javax/inject/Provider;

    .line 21
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl_Factory;->connectionComponentBuilderProvider:Lbleshadow/javax/inject/Provider;

    .line 22
    iput-object p3, p0, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl_Factory;->callbacksSchedulerProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueue;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent$Builder;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Scheduler;",
            ">;)",
            "Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl_Factory;"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl_Factory;-><init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl;
    .locals 4

    .line 27
    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl_Factory;->clientOperationQueueProvider:Lbleshadow/javax/inject/Provider;

    .line 28
    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueue;

    iget-object v2, p0, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl_Factory;->connectionComponentBuilderProvider:Lbleshadow/javax/inject/Provider;

    .line 29
    invoke-interface {v2}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent$Builder;

    iget-object v3, p0, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl_Factory;->callbacksSchedulerProvider:Lbleshadow/javax/inject/Provider;

    .line 30
    invoke-interface {v3}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/Scheduler;

    invoke-direct {v0, v1, v2, v3}, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl;-><init>(Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueue;Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent$Builder;Lio/reactivex/Scheduler;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl_Factory;->get()Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl;

    move-result-object v0

    return-object v0
.end method
