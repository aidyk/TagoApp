.class public Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule;
.super Ljava/lang/Object;
.source "ConnectionModule.java"


# annotations
.annotation runtime Lbleshadow/dagger/Module;
.end annotation


# static fields
.field public static final OPERATION_TIMEOUT:Ljava/lang/String; = "operation-timeout"


# instance fields
.field final autoConnect:Z

.field private final operationTimeout:Lcom/polidea/rxandroidble2/Timeout;

.field final suppressOperationCheck:Z


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/ConnectionSetup;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iget-boolean v0, p1, Lcom/polidea/rxandroidble2/ConnectionSetup;->autoConnect:Z

    iput-boolean v0, p0, Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule;->autoConnect:Z

    .line 29
    iget-boolean v0, p1, Lcom/polidea/rxandroidble2/ConnectionSetup;->suppressOperationCheck:Z

    iput-boolean v0, p0, Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule;->suppressOperationCheck:Z

    .line 30
    iget-object p1, p1, Lcom/polidea/rxandroidble2/ConnectionSetup;->operationTimeout:Lcom/polidea/rxandroidble2/Timeout;

    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule;->operationTimeout:Lcom/polidea/rxandroidble2/Timeout;

    return-void
.end method


# virtual methods
.method provideAutoConnect()Z
    .locals 1
    .annotation runtime Lbleshadow/dagger/Provides;
    .end annotation

    .annotation runtime Lbleshadow/javax/inject/Named;
        value = "autoConnect"
    .end annotation

    .annotation runtime Lcom/polidea/rxandroidble2/internal/connection/ConnectionScope;
    .end annotation

    .line 35
    iget-boolean v0, p0, Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule;->autoConnect:Z

    return v0
.end method

.method provideCharacteristicPropertiesParser()Lcom/polidea/rxandroidble2/internal/util/CharacteristicPropertiesParser;
    .locals 9
    .annotation runtime Lbleshadow/dagger/Provides;
    .end annotation

    .line 59
    new-instance v8, Lcom/polidea/rxandroidble2/internal/util/CharacteristicPropertiesParser;

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/16 v4, 0x8

    const/16 v5, 0x10

    const/16 v6, 0x20

    const/16 v7, 0x40

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/polidea/rxandroidble2/internal/util/CharacteristicPropertiesParser;-><init>(IIIIIII)V

    return-object v8
.end method

.method provideIllegalOperationHandler(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationHandler;
    .locals 1
    .annotation runtime Lbleshadow/dagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/LoggingIllegalOperationHandler;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/ThrowingIllegalOperationHandler;",
            ">;)",
            "Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationHandler;"
        }
    .end annotation

    .line 50
    iget-boolean v0, p0, Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule;->suppressOperationCheck:Z

    if-eqz v0, :cond_0

    .line 51
    invoke-interface {p1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationHandler;

    return-object p1

    .line 53
    :cond_0
    invoke-interface {p2}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationHandler;

    return-object p1
.end method

.method providesOperationTimeoutConf(Lio/reactivex/Scheduler;)Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;
    .locals 4
    .param p1    # Lio/reactivex/Scheduler;
        .annotation runtime Lbleshadow/javax/inject/Named;
            value = "timeout"
        .end annotation
    .end param
    .annotation runtime Lbleshadow/dagger/Provides;
    .end annotation

    .annotation runtime Lbleshadow/javax/inject/Named;
        value = "operation-timeout"
    .end annotation

    .line 42
    new-instance v0, Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule;->operationTimeout:Lcom/polidea/rxandroidble2/Timeout;

    iget-wide v1, v1, Lcom/polidea/rxandroidble2/Timeout;->timeout:J

    iget-object v3, p0, Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule;->operationTimeout:Lcom/polidea/rxandroidble2/Timeout;

    iget-object v3, v3, Lcom/polidea/rxandroidble2/Timeout;->timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;-><init>(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V

    return-object v0
.end method
