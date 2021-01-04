.class public final Lcom/polidea/rxandroidble2/internal/connection/MtuWatcher_Factory;
.super Ljava/lang/Object;
.source "MtuWatcher_Factory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2/internal/connection/MtuWatcher;",
        ">;"
    }
.end annotation


# instance fields
.field private final initialValueProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final rxBleGattCallbackProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;",
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
            "Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/MtuWatcher_Factory;->rxBleGattCallbackProvider:Lbleshadow/javax/inject/Provider;

    .line 16
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/connection/MtuWatcher_Factory;->initialValueProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/connection/MtuWatcher_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/polidea/rxandroidble2/internal/connection/MtuWatcher_Factory;"
        }
    .end annotation

    .line 27
    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/MtuWatcher_Factory;

    invoke-direct {v0, p0, p1}, Lcom/polidea/rxandroidble2/internal/connection/MtuWatcher_Factory;-><init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method

.method public static newMtuWatcher(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;I)Lcom/polidea/rxandroidble2/internal/connection/MtuWatcher;
    .locals 1

    .line 31
    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/MtuWatcher;

    invoke-direct {v0, p0, p1}, Lcom/polidea/rxandroidble2/internal/connection/MtuWatcher;-><init>(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;I)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2/internal/connection/MtuWatcher;
    .locals 3

    .line 21
    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/MtuWatcher;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/connection/MtuWatcher_Factory;->rxBleGattCallbackProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    iget-object v2, p0, Lcom/polidea/rxandroidble2/internal/connection/MtuWatcher_Factory;->initialValueProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v2}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/polidea/rxandroidble2/internal/connection/MtuWatcher;-><init>(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;I)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/connection/MtuWatcher_Factory;->get()Lcom/polidea/rxandroidble2/internal/connection/MtuWatcher;

    move-result-object v0

    return-object v0
.end method
