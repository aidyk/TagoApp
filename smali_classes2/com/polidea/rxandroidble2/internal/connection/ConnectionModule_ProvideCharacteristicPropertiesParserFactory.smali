.class public final Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule_ProvideCharacteristicPropertiesParserFactory;
.super Ljava/lang/Object;
.source "ConnectionModule_ProvideCharacteristicPropertiesParserFactory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2/internal/util/CharacteristicPropertiesParser;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule;


# direct methods
.method public constructor <init>(Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule_ProvideCharacteristicPropertiesParserFactory;->module:Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule;

    return-void
.end method

.method public static create(Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule;)Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule_ProvideCharacteristicPropertiesParserFactory;
    .locals 1

    .line 25
    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule_ProvideCharacteristicPropertiesParserFactory;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule_ProvideCharacteristicPropertiesParserFactory;-><init>(Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule;)V

    return-object v0
.end method

.method public static proxyProvideCharacteristicPropertiesParser(Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule;)Lcom/polidea/rxandroidble2/internal/util/CharacteristicPropertiesParser;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule;->provideCharacteristicPropertiesParser()Lcom/polidea/rxandroidble2/internal/util/CharacteristicPropertiesParser;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 30
    invoke-static {p0, v0}, Lbleshadow/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/polidea/rxandroidble2/internal/util/CharacteristicPropertiesParser;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2/internal/util/CharacteristicPropertiesParser;
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule_ProvideCharacteristicPropertiesParserFactory;->module:Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule;

    .line 19
    invoke-virtual {v0}, Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule;->provideCharacteristicPropertiesParser()Lcom/polidea/rxandroidble2/internal/util/CharacteristicPropertiesParser;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 18
    invoke-static {v0, v1}, Lbleshadow/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/polidea/rxandroidble2/internal/util/CharacteristicPropertiesParser;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule_ProvideCharacteristicPropertiesParserFactory;->get()Lcom/polidea/rxandroidble2/internal/util/CharacteristicPropertiesParser;

    move-result-object v0

    return-object v0
.end method
