.class public final Lcom/polidea/rxandroidble2/internal/connection/DisconnectAction_Factory;
.super Ljava/lang/Object;
.source "DisconnectAction_Factory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2/internal/connection/DisconnectAction;",
        ">;"
    }
.end annotation


# instance fields
.field private final clientOperationQueueProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final operationDisconnectProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueue;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/DisconnectAction_Factory;->clientOperationQueueProvider:Lbleshadow/javax/inject/Provider;

    .line 18
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/connection/DisconnectAction_Factory;->operationDisconnectProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/connection/DisconnectAction_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueue;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation;",
            ">;)",
            "Lcom/polidea/rxandroidble2/internal/connection/DisconnectAction_Factory;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/DisconnectAction_Factory;

    invoke-direct {v0, p0, p1}, Lcom/polidea/rxandroidble2/internal/connection/DisconnectAction_Factory;-><init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method

.method public static newDisconnectAction(Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueue;Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation;)Lcom/polidea/rxandroidble2/internal/connection/DisconnectAction;
    .locals 1

    .line 35
    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/DisconnectAction;

    invoke-direct {v0, p0, p1}, Lcom/polidea/rxandroidble2/internal/connection/DisconnectAction;-><init>(Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueue;Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2/internal/connection/DisconnectAction;
    .locals 3

    .line 23
    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/DisconnectAction;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/connection/DisconnectAction_Factory;->clientOperationQueueProvider:Lbleshadow/javax/inject/Provider;

    .line 24
    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueue;

    iget-object v2, p0, Lcom/polidea/rxandroidble2/internal/connection/DisconnectAction_Factory;->operationDisconnectProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v2}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation;

    invoke-direct {v0, v1, v2}, Lcom/polidea/rxandroidble2/internal/connection/DisconnectAction;-><init>(Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueue;Lcom/polidea/rxandroidble2/internal/operations/DisconnectOperation;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/connection/DisconnectAction_Factory;->get()Lcom/polidea/rxandroidble2/internal/connection/DisconnectAction;

    move-result-object v0

    return-object v0
.end method
