.class public final Lcom/polidea/rxandroidble2/DaggerClientComponent$Builder;
.super Ljava/lang/Object;
.source "DaggerClientComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/polidea/rxandroidble2/DaggerClientComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private clientModule:Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/polidea/rxandroidble2/DaggerClientComponent$1;)V
    .locals 0

    .line 404
    invoke-direct {p0}, Lcom/polidea/rxandroidble2/DaggerClientComponent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/polidea/rxandroidble2/DaggerClientComponent$Builder;)Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;
    .locals 0

    .line 404
    iget-object p0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$Builder;->clientModule:Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/polidea/rxandroidble2/ClientComponent;
    .locals 3

    .line 410
    iget-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$Builder;->clientModule:Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;

    if-eqz v0, :cond_0

    .line 414
    new-instance v0, Lcom/polidea/rxandroidble2/DaggerClientComponent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/polidea/rxandroidble2/DaggerClientComponent;-><init>(Lcom/polidea/rxandroidble2/DaggerClientComponent$Builder;Lcom/polidea/rxandroidble2/DaggerClientComponent$1;)V

    return-object v0

    .line 411
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;

    .line 412
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

.method public clientModule(Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;)Lcom/polidea/rxandroidble2/DaggerClientComponent$Builder;
    .locals 0

    .line 418
    invoke-static {p1}, Lbleshadow/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;

    iput-object p1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$Builder;->clientModule:Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;

    return-object p0
.end method
