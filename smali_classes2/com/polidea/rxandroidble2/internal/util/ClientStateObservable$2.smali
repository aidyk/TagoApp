.class final Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable$2;
.super Ljava/lang/Object;
.source "ClientStateObservable.java"

# interfaces
.implements Lio/reactivex/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable;->checkPermissionUntilGranted(Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;Lio/reactivex/Scheduler;)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Predicate<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$locationServicesStatus:Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable$2;->val$locationServicesStatus:Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Long;)Z
    .locals 0

    .line 67
    iget-object p1, p0, Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable$2;->val$locationServicesStatus:Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;

    invoke-interface {p1}, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;->isLocationPermissionOk()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 64
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable$2;->test(Ljava/lang/Long;)Z

    move-result p1

    return p1
.end method
