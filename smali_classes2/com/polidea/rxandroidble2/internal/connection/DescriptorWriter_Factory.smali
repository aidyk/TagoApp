.class public final Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter_Factory;
.super Ljava/lang/Object;
.source "DescriptorWriter_Factory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter;",
        ">;"
    }
.end annotation


# instance fields
.field private final operationQueueProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final operationsProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/operations/OperationsProvider;",
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
            "Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/operations/OperationsProvider;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter_Factory;->operationQueueProvider:Lbleshadow/javax/inject/Provider;

    .line 18
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter_Factory;->operationsProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/operations/OperationsProvider;",
            ">;)",
            "Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter_Factory;"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter_Factory;

    invoke-direct {v0, p0, p1}, Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter_Factory;-><init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method

.method public static newDescriptorWriter(Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;Lcom/polidea/rxandroidble2/internal/operations/OperationsProvider;)Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter;
    .locals 1

    .line 34
    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter;

    invoke-direct {v0, p0, p1}, Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter;-><init>(Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;Lcom/polidea/rxandroidble2/internal/operations/OperationsProvider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter;
    .locals 3

    .line 23
    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter_Factory;->operationQueueProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;

    iget-object v2, p0, Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter_Factory;->operationsProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v2}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/polidea/rxandroidble2/internal/operations/OperationsProvider;

    invoke-direct {v0, v1, v2}, Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter;-><init>(Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;Lcom/polidea/rxandroidble2/internal/operations/OperationsProvider;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter_Factory;->get()Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter;

    move-result-object v0

    return-object v0
.end method
