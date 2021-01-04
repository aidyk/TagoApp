.class public final Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationMessageCreator_Factory;
.super Ljava/lang/Object;
.source "IllegalOperationMessageCreator_Factory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationMessageCreator;",
        ">;"
    }
.end annotation


# instance fields
.field private final propertiesParserProvider:Lbleshadow/javax/inject/Provider;
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

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationMessageCreator_Factory;->propertiesParserProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationMessageCreator_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/CharacteristicPropertiesParser;",
            ">;)",
            "Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationMessageCreator_Factory;"
        }
    .end annotation

    .line 24
    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationMessageCreator_Factory;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationMessageCreator_Factory;-><init>(Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationMessageCreator;
    .locals 2

    .line 19
    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationMessageCreator;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationMessageCreator_Factory;->propertiesParserProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/polidea/rxandroidble2/internal/util/CharacteristicPropertiesParser;

    invoke-direct {v0, v1}, Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationMessageCreator;-><init>(Lcom/polidea/rxandroidble2/internal/util/CharacteristicPropertiesParser;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationMessageCreator_Factory;->get()Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationMessageCreator;

    move-result-object v0

    return-object v0
.end method
