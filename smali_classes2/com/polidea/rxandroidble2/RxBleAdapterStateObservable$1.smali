.class Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$1;
.super Landroid/content/BroadcastReceiver;
.source "RxBleAdapterStateObservable.java"


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

.field final synthetic val$observer:Lio/reactivex/Observer;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable;Lio/reactivex/Observer;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$1;->this$0:Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable;

    iput-object p2, p0, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$1;->val$observer:Lio/reactivex/Observer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/4 v0, -0x1

    .line 61
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 62
    iget-object p2, p0, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$1;->val$observer:Lio/reactivex/Observer;

    invoke-static {p1}, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable;->access$000(I)Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
