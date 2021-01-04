.class final Lcom/polidea/rxandroidble2/internal/util/ByteAssociationUtil$3;
.super Ljava/lang/Object;
.source "ByteAssociationUtil.java"

# interfaces
.implements Lio/reactivex/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/util/ByteAssociationUtil;->descriptorPredicate(Landroid/bluetooth/BluetoothGattDescriptor;)Lio/reactivex/functions/Predicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Predicate<",
        "Lcom/polidea/rxandroidble2/internal/util/ByteAssociation<",
        "Landroid/bluetooth/BluetoothGattDescriptor;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$bluetoothGattDescriptor:Landroid/bluetooth/BluetoothGattDescriptor;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothGattDescriptor;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/util/ByteAssociationUtil$3;->val$bluetoothGattDescriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Lcom/polidea/rxandroidble2/internal/util/ByteAssociation;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/internal/util/ByteAssociation<",
            "Landroid/bluetooth/BluetoothGattDescriptor;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    iget-object p1, p1, Lcom/polidea/rxandroidble2/internal/util/ByteAssociation;->first:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/BluetoothGattDescriptor;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/util/ByteAssociationUtil$3;->val$bluetoothGattDescriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 35
    check-cast p1, Lcom/polidea/rxandroidble2/internal/util/ByteAssociation;

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/internal/util/ByteAssociationUtil$3;->test(Lcom/polidea/rxandroidble2/internal/util/ByteAssociation;)Z

    move-result p1

    return p1
.end method
