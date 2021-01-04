.class public final Lcom/polidea/rxandroidble2/internal/connection/MtuBasedPayloadSizeLimit_Factory;
.super Ljava/lang/Object;
.source "MtuBasedPayloadSizeLimit_Factory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2/internal/connection/MtuBasedPayloadSizeLimit;",
        ">;"
    }
.end annotation


# instance fields
.field private final gattWriteMtuOverheadProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final rxBleConnectionProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/RxBleConnection;",
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
            "Lcom/polidea/rxandroidble2/RxBleConnection;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/MtuBasedPayloadSizeLimit_Factory;->rxBleConnectionProvider:Lbleshadow/javax/inject/Provider;

    .line 17
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/connection/MtuBasedPayloadSizeLimit_Factory;->gattWriteMtuOverheadProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/connection/MtuBasedPayloadSizeLimit_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/RxBleConnection;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/polidea/rxandroidble2/internal/connection/MtuBasedPayloadSizeLimit_Factory;"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/MtuBasedPayloadSizeLimit_Factory;

    invoke-direct {v0, p0, p1}, Lcom/polidea/rxandroidble2/internal/connection/MtuBasedPayloadSizeLimit_Factory;-><init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method

.method public static newMtuBasedPayloadSizeLimit(Lcom/polidea/rxandroidble2/RxBleConnection;I)Lcom/polidea/rxandroidble2/internal/connection/MtuBasedPayloadSizeLimit;
    .locals 1

    .line 35
    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/MtuBasedPayloadSizeLimit;

    invoke-direct {v0, p0, p1}, Lcom/polidea/rxandroidble2/internal/connection/MtuBasedPayloadSizeLimit;-><init>(Lcom/polidea/rxandroidble2/RxBleConnection;I)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2/internal/connection/MtuBasedPayloadSizeLimit;
    .locals 3

    .line 22
    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/MtuBasedPayloadSizeLimit;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/connection/MtuBasedPayloadSizeLimit_Factory;->rxBleConnectionProvider:Lbleshadow/javax/inject/Provider;

    .line 23
    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/polidea/rxandroidble2/RxBleConnection;

    iget-object v2, p0, Lcom/polidea/rxandroidble2/internal/connection/MtuBasedPayloadSizeLimit_Factory;->gattWriteMtuOverheadProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v2}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/polidea/rxandroidble2/internal/connection/MtuBasedPayloadSizeLimit;-><init>(Lcom/polidea/rxandroidble2/RxBleConnection;I)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/connection/MtuBasedPayloadSizeLimit_Factory;->get()Lcom/polidea/rxandroidble2/internal/connection/MtuBasedPayloadSizeLimit;

    move-result-object v0

    return-object v0
.end method
