.class public Lcom/polidea/rxandroidble2/internal/util/ByteAssociationUtil;
.super Ljava/lang/Object;
.source "ByteAssociationUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static characteristicUUIDPredicate(Ljava/util/UUID;)Lio/reactivex/functions/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Lio/reactivex/functions/Predicate<",
            "-",
            "Lcom/polidea/rxandroidble2/internal/util/ByteAssociation<",
            "Ljava/util/UUID;",
            ">;>;"
        }
    .end annotation

    .line 16
    new-instance v0, Lcom/polidea/rxandroidble2/internal/util/ByteAssociationUtil$1;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/util/ByteAssociationUtil$1;-><init>(Ljava/util/UUID;)V

    return-object v0
.end method

.method public static descriptorPredicate(Landroid/bluetooth/BluetoothGattDescriptor;)Lio/reactivex/functions/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothGattDescriptor;",
            ")",
            "Lio/reactivex/functions/Predicate<",
            "-",
            "Lcom/polidea/rxandroidble2/internal/util/ByteAssociation<",
            "Landroid/bluetooth/BluetoothGattDescriptor;",
            ">;>;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/polidea/rxandroidble2/internal/util/ByteAssociationUtil$3;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/util/ByteAssociationUtil$3;-><init>(Landroid/bluetooth/BluetoothGattDescriptor;)V

    return-object v0
.end method

.method public static getBytesFromAssociation()Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Function<",
            "Lcom/polidea/rxandroidble2/internal/util/ByteAssociation<",
            "*>;[B>;"
        }
    .end annotation

    .line 25
    new-instance v0, Lcom/polidea/rxandroidble2/internal/util/ByteAssociationUtil$2;

    invoke-direct {v0}, Lcom/polidea/rxandroidble2/internal/util/ByteAssociationUtil$2;-><init>()V

    return-object v0
.end method
