.class public final Lcom/liber8tech/tago/di/DaggerTagoComponent$Builder;
.super Ljava/lang/Object;
.source "DaggerTagoComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liber8tech/tago/di/DaggerTagoComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private analyticsModule:Lcom/liber8tech/tago/di/AnalyticsModule;

.field private coreModule:Lcom/liber8tech/tago/di/CoreModule;

.field private tagoModule:Lcom/liber8tech/tago/di/TagoModule;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liber8tech/tago/di/DaggerTagoComponent$1;)V
    .locals 0

    .line 498
    invoke-direct {p0}, Lcom/liber8tech/tago/di/DaggerTagoComponent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/liber8tech/tago/di/DaggerTagoComponent$Builder;)Lcom/liber8tech/tago/di/CoreModule;
    .locals 0

    .line 498
    iget-object p0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent$Builder;->coreModule:Lcom/liber8tech/tago/di/CoreModule;

    return-object p0
.end method

.method static synthetic access$200(Lcom/liber8tech/tago/di/DaggerTagoComponent$Builder;)Lcom/liber8tech/tago/di/TagoModule;
    .locals 0

    .line 498
    iget-object p0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent$Builder;->tagoModule:Lcom/liber8tech/tago/di/TagoModule;

    return-object p0
.end method

.method static synthetic access$300(Lcom/liber8tech/tago/di/DaggerTagoComponent$Builder;)Lcom/liber8tech/tago/di/AnalyticsModule;
    .locals 0

    .line 498
    iget-object p0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent$Builder;->analyticsModule:Lcom/liber8tech/tago/di/AnalyticsModule;

    return-object p0
.end method


# virtual methods
.method public analyticsModule(Lcom/liber8tech/tago/di/AnalyticsModule;)Lcom/liber8tech/tago/di/DaggerTagoComponent$Builder;
    .locals 0

    .line 531
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/liber8tech/tago/di/AnalyticsModule;

    iput-object p1, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent$Builder;->analyticsModule:Lcom/liber8tech/tago/di/AnalyticsModule;

    return-object p0
.end method

.method public build()Lcom/liber8tech/tago/di/TagoComponent;
    .locals 3

    .line 508
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent$Builder;->coreModule:Lcom/liber8tech/tago/di/CoreModule;

    if-eqz v0, :cond_2

    .line 511
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent$Builder;->tagoModule:Lcom/liber8tech/tago/di/TagoModule;

    if-eqz v0, :cond_1

    .line 514
    iget-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent$Builder;->analyticsModule:Lcom/liber8tech/tago/di/AnalyticsModule;

    if-nez v0, :cond_0

    .line 515
    new-instance v0, Lcom/liber8tech/tago/di/AnalyticsModule;

    invoke-direct {v0}, Lcom/liber8tech/tago/di/AnalyticsModule;-><init>()V

    iput-object v0, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent$Builder;->analyticsModule:Lcom/liber8tech/tago/di/AnalyticsModule;

    .line 517
    :cond_0
    new-instance v0, Lcom/liber8tech/tago/di/DaggerTagoComponent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/liber8tech/tago/di/DaggerTagoComponent;-><init>(Lcom/liber8tech/tago/di/DaggerTagoComponent$Builder;Lcom/liber8tech/tago/di/DaggerTagoComponent$1;)V

    return-object v0

    .line 512
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/liber8tech/tago/di/TagoModule;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must be set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 509
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/liber8tech/tago/di/CoreModule;

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

.method public coreModule(Lcom/liber8tech/tago/di/CoreModule;)Lcom/liber8tech/tago/di/DaggerTagoComponent$Builder;
    .locals 0

    .line 521
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/liber8tech/tago/di/CoreModule;

    iput-object p1, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent$Builder;->coreModule:Lcom/liber8tech/tago/di/CoreModule;

    return-object p0
.end method

.method public tagoModule(Lcom/liber8tech/tago/di/TagoModule;)Lcom/liber8tech/tago/di/DaggerTagoComponent$Builder;
    .locals 0

    .line 526
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/liber8tech/tago/di/TagoModule;

    iput-object p1, p0, Lcom/liber8tech/tago/di/DaggerTagoComponent$Builder;->tagoModule:Lcom/liber8tech/tago/di/TagoModule;

    return-object p0
.end method
