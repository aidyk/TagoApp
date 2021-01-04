.class public final Lcom/polidea/rxandroidble2/internal/util/RxBleServicesLogger_Factory;
.super Ljava/lang/Object;
.source "RxBleServicesLogger_Factory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2/internal/util/RxBleServicesLogger;",
        ">;"
    }
.end annotation


# instance fields
.field private final characteristicPropertiesParserProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/CharacteristicPropertiesParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbleshadow/javax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/CharacteristicPropertiesParser;",
            ">;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/util/RxBleServicesLogger_Factory;->characteristicPropertiesParserProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/util/RxBleServicesLogger_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/CharacteristicPropertiesParser;",
            ">;)",
            "Lcom/polidea/rxandroidble2/internal/util/RxBleServicesLogger_Factory;"
        }
    .end annotation

    .line 22
    new-instance v0, Lcom/polidea/rxandroidble2/internal/util/RxBleServicesLogger_Factory;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/util/RxBleServicesLogger_Factory;-><init>(Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method

.method public static newRxBleServicesLogger(Lcom/polidea/rxandroidble2/internal/util/CharacteristicPropertiesParser;)Lcom/polidea/rxandroidble2/internal/util/RxBleServicesLogger;
    .locals 1

    .line 27
    new-instance v0, Lcom/polidea/rxandroidble2/internal/util/RxBleServicesLogger;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/util/RxBleServicesLogger;-><init>(Lcom/polidea/rxandroidble2/internal/util/CharacteristicPropertiesParser;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2/internal/util/RxBleServicesLogger;
    .locals 2

    .line 17
    new-instance v0, Lcom/polidea/rxandroidble2/internal/util/RxBleServicesLogger;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/util/RxBleServicesLogger_Factory;->characteristicPropertiesParserProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/polidea/rxandroidble2/internal/util/CharacteristicPropertiesParser;

    invoke-direct {v0, v1}, Lcom/polidea/rxandroidble2/internal/util/RxBleServicesLogger;-><init>(Lcom/polidea/rxandroidble2/internal/util/CharacteristicPropertiesParser;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/util/RxBleServicesLogger_Factory;->get()Lcom/polidea/rxandroidble2/internal/util/RxBleServicesLogger;

    move-result-object v0

    return-object v0
.end method
