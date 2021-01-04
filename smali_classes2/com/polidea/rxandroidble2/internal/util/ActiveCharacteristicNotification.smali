.class public Lcom/polidea/rxandroidble2/internal/util/ActiveCharacteristicNotification;
.super Ljava/lang/Object;
.source "ActiveCharacteristicNotification.java"


# instance fields
.field public final isIndication:Z

.field public final notificationObservable:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Lio/reactivex/Observable<",
            "[B>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/Observable;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lio/reactivex/Observable<",
            "[B>;>;Z)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/util/ActiveCharacteristicNotification;->notificationObservable:Lio/reactivex/Observable;

    .line 14
    iput-boolean p2, p0, Lcom/polidea/rxandroidble2/internal/util/ActiveCharacteristicNotification;->isIndication:Z

    return-void
.end method
