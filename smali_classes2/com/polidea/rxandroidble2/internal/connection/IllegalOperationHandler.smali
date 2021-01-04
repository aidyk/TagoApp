.class public abstract Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationHandler;
.super Ljava/lang/Object;
.source "IllegalOperationHandler.java"


# instance fields
.field protected messageCreator:Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationMessageCreator;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationMessageCreator;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationHandler;->messageCreator:Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationMessageCreator;

    return-void
.end method


# virtual methods
.method public abstract handleMismatchData(Landroid/bluetooth/BluetoothGattCharacteristic;I)Lcom/polidea/rxandroidble2/internal/BleIllegalOperationException;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method
