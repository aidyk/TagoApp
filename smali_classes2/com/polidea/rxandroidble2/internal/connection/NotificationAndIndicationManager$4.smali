.class final Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$4;
.super Ljava/lang/Object;
.source "NotificationAndIndicationManager.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;->observeOnCharacteristicChangeCallbacks(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Lcom/polidea/rxandroidble2/internal/util/CharacteristicNotificationId;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/polidea/rxandroidble2/internal/util/CharacteristicChangedEvent;",
        "[B>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 167
    check-cast p1, Lcom/polidea/rxandroidble2/internal/util/CharacteristicChangedEvent;

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$4;->apply(Lcom/polidea/rxandroidble2/internal/util/CharacteristicChangedEvent;)[B

    move-result-object p1

    return-object p1
.end method

.method public apply(Lcom/polidea/rxandroidble2/internal/util/CharacteristicChangedEvent;)[B
    .locals 0

    .line 170
    iget-object p1, p1, Lcom/polidea/rxandroidble2/internal/util/CharacteristicChangedEvent;->data:[B

    return-object p1
.end method
