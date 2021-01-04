.class Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$2;
.super Ljava/lang/Object;
.source "RxBleAdapterStateObservable.java"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable;->subscribeActual(Lio/reactivex/Observer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable;

.field final synthetic val$receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable;Landroid/content/BroadcastReceiver;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$2;->this$0:Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable;

    iput-object p2, p0, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$2;->val$receiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$2;->this$0:Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable;->access$100(Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$2;->val$receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "AdapterStateObs"

    const-string v1, "The receiver is already not registered."

    .line 72
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
