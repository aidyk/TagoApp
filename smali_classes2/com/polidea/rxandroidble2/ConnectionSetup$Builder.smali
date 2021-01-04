.class public Lcom/polidea/rxandroidble2/ConnectionSetup$Builder;
.super Ljava/lang/Object;
.source "ConnectionSetup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/polidea/rxandroidble2/ConnectionSetup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private autoConnect:Z

.field private operationTimeout:Lcom/polidea/rxandroidble2/Timeout;

.field private suppressOperationCheck:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/polidea/rxandroidble2/ConnectionSetup$Builder;->autoConnect:Z

    .line 45
    iput-boolean v0, p0, Lcom/polidea/rxandroidble2/ConnectionSetup$Builder;->suppressOperationCheck:Z

    .line 46
    new-instance v0, Lcom/polidea/rxandroidble2/Timeout;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-direct {v0, v2, v3, v1}, Lcom/polidea/rxandroidble2/Timeout;-><init>(JLjava/util/concurrent/TimeUnit;)V

    iput-object v0, p0, Lcom/polidea/rxandroidble2/ConnectionSetup$Builder;->operationTimeout:Lcom/polidea/rxandroidble2/Timeout;

    return-void
.end method


# virtual methods
.method public build()Lcom/polidea/rxandroidble2/ConnectionSetup;
    .locals 5

    .line 91
    new-instance v0, Lcom/polidea/rxandroidble2/ConnectionSetup;

    iget-boolean v1, p0, Lcom/polidea/rxandroidble2/ConnectionSetup$Builder;->autoConnect:Z

    iget-boolean v2, p0, Lcom/polidea/rxandroidble2/ConnectionSetup$Builder;->suppressOperationCheck:Z

    iget-object v3, p0, Lcom/polidea/rxandroidble2/ConnectionSetup$Builder;->operationTimeout:Lcom/polidea/rxandroidble2/Timeout;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/polidea/rxandroidble2/ConnectionSetup;-><init>(ZZLcom/polidea/rxandroidble2/Timeout;Lcom/polidea/rxandroidble2/ConnectionSetup$1;)V

    return-object v0
.end method

.method public setAutoConnect(Z)Lcom/polidea/rxandroidble2/ConnectionSetup$Builder;
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/polidea/rxandroidble2/ConnectionSetup$Builder;->autoConnect:Z

    return-object p0
.end method

.method public setOperationTimeout(Lcom/polidea/rxandroidble2/Timeout;)Lcom/polidea/rxandroidble2/ConnectionSetup$Builder;
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/polidea/rxandroidble2/ConnectionSetup$Builder;->operationTimeout:Lcom/polidea/rxandroidble2/Timeout;

    return-object p0
.end method

.method public setSuppressIllegalOperationCheck(Z)Lcom/polidea/rxandroidble2/ConnectionSetup$Builder;
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/polidea/rxandroidble2/ConnectionSetup$Builder;->suppressOperationCheck:Z

    return-object p0
.end method
