.class final Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentBuilder;
.super Ljava/lang/Object;
.source "DaggerClientComponent.java"

# interfaces
.implements Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConnectionComponentBuilder"
.end annotation


# instance fields
.field private connectionModule:Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule;

.field final synthetic this$1:Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;


# direct methods
.method private constructor <init>(Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;)V
    .locals 0

    .line 519
    iput-object p1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentBuilder;->this$1:Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;Lcom/polidea/rxandroidble2/DaggerClientComponent$1;)V
    .locals 0

    .line 519
    invoke-direct {p0, p1}, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentBuilder;-><init>(Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentBuilder;)Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule;
    .locals 0

    .line 519
    iget-object p0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentBuilder;->connectionModule:Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent;
    .locals 3

    .line 524
    iget-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentBuilder;->connectionModule:Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule;

    if-eqz v0, :cond_0

    .line 528
    new-instance v0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentBuilder;->this$1:Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentImpl;-><init>(Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentBuilder;Lcom/polidea/rxandroidble2/DaggerClientComponent$1;)V

    return-object v0

    .line 525
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule;

    .line 526
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must be set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public connectionModule(Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule;)Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentBuilder;
    .locals 0

    .line 533
    invoke-static {p1}, Lbleshadow/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule;

    iput-object p1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentBuilder;->connectionModule:Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule;

    return-object p0
.end method

.method public bridge synthetic connectionModule(Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule;)Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent$Builder;
    .locals 0

    .line 519
    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentBuilder;->connectionModule(Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule;)Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$ConnectionComponentBuilder;

    move-result-object p1

    return-object p1
.end method
