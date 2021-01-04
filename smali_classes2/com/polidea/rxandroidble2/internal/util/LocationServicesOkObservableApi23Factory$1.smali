.class Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory$1;
.super Ljava/lang/Object;
.source "LocationServicesOkObservableApi23Factory.java"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory;->get()Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory$1;->this$0:Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory$1;->this$0:Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory;->access$000(Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory;)Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;

    move-result-object v0

    invoke-interface {v0}, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;->isLocationProviderOk()Z

    move-result v0

    .line 35
    new-instance v1, Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory$1$1;

    invoke-direct {v1, p0, p1}, Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory$1$1;-><init>(Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory$1;Lio/reactivex/ObservableEmitter;)V

    .line 42
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory$1;->this$0:Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory;->access$100(Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory;)Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.location.MODE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 44
    new-instance v0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory$1$2;

    invoke-direct {v0, p0, v1}, Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory$1$2;-><init>(Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory$1;Landroid/content/BroadcastReceiver;)V

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->setCancellable(Lio/reactivex/functions/Cancellable;)V

    return-void
.end method
