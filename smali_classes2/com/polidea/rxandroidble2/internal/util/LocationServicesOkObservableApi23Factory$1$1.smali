.class Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory$1$1;
.super Landroid/content/BroadcastReceiver;
.source "LocationServicesOkObservableApi23Factory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory$1;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory$1;

.field final synthetic val$emitter:Lio/reactivex/ObservableEmitter;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory$1;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory$1$1;->this$1:Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory$1;

    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory$1$1;->val$emitter:Lio/reactivex/ObservableEmitter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 38
    iget-object p1, p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory$1$1;->this$1:Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory$1;

    iget-object p1, p1, Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory$1;->this$0:Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory;

    invoke-static {p1}, Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory;->access$000(Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory;)Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;

    move-result-object p1

    invoke-interface {p1}, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;->isLocationProviderOk()Z

    move-result p1

    .line 39
    iget-object p2, p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory$1$1;->val$emitter:Lio/reactivex/ObservableEmitter;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method
