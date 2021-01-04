.class public interface abstract Lcom/polidea/rxandroidble2/RxBleDevice;
.super Ljava/lang/Object;
.source "RxBleDevice.java"


# virtual methods
.method public abstract establishConnection(Z)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleConnection;",
            ">;"
        }
    .end annotation
.end method

.method public abstract establishConnection(ZLcom/polidea/rxandroidble2/Timeout;)Lio/reactivex/Observable;
    .param p2    # Lcom/polidea/rxandroidble2/Timeout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/polidea/rxandroidble2/Timeout;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleConnection;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;
.end method

.method public abstract getConnectionState()Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;
.end method

.method public abstract getMacAddress()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract observeConnectionStateChanges()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;",
            ">;"
        }
    .end annotation
.end method
