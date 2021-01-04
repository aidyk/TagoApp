.class public final Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator_Factory;
.super Ljava/lang/Object;
.source "InternalScanResultCreator_Factory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;",
        ">;"
    }
.end annotation


# instance fields
.field private final uuidUtilProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/UUIDUtil;",
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
            "Lcom/polidea/rxandroidble2/internal/util/UUIDUtil;",
            ">;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator_Factory;->uuidUtilProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/UUIDUtil;",
            ">;)",
            "Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator_Factory;"
        }
    .end annotation

    .line 21
    new-instance v0, Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator_Factory;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator_Factory;-><init>(Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;
    .locals 2

    .line 17
    new-instance v0, Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator_Factory;->uuidUtilProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/polidea/rxandroidble2/internal/util/UUIDUtil;

    invoke-direct {v0, v1}, Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;-><init>(Lcom/polidea/rxandroidble2/internal/util/UUIDUtil;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator_Factory;->get()Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;

    move-result-object v0

    return-object v0
.end method
