.class Lcom/polidea/rxandroidble2/internal/connection/MtuBasedPayloadSizeLimit;
.super Ljava/lang/Object;
.source "MtuBasedPayloadSizeLimit.java"

# interfaces
.implements Lcom/polidea/rxandroidble2/internal/connection/PayloadSizeLimitProvider;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation runtime Lcom/polidea/rxandroidble2/internal/connection/ConnectionScope;
.end annotation


# instance fields
.field private final gattWriteMtuOverhead:I

.field private final rxBleConnection:Lcom/polidea/rxandroidble2/RxBleConnection;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/RxBleConnection;I)V
    .locals 0
    .param p2    # I
        .annotation runtime Lbleshadow/javax/inject/Named;
            value = "GATT_WRITE_MTU_OVERHEAD"
        .end annotation
    .end param
    .annotation runtime Lbleshadow/javax/inject/Inject;
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/MtuBasedPayloadSizeLimit;->rxBleConnection:Lcom/polidea/rxandroidble2/RxBleConnection;

    .line 22
    iput p2, p0, Lcom/polidea/rxandroidble2/internal/connection/MtuBasedPayloadSizeLimit;->gattWriteMtuOverhead:I

    return-void
.end method


# virtual methods
.method public getPayloadSizeLimit()I
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/MtuBasedPayloadSizeLimit;->rxBleConnection:Lcom/polidea/rxandroidble2/RxBleConnection;

    invoke-interface {v0}, Lcom/polidea/rxandroidble2/RxBleConnection;->getMtu()I

    move-result v0

    iget v1, p0, Lcom/polidea/rxandroidble2/internal/connection/MtuBasedPayloadSizeLimit;->gattWriteMtuOverhead:I

    sub-int/2addr v0, v1

    return v0
.end method
