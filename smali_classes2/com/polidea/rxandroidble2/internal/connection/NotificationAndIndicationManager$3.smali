.class final Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$3;
.super Ljava/lang/Object;
.source "NotificationAndIndicationManager.java"

# interfaces
.implements Lio/reactivex/CompletableTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;->setupModeTransformer(Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter;Landroid/bluetooth/BluetoothGattCharacteristic;[BLcom/polidea/rxandroidble2/NotificationSetupMode;)Lio/reactivex/CompletableTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field final synthetic val$descriptorWriter:Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter;

.field final synthetic val$mode:Lcom/polidea/rxandroidble2/NotificationSetupMode;

.field final synthetic val$value:[B


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/NotificationSetupMode;Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter;[B)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$3;->val$mode:Lcom/polidea/rxandroidble2/NotificationSetupMode;

    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$3;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    iput-object p3, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$3;->val$descriptorWriter:Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter;

    iput-object p4, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$3;->val$value:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lio/reactivex/Completable;)Lio/reactivex/Completable;
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$3;->val$mode:Lcom/polidea/rxandroidble2/NotificationSetupMode;

    sget-object v1, Lcom/polidea/rxandroidble2/NotificationSetupMode;->DEFAULT:Lcom/polidea/rxandroidble2/NotificationSetupMode;

    if-ne v0, v1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$3;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$3;->val$descriptorWriter:Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter;

    iget-object v2, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$3;->val$value:[B

    invoke-static {v0, v1, v2}, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;->access$1000(Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter;[B)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->andThen(Lio/reactivex/CompletableSource;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p1
.end method

.method public bridge synthetic apply(Lio/reactivex/Completable;)Lio/reactivex/CompletableSource;
    .locals 0

    .line 145
    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$3;->apply(Lio/reactivex/Completable;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method
