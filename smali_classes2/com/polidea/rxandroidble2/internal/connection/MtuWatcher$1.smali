.class Lcom/polidea/rxandroidble2/internal/connection/MtuWatcher$1;
.super Ljava/lang/Object;
.source "MtuWatcher.java"

# interfaces
.implements Lio/reactivex/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/connection/MtuWatcher;-><init>(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Predicate<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2/internal/connection/MtuWatcher;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/connection/MtuWatcher;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/MtuWatcher$1;->this$0:Lcom/polidea/rxandroidble2/internal/connection/MtuWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/internal/connection/MtuWatcher$1;->test(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public test(Ljava/lang/Throwable;)Z
    .locals 1

    .line 30
    instance-of v0, p1, Lcom/polidea/rxandroidble2/exceptions/BleGattException;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/polidea/rxandroidble2/exceptions/BleGattException;

    .line 31
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/exceptions/BleGattException;->getBleGattOperationType()Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    move-result-object p1

    sget-object v0, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;->ON_MTU_CHANGED:Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
